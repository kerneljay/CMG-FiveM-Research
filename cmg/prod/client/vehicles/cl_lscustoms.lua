--[[
    Beginner Guide: cl_lscustoms.lua
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
    BEGINNER GUIDE — Lscustoms
    ==========================

    File: cmg/prod/client/vehicles/cl_lscustoms.lua
    Purpose: This file contains vehicle-related gameplay.

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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_lscustoms
      * cfg/cfg_store

    Network/hash identifiers found: 25
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Repair Vehicle
      * Main Menu
      * ~INPUT_NEXT_CAMERA~
      * ~r~You have already applied this mod
      * Press ~INPUT_FRONTEND_ACCEPT~ to change %s

]]
local cmgCall, cmgCall2, textValue5, textValue6, textValue8, rageUiCall3, textValue15, textValue16, rageUiCall5, rageUiCall6, textValue, textValue2, flag3, workValue3, workValue5, dataTable, workValue7, workValue8, workValue9, workValue10, workValue11, workValue13, workValue15, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue31, numberValue3, workValue32, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, rageUiCall2, dataTable2, workValue43, workValue44, textValue9, cmgCall3, workValue45, workValue46, workValue47, workValue48, eventRegistration, textValue10, textValue11, cmgCall4, textValue12, cmgCall5, textValue13, textValue14
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall2 = "cfg/cfg_lscustoms"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall2)
cmgCall2 = CMG
cmgCall2 = cmgCall2.loadModule
textValue5 = "cfg/cfg_store"
-- Beginner: result below is config.
cmgCall2 = cmgCall2(textValue5)
textValue5 = RMenu
textValue5 = textValue5.Add
textValue6 = "lscustoms"
textValue8 = "repair"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
textValue15 = ""
textValue16 = "Repair Vehicle"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6 = rageUiCall6()
textValue = "cmg_lscustomsui"
textValue2 = "cmg_lscustomsui"
rageUiCall3, textValue15, textValue16, rageUiCall5, rageUiCall6, textValue, textValue2, flag3, workValue3, workValue5, dataTable, workValue7, workValue8, workValue9, workValue10, workValue11, workValue13, workValue15, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue31, numberValue3, workValue32, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, rageUiCall2, dataTable2, workValue43, workValue44, textValue9, cmgCall3, workValue45, workValue46, workValue47, workValue48, eventRegistration, textValue10, textValue11, cmgCall4, textValue12, cmgCall5, textValue13, textValue14 = rageUiCall3(textValue15, textValue16, rageUiCall5, rageUiCall6, textValue, textValue2)
textValue5(textValue6, textValue8, rageUiCall3, textValue15, textValue16, rageUiCall5, rageUiCall6, textValue, textValue2, flag3, workValue3, workValue5, dataTable, workValue7, workValue8, workValue9, workValue10, workValue11, workValue13, workValue15, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue31, numberValue3, workValue32, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, rageUiCall2, dataTable2, workValue43, workValue44, textValue9, cmgCall3, workValue45, workValue46, workValue47, workValue48, eventRegistration, textValue10, textValue11, cmgCall4, textValue12, cmgCall5, textValue13, textValue14)
textValue5 = RMenu
textValue5 = textValue5.Add
textValue6 = "lscustoms"
textValue8 = "mainmenu"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
textValue15 = ""
textValue16 = "Los Santos Customs"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6 = rageUiCall6()
textValue = "cmg_lscustomsui"
textValue2 = "cmg_lscustomsui"
rageUiCall3, textValue15, textValue16, rageUiCall5, rageUiCall6, textValue, textValue2, flag3, workValue3, workValue5, dataTable, workValue7, workValue8, workValue9, workValue10, workValue11, workValue13, workValue15, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue31, numberValue3, workValue32, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, rageUiCall2, dataTable2, workValue43, workValue44, textValue9, cmgCall3, workValue45, workValue46, workValue47, workValue48, eventRegistration, textValue10, textValue11, cmgCall4, textValue12, cmgCall5, textValue13, textValue14 = rageUiCall3(textValue15, textValue16, rageUiCall5, rageUiCall6, textValue, textValue2)
textValue5(textValue6, textValue8, rageUiCall3, textValue15, textValue16, rageUiCall5, rageUiCall6, textValue, textValue2, flag3, workValue3, workValue5, dataTable, workValue7, workValue8, workValue9, workValue10, workValue11, workValue13, workValue15, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue31, numberValue3, workValue32, workValue33, workValue34, workValue35, workValue36, workValue37, workValue38, workValue39, workValue40, workValue41, workValue42, rageUiCall2, dataTable2, workValue43, workValue44, textValue9, cmgCall3, workValue45, workValue46, workValue47, workValue48, eventRegistration, textValue10, textValue11, cmgCall4, textValue12, cmgCall5, textValue13, textValue14)
textValue5 = {}
function textValue6(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall
  arg2 = table
  arg2 = arg2.concat
  arg3 = textValue5
  textValue7 = "_"
  arg2 = arg2(arg3, textValue7)
  arg3 = table
  arg3 = arg3.insert
  textValue7 = textValue5
  stringHelper2 = string
  stringHelper2 = stringHelper2.lower
  rageUiCall4 = string
  rageUiCall4 = rageUiCall4.gsub
  nameValue = arg1.name
  textValue17 = "%s+"
  textValue18 = ""
  rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall = rageUiCall4(nameValue, textValue17, textValue18)
  stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall = stringHelper2(rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
  arg3 = table
  arg3 = arg3.concat
  textValue7 = textValue5
  stringHelper2 = "_"
  arg3 = arg3(textValue7, stringHelper2)
  arg1.menu = arg3
  arg3 = arg1.name
  if "Main Menu" ~= arg3 then
    arg3 = RMenu
    arg3 = arg3.Add
    textValue7 = "lscustoms"
    stringHelper2 = arg1.menu
    rageUiCall4 = RageUI
    rageUiCall4 = rageUiCall4.CreateSubMenu
    nameValue = RMenu
    textValue17 = nameValue
    nameValue = nameValue.Get
    textValue18 = "lscustoms"
    rageUiCall7 = arg2
    -- Beginner: result below is menu.
    nameValue = nameValue(textValue17, textValue18, rageUiCall7)
    textValue17 = ""
    textValue18 = arg1.name
    rageUiCall7 = CMG
    rageUiCall7 = rageUiCall7.getRageUIMenuWidth
    rageUiCall7 = rageUiCall7()
    rageUiCall = CMG
    rageUiCall = rageUiCall.getRageUIMenuHeight
    rageUiCall = rageUiCall()
    rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall = rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
    arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
  end
  arg3 = arg1.type
  if "categoryList" == arg3 then
    arg3 = pairs
    textValue7 = arg1.categories
    arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
    for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
      textValue18 = textValue6
      rageUiCall7 = textValue17
      textValue18(rageUiCall7)
    end
  else
    arg3 = RMenu
    textValue7 = arg3
    arg3 = arg3.Get
    stringHelper2 = "lscustoms"
    rageUiCall4 = arg1.menu
    -- Beginner: result below is menu.
    arg3 = arg3(textValue7, stringHelper2, rageUiCall4)
    textValue7 = arg3
    arg3 = arg3.AddInstructionButton
    stringHelper2 = {}
    rageUiCall4 = "~INPUT_NEXT_CAMERA~"
    nameValue = "Change Camera"
    stringHelper2[1] = rageUiCall4
    stringHelper2[2] = nameValue
    arg3(textValue7, stringHelper2)
  end
  arg3 = table
  arg3 = arg3.remove
  textValue7 = textValue5
  arg3(textValue7)
end
textValue8 = textValue6
rageUiCall3 = cmgCall.category
textValue8(rageUiCall3)
textValue8 = {}
rageUiCall3 = nil
textValue15 = 0
textValue16 = nil
rageUiCall5 = 0
rageUiCall6 = 0
textValue = 0
textValue2 = -1
flag3 = false
workValue3 = nil
workValue5 = nil
dataTable = {}
function workValue7()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg1 = {}
  arg2 = -1
  arg3 = GetVehicleLiveryCount
  textValue7 = textValue15
  arg3 = arg3(textValue7)
  textValue7 = 1
  for stringHelper2 = arg2, arg3, textValue7 do
    rageUiCall4 = table
    rageUiCall4 = rageUiCall4.insert
    nameValue = arg1
    textValue17 = stringHelper2
    rageUiCall4(nameValue, textValue17)
  end
  return arg1
end
dataTable.livery = workValue7
function workValue7()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg1 = {}
  arg2 = 0
  arg3 = 128
  textValue7 = 1
  for stringHelper2 = arg2, arg3, textValue7 do
    rageUiCall4 = DoesExtraExist
    nameValue = textValue15
    textValue17 = stringHelper2
    rageUiCall4 = rageUiCall4(nameValue, textValue17)
    if rageUiCall4 then
      rageUiCall4 = table
      rageUiCall4 = rageUiCall4.insert
      nameValue = arg1
      textValue17 = stringHelper2
      rageUiCall4(nameValue, textValue17)
    end
  end
  return arg1
end
dataTable.extra = workValue7
function workValue7()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg1 = {}
  arg2 = 1
  arg3 = 3
  textValue7 = 1
  for stringHelper2 = arg2, arg3, textValue7 do
    rageUiCall4 = table
    rageUiCall4 = rageUiCall4.insert
    nameValue = arg1
    textValue17 = stringHelper2
    rageUiCall4(nameValue, textValue17)
  end
  return arg1
end
dataTable.bootupgrade = workValue7
function workValue7(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5
  arg3 = SetCamActive
  textValue7 = rageUiCall6
  stringHelper2 = true
  arg3(textValue7, stringHelper2)
  arg3 = GetModelDimensions
  textValue7 = GetEntityModel
  stringHelper2 = textValue15
  textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5 = textValue7(stringHelper2)
  arg3 = arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5)
  textValue7 = arg3.y
  textValue7 = textValue7 * -2.0
  stringHelper2 = arg3.x
  stringHelper2 = stringHelper2 * -2.0
  rageUiCall4 = arg3.z
  rageUiCall4 = rageUiCall4 * -2.0
  nameValue = nil
  if "front" == arg1 then
    textValue17 = GetOffsetFromEntityInWorldCoords
    textValue18 = textValue15
    rageUiCall7 = arg2.x
    rageUiCall = textValue7 / 2.0
    workValue = arg2.y
    rageUiCall = rageUiCall + workValue
    workValue = arg2.z
    textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
    nameValue = textValue17
  elseif "front-top" == arg1 then
    textValue17 = GetOffsetFromEntityInWorldCoords
    textValue18 = textValue15
    rageUiCall7 = arg2.x
    rageUiCall = textValue7 / 2.0
    workValue = arg2.y
    rageUiCall = rageUiCall + workValue
    workValue = arg2.z
    workValue = rageUiCall4 + workValue
    textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
    nameValue = textValue17
  elseif "back" == arg1 then
    textValue17 = GetOffsetFromEntityInWorldCoords
    textValue18 = textValue15
    rageUiCall7 = arg2.x
    rageUiCall = textValue7 / 2.0
    rageUiCall = -rageUiCall
    workValue = arg2.y
    rageUiCall = rageUiCall + workValue
    workValue = arg2.z
    textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
    nameValue = textValue17
  elseif "back-top" == arg1 then
    textValue17 = GetOffsetFromEntityInWorldCoords
    textValue18 = textValue15
    rageUiCall7 = arg2.x
    rageUiCall = textValue7 / 2.0
    rageUiCall = -rageUiCall
    workValue = arg2.y
    rageUiCall = rageUiCall + workValue
    workValue = rageUiCall4 / 2.0
    workValue2 = arg2.z
    workValue = workValue + workValue2
    textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
    nameValue = textValue17
  elseif "left" == arg1 then
    textValue17 = GetOffsetFromEntityInWorldCoords
    textValue18 = textValue15
    rageUiCall7 = stringHelper2 / 2.0
    rageUiCall7 = -rageUiCall7
    rageUiCall = arg2.x
    rageUiCall7 = rageUiCall7 + rageUiCall
    rageUiCall = arg2.y
    workValue = arg2.z
    textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
    nameValue = textValue17
  elseif "right" == arg1 then
    textValue17 = GetOffsetFromEntityInWorldCoords
    textValue18 = textValue15
    rageUiCall7 = stringHelper2 / 2.0
    rageUiCall = arg2.x
    rageUiCall7 = rageUiCall7 + rageUiCall
    rageUiCall = arg2.y
    workValue = arg2.z
    textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
    nameValue = textValue17
  elseif "middle" == arg1 then
    textValue17 = GetOffsetFromEntityInWorldCoords
    textValue18 = textValue15
    rageUiCall7 = arg2.x
    rageUiCall = arg2.y
    workValue = rageUiCall4 / 2.0
    workValue2 = arg2.z
    workValue = workValue + workValue2
    textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
    nameValue = textValue17
  end
  textValue17 = SetCamCoord
  textValue18 = rageUiCall6
  rageUiCall7 = nameValue.x
  rageUiCall = nameValue.y
  workValue = nameValue.z
  textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
  textValue17 = GetOffsetFromEntityInWorldCoords
  textValue18 = textValue15
  rageUiCall7 = 0.0
  rageUiCall = 0.0
  workValue = 0.0
  textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
  textValue18 = PointCamAtCoord
  rageUiCall7 = rageUiCall6
  rageUiCall = textValue17.x
  workValue = textValue17.y
  workValue2 = textValue17.z
  textValue18(rageUiCall7, rageUiCall, workValue, workValue2)
  textValue18 = RenderScriptCams
  rageUiCall7 = true
  rageUiCall = true
  workValue = 1000
  workValue2 = false
  flag5 = false
  textValue18(rageUiCall7, rageUiCall, workValue, workValue2, flag5)
end
function workValue8(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2
  arg3 = GetEntityBoneIndexByName
  textValue7 = textValue15
  stringHelper2 = arg1
  arg3 = arg3(textValue7, stringHelper2)
  if -1 == arg3 then
    return
  end
  textValue7 = GetWorldPositionOfEntityBone
  stringHelper2 = textValue15
  rageUiCall4 = arg3
  textValue7 = textValue7(stringHelper2, rageUiCall4)
  stringHelper2 = GetOffsetFromEntityGivenWorldCoords
  rageUiCall4 = textValue15
  nameValue = textValue7.x
  textValue17 = textValue7.y
  textValue18 = textValue7.z
  stringHelper2 = stringHelper2(rageUiCall4, nameValue, textValue17, textValue18)
  rageUiCall4 = GetOffsetFromEntityInWorldCoords
  nameValue = textValue15
  textValue17 = stringHelper2.x
  textValue18 = arg2.x
  textValue17 = textValue17 + textValue18
  textValue18 = stringHelper2.y
  rageUiCall7 = arg2.y
  textValue18 = textValue18 + rageUiCall7
  rageUiCall7 = stringHelper2.z
  rageUiCall = arg2.z
  rageUiCall7 = rageUiCall7 + rageUiCall
  rageUiCall4 = rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7)
  nameValue = SetCamActive
  textValue17 = rageUiCall6
  textValue18 = true
  nameValue(textValue17, textValue18)
  nameValue = SetCamCoord
  textValue17 = rageUiCall6
  textValue18 = rageUiCall4.x
  rageUiCall7 = rageUiCall4.y
  rageUiCall = rageUiCall4.z
  nameValue(textValue17, textValue18, rageUiCall7, rageUiCall)
  nameValue = GetOffsetFromEntityInWorldCoords
  textValue17 = textValue15
  textValue18 = 0.0
  rageUiCall7 = stringHelper2.y
  rageUiCall = stringHelper2.z
  nameValue = nameValue(textValue17, textValue18, rageUiCall7, rageUiCall)
  textValue17 = PointCamAtCoord
  textValue18 = rageUiCall6
  rageUiCall7 = nameValue.x
  rageUiCall = nameValue.y
  workValue = nameValue.z
  textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
  textValue17 = RenderScriptCams
  textValue18 = true
  rageUiCall7 = true
  rageUiCall = 1000
  workValue = false
  workValue2 = false
  textValue17(textValue18, rageUiCall7, rageUiCall, workValue, workValue2)
end
function workValue9(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5
  arg2 = rageUiCall6
  if 0 == arg2 then
    return
  end
  arg2 = arg1.cameraPreset
  if not arg2 then
    return
  end
  arg3 = cmgCall.cameraPresets
  arg3 = arg3[arg2]
  textValue7 = assert
  stringHelper2 = arg3
  rageUiCall4 = string
  rageUiCall4 = rageUiCall4.format
  nameValue = "Camera preset %s does not exist"
  textValue17 = arg2
  rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5 = rageUiCall4(nameValue, textValue17)
  textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5)
  textValue7 = arg3.type
  if "moveVeh" == textValue7 then
    textValue7 = workValue7
    stringHelper2 = arg3.position
    rageUiCall4 = arg3.offset
    textValue7(stringHelper2, rageUiCall4)
  else
    textValue7 = arg3.type
    if "pointBone" == textValue7 then
      textValue7 = workValue8
      stringHelper2 = arg3.bone
      rageUiCall4 = arg3.offset
      textValue7(stringHelper2, rageUiCall4)
    else
      textValue7 = arg3.type
      if "doors" == textValue7 then
        textValue7 = pairs
        stringHelper2 = arg3.doors
        textValue7, stringHelper2, rageUiCall4, nameValue = textValue7(stringHelper2)
        for textValue17, textValue18 in textValue7, stringHelper2, rageUiCall4, nameValue do
          rageUiCall7 = SetVehicleDoorOpen
          rageUiCall = textValue15
          workValue = textValue18
          workValue2 = false
          flag5 = false
          rageUiCall7(rageUiCall, workValue, workValue2, flag5)
        end
      else
        textValue7 = arg3.type
        if "viewMode" == textValue7 then
          textValue7 = SetFollowVehicleCamViewMode
          stringHelper2 = arg3.mode
          textValue7(stringHelper2)
        end
      end
    end
  end
end
function workValue10()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg1 = rageUiCall6
  if 0 == arg1 then
    return
  end
  arg1 = GetFinalRenderedCamCoord
  arg1 = arg1()
  arg2 = SetCamCoord
  arg3 = rageUiCall6
  textValue7 = arg1.x
  stringHelper2 = arg1.y
  rageUiCall4 = arg1.z
  arg2(arg3, textValue7, stringHelper2, rageUiCall4)
  arg2 = GetGameplayCamRot
  arg3 = 2
  arg2 = arg2(arg3)
  arg3 = SetCamRot
  textValue7 = rageUiCall6
  stringHelper2 = arg2.x
  rageUiCall4 = arg2.y
  nameValue = arg2.z
  textValue17 = 2
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17)
  arg3 = RenderScriptCams
  textValue7 = true
  stringHelper2 = true
  rageUiCall4 = 0
  nameValue = false
  textValue17 = false
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17)
  arg3 = RenderScriptCams
  textValue7 = false
  stringHelper2 = true
  rageUiCall4 = 1000
  nameValue = false
  textValue17 = false
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17)
  arg3 = SetCamActive
  textValue7 = textValue
  stringHelper2 = true
  arg3(textValue7, stringHelper2)
  arg3 = TogglePausedRenderphases
  textValue7 = true
  arg3(textValue7)
  arg3 = SetCamActive
  textValue7 = rageUiCall6
  stringHelper2 = false
  arg3(textValue7, stringHelper2)
end
function workValue11(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue
  arg2 = arg1.cameraPreset
  if not arg2 then
    return
  end
  arg3 = cmgCall.cameraPresets
  arg3 = arg3[arg2]
  textValue7 = assert
  stringHelper2 = arg3
  rageUiCall4 = string
  rageUiCall4 = rageUiCall4.format
  nameValue = "Camera preset %s does not exist"
  textValue17 = arg2
  rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue = rageUiCall4(nameValue, textValue17)
  textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
  textValue7 = arg3.type
  if "moveVeh" == textValue7 then
    textValue7 = workValue10
    textValue7()
  else
    textValue7 = arg3.type
    if "pointBone" == textValue7 then
      textValue7 = workValue10
      textValue7()
    else
      textValue7 = arg3.type
      if "doors" == textValue7 then
        textValue7 = 0
        stringHelper2 = GetNumberOfVehicleDoors
        rageUiCall4 = textValue15
        stringHelper2 = stringHelper2(rageUiCall4)
        rageUiCall4 = 1
        for nameValue = textValue7, stringHelper2, rageUiCall4 do
          textValue17 = SetVehicleDoorOpen
          textValue18 = textValue15
          rageUiCall7 = nameValue
          rageUiCall = false
          workValue = false
          textValue17(textValue18, rageUiCall7, rageUiCall, workValue)
        end
      else
        textValue7 = arg3.type
        if "viewMode" == textValue7 then
          textValue7 = SetFollowVehicleCamViewMode
          stringHelper2 = 1
          textValue7(stringHelper2)
        end
      end
    end
  end
end
function workValue13(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7
  arg3 = pairs
  textValue7 = arg1
  arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
  for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
    if true == textValue17 then
      textValue18 = arg2
      rageUiCall7 = nameValue
      textValue18(rageUiCall7)
      return
    end
  end
  arg3 = arg2
  textValue7 = nil
  arg3(textValue7)
end
function workValue15()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg1 = {}
  arg1[1] = 5
  arg1[2] = 7
  arg1[3] = 10
  arg1[4] = 12
  arg1[5] = 15
  arg1[6] = 20
  arg2 = 6
  arg3 = 1
  textValue7 = -1
  for stringHelper2 = arg2, arg3, textValue7 do
    rageUiCall4 = CMG
    rageUiCall4 = rageUiCall4.hasClientSkill
    nameValue = "mechanic_lsc_discount_"
    textValue17 = stringHelper2
    nameValue = nameValue .. textValue17
    rageUiCall4 = rageUiCall4(nameValue)
    if rageUiCall4 then
      rageUiCall4 = arg1[stringHelper2]
      return rageUiCall4
    end
  end
  arg2 = 0
  return arg2
end
function workValue17(arg1)
  local arg2, arg3, textValue7, stringHelper2
  if not arg1 or arg1 <= 0 then
    return arg1
  end
  arg2 = workValue15
  arg2 = arg2()
  arg3 = math
  arg3 = arg3.floor
  textValue7 = arg2 / 100
  stringHelper2 = 1
  textValue7 = stringHelper2 - textValue7
  textValue7 = arg1 * textValue7
  return arg3(textValue7)
end
function workValue18(arg1, arg2, arg3)
  local textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  if arg1 then
    textValue7 = {}
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.BadgeStyle
    stringHelper2 = stringHelper2.CarWhite
    textValue7.RightBadge = stringHelper2
    return textValue7
  elseif arg2 then
    textValue7 = {}
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.BadgeStyle
    stringHelper2 = stringHelper2.CarBlack
    textValue7.RightBadge = stringHelper2
    return textValue7
  else
    textValue7 = workValue17
    stringHelper2 = arg3
    textValue7 = textValue7(stringHelper2)
    stringHelper2 = {}
    rageUiCall4 = "\194\163"
    nameValue = getMoneyStringFormatted
    textValue17 = textValue7
    nameValue = nameValue(textValue17)
    rageUiCall4 = rageUiCall4 .. nameValue
    stringHelper2.RightLabel = rageUiCall4
    return stringHelper2
  end
end
function workValue19()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue
  arg1 = textValue2
  if -1 ~= arg1 then
    return
  end
  arg1 = GetSoundId
  -- Beginner: result below is soundHandle.
  arg1 = arg1()
  textValue2 = arg1
  arg1 = PlaySoundFromEntity
  arg2 = textValue2
  arg3 = "Drill"
  textValue7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue7 = textValue7()
  stringHelper2 = "DLC_HEIST_FLEECA_SOUNDSET"
  rageUiCall4 = true
  nameValue = 0
  arg1(arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue)
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function arg2()
    local arg12, arg22, arg32, arg4, flag8, flag10
    arg12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg12 = arg12()
    while true do
      arg22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg22 = arg22()
      arg22 = arg22 - arg12
      arg32 = 2000
      if not (arg22 < arg32) then
        break
      end
      arg22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg22 = arg22()
      arg22 = arg22 - arg12
      arg22 = arg22 / 2000
      arg32 = SetVariableOnSound
      arg4 = textValue2
      flag8 = "DrillState"
      flag10 = arg22
      arg32(arg4, flag8, flag10)
      arg32 = Citizen
      arg32 = arg32.Wait
      arg4 = 0
      arg32(arg4)
    end
    arg22 = StopSound
    arg32 = textValue2
    arg22(arg32)
    arg22 = Citizen
    arg22 = arg22.Wait
    arg32 = 1000
    arg22(arg32)
    arg22 = ReleaseSoundId
    arg32 = textValue2
    arg22(arg32)
    arg22 = -1
    textValue2 = arg22
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function workValue20(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue
  arg3 = arg1.modType
  if 18 ~= arg3 then
    arg3 = arg1.modType
    if 22 ~= arg3 then
      goto flow_label_13
    end
  end
  arg3 = ToggleVehicleMod
  textValue7 = textValue15
  stringHelper2 = arg1.modType
  rageUiCall4 = true
  arg3(textValue7, stringHelper2, rageUiCall4)
  goto flow_label_20
  ::flow_label_13::
  arg3 = CMG
  arg3 = arg3.setVehicleMod
  textValue7 = textValue15
  stringHelper2 = arg1.modType
  rageUiCall4 = arg2
  nameValue = true
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue)
  ::flow_label_20::
end
function workValue21(arg1)
  local arg2, arg3, textValue7
  arg2 = workValue13
  textValue7 = arg1.saveKey
  arg3 = textValue8
  arg3 = arg3[textValue7]
  function textValue7(arg12)
    local arg22, arg32, arg4, flag8, flag10
    if arg12 then
      arg22 = arg1.modType
      if 18 ~= arg22 then
        arg22 = arg1.modType
        if 2 ~= arg22 then
          goto flow_label_15
        end
      end
      arg22 = ToggleVehicleMod
      arg32 = textValue15
      arg4 = arg1.modType
      flag8 = true
      arg22(arg32, arg4, flag8)
      goto flow_label_47
      ::flow_label_15::
      arg22 = CMG
      arg22 = arg22.setVehicleMod
      arg32 = textValue15
      arg4 = arg1.modType
      flag8 = tonumber
      flag10 = arg12
      flag8 = flag8(flag10)
      if not flag8 then
        flag8 = 0
      end
      flag10 = false
      arg22(arg32, arg4, flag8, flag10)
    else
      arg22 = arg1.modType
      if 18 ~= arg22 then
        arg22 = arg1.modType
        if 2 ~= arg22 then
          goto flow_label_40
        end
      end
      arg22 = ToggleVehicleMod
      arg32 = textValue15
      arg4 = arg1.modType
      flag8 = false
      arg22(arg32, arg4, flag8)
      goto flow_label_47
      ::flow_label_40::
      arg22 = CMG
      arg22 = arg22.setVehicleMod
      arg32 = textValue15
      arg4 = arg1.modType
      flag8 = -1
      flag10 = false
      arg22(arg32, arg4, flag8, flag10)
    end
    ::flow_label_47::
  end
  arg2(arg3, textValue7)
end
function workValue22(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue
  arg2 = -1
  arg3 = GetNumVehicleMods
  textValue7 = textValue15
  stringHelper2 = arg1.modType
  arg3 = arg3(textValue7, stringHelper2)
  arg3 = arg3 - 1
  textValue7 = 1
  for stringHelper2 = arg2, arg3, textValue7 do
    rageUiCall4 = "Stock"
    nameValue = nil
    if stringHelper2 >= 0 then
      textValue17 = GetModTextLabel
      textValue18 = textValue15
      rageUiCall7 = arg1.modType
      rageUiCall = stringHelper2
      textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall)
      nameValue = textValue17
      textValue17 = GetLabelText
      textValue18 = nameValue
      textValue17 = textValue17(textValue18)
      rageUiCall4 = textValue17 or rageUiCall4
      if "NULL" == textValue17 or not textValue17 then
        rageUiCall4 = "N/A"
      end
    end
    textValue18 = arg1.saveKey
    textValue17 = textValue8
    textValue17 = textValue17[textValue18]
    textValue18 = tostring
    rageUiCall7 = stringHelper2
    textValue18 = textValue18(rageUiCall7)
    textValue17 = textValue17[textValue18]
    if stringHelper2 >= 0 then
      textValue18 = arg1.price
      if textValue18 then
        goto flow_label_41
      end
    end
    textValue18 = 0
    ::flow_label_41::
    rageUiCall7 = workValue18
    rageUiCall = true == textValue17
    workValue = nil ~= textValue17
    workValue2 = textValue18
    rageUiCall7 = rageUiCall7(rageUiCall, workValue, workValue2)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue = rageUiCall4
    workValue2 = nil
    flag5 = rageUiCall7
    flag6 = true
    function numberValue(arg12, arg22, arg32)
      local arg4, flag8, flag10, workValue49, workValue50, workValue52
      if arg22 then
        arg4 = workValue20
        flag8 = arg1
        flag10 = stringHelper2
        arg4(flag8, flag10)
      end
      if arg32 then
        arg4 = textValue17
        if true == arg4 then
          arg4 = notify
          flag8 = "~r~You have already applied this mod"
          -- Beginner: Show a notification to the player.
          arg4(flag8)
        else
          arg4 = textValue17
          if false == arg4 then
            arg4 = TriggerServerEvent
            flag8 = "0da10c1417"
            flag10 = rageUiCall5
            workValue49 = cmgCall.categoryToIndentifier
            workValue50 = arg1
            workValue49 = workValue49[workValue50]
            workValue50 = stringHelper2
            workValue52 = nameValue
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0da10c1417".
            arg4(flag8, flag10, workValue49, workValue50, workValue52)
            arg4 = workValue19
            arg4()
          else
            arg4 = TriggerServerEvent
            flag8 = "bdba243925"
            flag10 = rageUiCall5
            workValue49 = cmgCall.categoryToIndentifier
            workValue50 = arg1
            workValue49 = workValue49[workValue50]
            workValue50 = stringHelper2
            workValue52 = nameValue
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdba243925".
            arg4(flag8, flag10, workValue49, workValue50, workValue52)
            arg4 = workValue19
            arg4()
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue, workValue2, flag5, flag6, numberValue)
  end
end
function workValue23(arg1, arg2)
  local arg3, textValue7, stringHelper2
  arg3 = arg1.saveKey
  if "liveries" == arg3 then
    arg3 = SetVehicleLivery
    textValue7 = textValue15
    stringHelper2 = arg2
    arg3(textValue7, stringHelper2)
  end
end
function workValue24(arg1)
  local arg2, arg3, textValue7
  arg2 = arg1.saveKey
  if "liveries" == arg2 then
    arg2 = workValue13
    textValue7 = arg1.saveKey
    arg3 = textValue8
    arg3 = arg3[textValue7]
    function textValue7(arg12)
      local arg22, arg32, arg4, flag8
      if arg12 then
        arg22 = SetVehicleLivery
        arg32 = textValue15
        arg4 = tonumber
        flag8 = arg12
        arg4 = arg4(flag8)
        if not arg4 then
          arg4 = 0
        end
        arg22(arg32, arg4)
      else
        arg22 = SetVehicleLivery
        arg32 = textValue15
        arg4 = -1
        arg22(arg32, arg4)
      end
    end
    arg2(arg3, textValue7)
  end
end
function workValue25(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue
  arg3 = arg1.generatorName
  arg2 = dataTable
  arg2 = arg2[arg3]
  arg2 = arg2()
  arg3 = pairs
  textValue7 = arg2
  arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
  for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
    rageUiCall7 = arg1.saveKey
    textValue18 = textValue8
    textValue18 = textValue18[rageUiCall7]
    rageUiCall7 = tostring
    rageUiCall = textValue17
    rageUiCall7 = rageUiCall7(rageUiCall)
    textValue18 = textValue18[rageUiCall7]
    rageUiCall7 = workValue18
    rageUiCall = true == textValue18
    workValue = nil ~= textValue18
    workValue2 = arg1.price
    rageUiCall7 = rageUiCall7(rageUiCall, workValue, workValue2)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue = string
    workValue = workValue.format
    workValue2 = "%s %d"
    flag5 = arg1.prefix
    flag6 = textValue17
    workValue = workValue(workValue2, flag5, flag6)
    workValue2 = nil
    flag5 = rageUiCall7
    flag6 = true
    function numberValue(arg12, arg22, arg32)
      local arg4, flag8, flag10, workValue49, workValue50, workValue52
      if arg22 then
        arg4 = workValue23
        flag8 = arg1
        flag10 = textValue17
        arg4(flag8, flag10)
      end
      if arg32 then
        arg4 = textValue18
        if true == arg4 then
          arg4 = notify
          flag8 = "~r~You have already applied this mod"
          -- Beginner: Show a notification to the player.
          arg4(flag8)
        else
          arg4 = textValue18
          if false == arg4 then
            arg4 = TriggerServerEvent
            flag8 = "0da10c1417"
            flag10 = rageUiCall5
            workValue49 = cmgCall.categoryToIndentifier
            workValue50 = arg1
            workValue49 = workValue49[workValue50]
            workValue50 = textValue17
            workValue52 = nil
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0da10c1417".
            arg4(flag8, flag10, workValue49, workValue50, workValue52)
            arg4 = workValue19
            arg4()
          else
            arg4 = TriggerServerEvent
            flag8 = "bdba243925"
            flag10 = rageUiCall5
            workValue49 = cmgCall.categoryToIndentifier
            workValue50 = arg1
            workValue49 = workValue49[workValue50]
            workValue50 = textValue17
            workValue52 = nil
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bdba243925".
            arg4(flag8, flag10, workValue49, workValue50, workValue52)
            arg4 = workValue19
            arg4()
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue, workValue2, flag5, flag6, numberValue)
  end
end
function workValue26(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue
  arg3 = arg1.generatorName
  arg2 = dataTable
  arg2 = arg2[arg3]
  arg2 = arg2()
  arg3 = pairs
  textValue7 = arg2
  arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
  for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
    rageUiCall7 = arg1.saveKey
    textValue18 = textValue8
    textValue18 = textValue18[rageUiCall7]
    rageUiCall7 = tostring
    rageUiCall = textValue17
    rageUiCall7 = rageUiCall7(rageUiCall)
    textValue18 = textValue18[rageUiCall7]
    rageUiCall7 = workValue18
    rageUiCall = true == textValue18
    workValue = nil ~= textValue18
    workValue2 = arg1.price
    rageUiCall7 = rageUiCall7(rageUiCall, workValue, workValue2)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue = string
    workValue = workValue.format
    workValue2 = "%s %d"
    flag5 = arg1.prefix
    flag6 = textValue17
    workValue = workValue(workValue2, flag5, flag6)
    workValue2 = nil
    flag5 = rageUiCall7
    flag6 = true
    function numberValue(arg12, arg22, arg32)
      local arg4, flag8, flag10, workValue49, workValue50
      if arg32 then
        arg4 = textValue18
        if true == arg4 then
          arg4 = TriggerServerEvent
          flag8 = "2c48d37794"
          flag10 = rageUiCall5
          workValue49 = cmgCall.categoryToIndentifier
          workValue50 = arg1
          workValue49 = workValue49[workValue50]
          workValue50 = textValue17
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2c48d37794".
          arg4(flag8, flag10, workValue49, workValue50)
          arg4 = workValue19
          arg4()
        else
          arg4 = textValue18
          if false == arg4 then
            arg4 = TriggerServerEvent
            flag8 = "4b2dc2521d"
            flag10 = rageUiCall5
            workValue49 = cmgCall.categoryToIndentifier
            workValue50 = arg1
            workValue49 = workValue49[workValue50]
            workValue50 = textValue17
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4b2dc2521d".
            arg4(flag8, flag10, workValue49, workValue50)
            arg4 = workValue19
            arg4()
          else
            arg4 = TriggerServerEvent
            flag8 = "1f10937c56"
            flag10 = rageUiCall5
            workValue49 = cmgCall.categoryToIndentifier
            workValue50 = arg1
            workValue49 = workValue49[workValue50]
            workValue50 = textValue17
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1f10937c56".
            arg4(flag8, flag10, workValue49, workValue50)
            arg4 = workValue19
            arg4()
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue, workValue2, flag5, flag6, numberValue)
  end
end
function workValue27(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg3 = GetIsVehiclePrimaryColourCustom
  textValue7 = textValue15
  arg3 = arg3(textValue7)
  if arg3 then
    arg3 = ClearVehicleCustomPrimaryColour
    textValue7 = textValue15
    arg3(textValue7)
  end
  arg3 = SetVehicleModColor_1
  textValue7 = textValue15
  stringHelper2 = arg1
  rageUiCall4 = arg2
  nameValue = 0
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue)
  arg3 = GetVehicleColours
  textValue7 = textValue15
  arg3, textValue7 = arg3(textValue7)
  stringHelper2 = SetVehicleColours
  rageUiCall4 = textValue15
  nameValue = arg2
  textValue17 = textValue7
  stringHelper2(rageUiCall4, nameValue, textValue17)
end
function workValue28(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg3 = GetIsVehicleSecondaryColourCustom
  textValue7 = textValue15
  arg3 = arg3(textValue7)
  if arg3 then
    arg3 = ClearVehicleCustomSecondaryColour
    textValue7 = textValue15
    arg3(textValue7)
  end
  arg3 = SetVehicleModColor_2
  textValue7 = textValue15
  stringHelper2 = arg1
  rageUiCall4 = arg2
  arg3(textValue7, stringHelper2, rageUiCall4)
  arg3 = GetVehicleColours
  textValue7 = textValue15
  arg3, textValue7 = arg3(textValue7)
  stringHelper2 = SetVehicleColours
  rageUiCall4 = textValue15
  nameValue = arg3
  textValue17 = arg2
  stringHelper2(rageUiCall4, nameValue, textValue17)
end
function workValue29(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18
  arg3 = arg1.saveKey
  if "windowtint" == arg3 then
    textValue7 = SetVehicleWindowTint
    stringHelper2 = textValue15
    rageUiCall4 = arg2.tint
    textValue7(stringHelper2, rageUiCall4)
  elseif "frontwheel" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 6
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "backwheel" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 6
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 24
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "sportwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 0
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "musclewheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 1
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "lowriderwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 2
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "highendwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 7
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "suvwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 3
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "offroadwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 4
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "tunerwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 6
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "bennysonewheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 8
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "bennystwowheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 9
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "openwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 10
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "streetwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 11
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "trackwheels" == arg3 then
    textValue7 = SetVehicleWheelType
    stringHelper2 = textValue15
    rageUiCall4 = 12
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 23
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "wheelaccessories" == arg3 then
    textValue7 = SetVehicleModKit
    stringHelper2 = textValue15
    rageUiCall4 = 0
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = ToggleVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 20
    nameValue = true
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = SetVehicleTyreSmokeColor
    stringHelper2 = textValue15
    rageUiCall4 = arg2.colour
    rageUiCall4 = rageUiCall4[1]
    nameValue = arg2.colour
    nameValue = nameValue[2]
    textValue17 = arg2.colour
    textValue17 = textValue17[3]
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "chrome" == arg3 then
    textValue7 = workValue27
    stringHelper2 = 5
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "classic" == arg3 then
    textValue7 = workValue27
    stringHelper2 = 0
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "matte" == arg3 then
    textValue7 = workValue27
    stringHelper2 = 3
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "metals" == arg3 then
    textValue7 = workValue27
    stringHelper2 = 4
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "metallic" == arg3 then
    textValue7 = workValue27
    stringHelper2 = 1
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "util" == arg3 then
    textValue7 = GetVehicleColours
    stringHelper2 = textValue15
    textValue7, stringHelper2 = textValue7(stringHelper2)
    rageUiCall4 = SetVehicleColours
    nameValue = textValue15
    textValue17 = arg2.index
    textValue18 = stringHelper2
    rageUiCall4(nameValue, textValue17, textValue18)
  elseif "chameleon" == arg3 then
    textValue7 = GetVehicleColours
    stringHelper2 = textValue15
    textValue7, stringHelper2 = textValue7(stringHelper2)
    rageUiCall4 = SetVehicleColours
    nameValue = textValue15
    textValue17 = arg2.index
    textValue18 = stringHelper2
    rageUiCall4(nameValue, textValue17, textValue18)
  elseif "chrome2" == arg3 then
    textValue7 = workValue28
    stringHelper2 = 5
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "classic2" == arg3 then
    textValue7 = workValue28
    stringHelper2 = 0
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "matte2" == arg3 then
    textValue7 = workValue28
    stringHelper2 = 3
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "metal2" == arg3 then
    textValue7 = workValue28
    stringHelper2 = 4
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "metallic2" == arg3 then
    textValue7 = workValue28
    stringHelper2 = 1
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "pearlescent" == arg3 then
    textValue7 = GetVehicleColours
    stringHelper2 = textValue15
    textValue7, stringHelper2 = textValue7(stringHelper2)
    rageUiCall4 = SetVehicleExtraColours
    nameValue = textValue15
    textValue17 = arg2.index
    textValue18 = stringHelper2
    rageUiCall4(nameValue, textValue17, textValue18)
  elseif "wheelcolor" == arg3 then
    textValue7 = SetVehicleExtraColours
    stringHelper2 = textValue15
    rageUiCall4 = GetVehicleColours
    nameValue = textValue15
    rageUiCall4 = rageUiCall4(nameValue)
    nameValue = arg2.index
    textValue7(stringHelper2, rageUiCall4, nameValue)
  elseif "interiorcolour" == arg3 then
    textValue7 = SetVehicleInteriorColor
    stringHelper2 = textValue15
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "dashboardcolour" == arg3 then
    textValue7 = SetVehicleDashboardColor
    stringHelper2 = textValue15
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "mod_14" == arg3 then
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 14
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "mod_15" == arg3 then
    textValue7 = CMG
    textValue7 = textValue7.setVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 15
    nameValue = arg2.index
    textValue17 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "mod_22" == arg3 then
    textValue7 = ToggleVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 22
    nameValue = arg2.index
    nameValue = nameValue > 0
    textValue7(stringHelper2, rageUiCall4, nameValue)
  elseif "xenonlights" == arg3 then
    textValue7 = ToggleVehicleMod
    stringHelper2 = textValue15
    rageUiCall4 = 22
    nameValue = true
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = SetVehicleXenonLightsColor
    stringHelper2 = textValue15
    rageUiCall4 = arg2.index
    textValue7(stringHelper2, rageUiCall4)
  elseif "neonlayout" == arg3 then
    textValue7 = SetVehicleNeonLightEnabled
    stringHelper2 = textValue15
    rageUiCall4 = 0
    nameValue = false
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = SetVehicleNeonLightEnabled
    stringHelper2 = textValue15
    rageUiCall4 = 1
    nameValue = false
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = SetVehicleNeonLightEnabled
    stringHelper2 = textValue15
    rageUiCall4 = 2
    nameValue = false
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = SetVehicleNeonLightEnabled
    stringHelper2 = textValue15
    rageUiCall4 = 3
    nameValue = false
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = arg2.mod
    if 1 == textValue7 then
      textValue7 = SetVehicleNeonLightEnabled
      stringHelper2 = textValue15
      rageUiCall4 = 0
      nameValue = true
      textValue7(stringHelper2, rageUiCall4, nameValue)
      textValue7 = SetVehicleNeonLightEnabled
      stringHelper2 = textValue15
      rageUiCall4 = 1
      nameValue = true
      textValue7(stringHelper2, rageUiCall4, nameValue)
      textValue7 = SetVehicleNeonLightEnabled
      stringHelper2 = textValue15
      rageUiCall4 = 2
      nameValue = true
      textValue7(stringHelper2, rageUiCall4, nameValue)
      textValue7 = SetVehicleNeonLightEnabled
      stringHelper2 = textValue15
      rageUiCall4 = 3
      nameValue = true
      textValue7(stringHelper2, rageUiCall4, nameValue)
    else
      textValue7 = arg2.mod
      if 2 == textValue7 then
        textValue7 = SetVehicleNeonLightEnabled
        stringHelper2 = textValue15
        rageUiCall4 = 2
        nameValue = true
        textValue7(stringHelper2, rageUiCall4, nameValue)
        textValue7 = SetVehicleNeonLightEnabled
        stringHelper2 = textValue15
        rageUiCall4 = 3
        nameValue = true
        textValue7(stringHelper2, rageUiCall4, nameValue)
      else
        textValue7 = arg2.mod
        if 3 == textValue7 then
          textValue7 = SetVehicleNeonLightEnabled
          stringHelper2 = textValue15
          rageUiCall4 = 0
          nameValue = true
          textValue7(stringHelper2, rageUiCall4, nameValue)
          textValue7 = SetVehicleNeonLightEnabled
          stringHelper2 = textValue15
          rageUiCall4 = 1
          nameValue = true
          textValue7(stringHelper2, rageUiCall4, nameValue)
          textValue7 = SetVehicleNeonLightEnabled
          stringHelper2 = textValue15
          rageUiCall4 = 2
          nameValue = true
          textValue7(stringHelper2, rageUiCall4, nameValue)
        else
          textValue7 = arg2.mod
          if 4 == textValue7 then
            textValue7 = SetVehicleNeonLightEnabled
            stringHelper2 = textValue15
            rageUiCall4 = 0
            nameValue = true
            textValue7(stringHelper2, rageUiCall4, nameValue)
            textValue7 = SetVehicleNeonLightEnabled
            stringHelper2 = textValue15
            rageUiCall4 = 1
            nameValue = true
            textValue7(stringHelper2, rageUiCall4, nameValue)
            textValue7 = SetVehicleNeonLightEnabled
            stringHelper2 = textValue15
            rageUiCall4 = 3
            nameValue = true
            textValue7(stringHelper2, rageUiCall4, nameValue)
          end
        end
      end
    end
    textValue7 = SetVehicleNeonLightsColour
    stringHelper2 = textValue15
    rageUiCall4 = 222
    nameValue = 222
    textValue17 = 255
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  elseif "neoncolour" == arg3 then
    textValue7 = SetVehicleNeonLightEnabled
    stringHelper2 = textValue15
    rageUiCall4 = 0
    nameValue = true
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = SetVehicleNeonLightEnabled
    stringHelper2 = textValue15
    rageUiCall4 = 1
    nameValue = true
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = SetVehicleNeonLightEnabled
    stringHelper2 = textValue15
    rageUiCall4 = 2
    nameValue = true
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = SetVehicleNeonLightEnabled
    stringHelper2 = textValue15
    rageUiCall4 = 3
    nameValue = true
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = cmgCall.neonColours
    stringHelper2 = arg2.name
    textValue7 = textValue7[stringHelper2]
    stringHelper2 = SetVehicleNeonLightsColour
    rageUiCall4 = textValue15
    nameValue = textValue7[1]
    textValue17 = textValue7[2]
    textValue18 = textValue7[3]
    stringHelper2(rageUiCall4, nameValue, textValue17, textValue18)
  elseif "sounds" == arg3 then
    textValue7 = EnableControlAction
    stringHelper2 = 0
    rageUiCall4 = 71
    nameValue = true
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = Entity
    stringHelper2 = textValue15
    textValue7 = textValue7(stringHelper2)
    textValue7 = textValue7.state
    textValue7 = textValue7.previewSoundId
    stringHelper2 = arg2.soundId
    if textValue7 ~= stringHelper2 then
      textValue7 = ForceVehicleEngineAudio
      stringHelper2 = textValue15
      rageUiCall4 = arg2.soundId
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = SetTimeout
      stringHelper2 = 500
      function rageUiCall4()
        local arg12, arg22, arg32
        arg12 = SetVehicleRadioEnabled
        arg22 = textValue15
        arg32 = false
        arg12(arg22, arg32)
        arg12 = SetVehRadioStation
        arg22 = textValue15
        arg32 = "OFF"
        arg12(arg22, arg32)
      end
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = Entity
      stringHelper2 = textValue15
      textValue7 = textValue7(stringHelper2)
      textValue7 = textValue7.state
      stringHelper2 = arg2.soundId
      textValue7.previewSoundId = stringHelper2
    end
  end
end
function workValue30(arg1)
  local arg2, arg3, textValue7, stringHelper2
  arg2 = arg1.saveKey
  if "chrome" == arg2 or "classic" == arg2 or "matte" == arg2 or "metallic" == arg2 or "metals" == arg2 or "util" == arg2 or "chameleon" == arg2 then
    arg3 = CMG
    arg3 = arg3.applyPrimaryVehicleColours
    textValue7 = textValue8
    stringHelper2 = textValue15
    arg3(textValue7, stringHelper2)
  elseif "chrome2" == arg2 or "classic2" == arg2 or "matte2" == arg2 or "metallic2" == arg2 or "metal2" == arg2 then
    arg3 = CMG
    arg3 = arg3.applySecondaryVehicleColours
    textValue7 = textValue8
    stringHelper2 = textValue15
    arg3(textValue7, stringHelper2)
  elseif "windowtint" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.windowtint
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8
      if arg12 then
        arg22 = SetVehicleWindowTint
        arg32 = textValue15
        arg4 = tonumber
        flag8 = arg12
        arg4 = arg4(flag8)
        if not arg4 then
          arg4 = 0
        end
        arg22(arg32, arg4)
      else
        arg22 = SetVehicleWindowTint
        arg32 = textValue15
        arg4 = 0
        arg22(arg32, arg4)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "frontwheel" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.frontwheel
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8, flag10, workValue49
      arg22 = SetVehicleWheelType
      arg32 = textValue15
      arg4 = 6
      arg22(arg32, arg4)
      arg22 = GetVehicleModVariation
      arg32 = textValue15
      arg4 = 23
      arg22 = arg22(arg32, arg4)
      if arg12 then
        arg32 = CMG
        arg32 = arg32.setVehicleMod
        arg4 = textValue15
        flag8 = 23
        flag10 = tonumber
        workValue49 = arg12
        flag10 = flag10(workValue49)
        if not flag10 then
          flag10 = 0
        end
        workValue49 = arg22
        arg32(arg4, flag8, flag10, workValue49)
      else
        arg32 = CMG
        arg32 = arg32.setVehicleMod
        arg4 = textValue15
        flag8 = 23
        flag10 = 0
        workValue49 = arg22
        arg32(arg4, flag8, flag10, workValue49)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "backwheel" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.backwheel
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8, flag10, workValue49
      arg22 = SetVehicleWheelType
      arg32 = textValue15
      arg4 = 6
      arg22(arg32, arg4)
      arg22 = GetVehicleModVariation
      arg32 = textValue15
      arg4 = 24
      arg22 = arg22(arg32, arg4)
      if arg12 then
        arg32 = CMG
        arg32 = arg32.setVehicleMod
        arg4 = textValue15
        flag8 = 24
        flag10 = tonumber
        workValue49 = arg12
        flag10 = flag10(workValue49)
        if not flag10 then
          flag10 = 0
        end
        workValue49 = arg22
        arg32(arg4, flag8, flag10, workValue49)
      else
        arg32 = CMG
        arg32 = arg32.setVehicleMod
        arg4 = textValue15
        flag8 = 24
        flag10 = 0
        workValue49 = arg22
        arg32(arg4, flag8, flag10, workValue49)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "pearlescent" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.pearlescent
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8, flag10, workValue49
      arg22 = GetVehicleColours
      arg32 = textValue15
      arg22, arg32 = arg22(arg32)
      if arg12 then
        arg4 = SetVehicleExtraColours
        flag8 = textValue15
        flag10 = tonumber
        workValue49 = arg12
        flag10 = flag10(workValue49)
        if not flag10 then
          flag10 = 0
        end
        workValue49 = arg32
        arg4(flag8, flag10, workValue49)
      else
        arg4 = SetVehicleExtraColours
        flag8 = textValue15
        flag10 = 0
        workValue49 = arg32
        arg4(flag8, flag10, workValue49)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "wheelcolor" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.wheelcolor
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8, flag10
      if arg12 then
        arg22 = SetVehicleExtraColours
        arg32 = textValue15
        arg4 = GetVehicleColours
        flag8 = textValue15
        arg4 = arg4(flag8)
        flag8 = tonumber
        flag10 = arg12
        flag8 = flag8(flag10)
        if not flag8 then
          flag8 = 0
        end
        arg22(arg32, arg4, flag8)
      else
        arg22 = SetVehicleExtraColours
        arg32 = textValue15
        arg4 = GetVehicleColours
        flag8 = textValue15
        arg4 = arg4(flag8)
        flag8 = 0
        arg22(arg32, arg4, flag8)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "interiorcolour" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.interiorcolour
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8
      if arg12 then
        arg22 = SetVehicleInteriorColor
        arg32 = textValue15
        arg4 = tonumber
        flag8 = arg12
        arg4 = arg4(flag8)
        if not arg4 then
          arg4 = 0
        end
        arg22(arg32, arg4)
      else
        arg22 = SetVehicleInteriorColor
        arg32 = textValue15
        arg4 = 0
        arg22(arg32, arg4)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "dashboardcolour" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.dashboardcolour
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8
      if arg12 then
        arg22 = SetVehicleDashboardColor
        arg32 = textValue15
        arg4 = tonumber
        flag8 = arg12
        arg4 = arg4(flag8)
        if not arg4 then
          arg4 = 0
        end
        arg22(arg32, arg4)
      else
        arg22 = SetVehicleDashboardColor
        arg32 = textValue15
        arg4 = 0
        arg22(arg32, arg4)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "mod_14" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.mod_14
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8, flag10
      if arg12 then
        arg22 = CMG
        arg22 = arg22.setVehicleMod
        arg32 = textValue15
        arg4 = 14
        flag8 = tonumber
        flag10 = arg12
        flag8 = flag8(flag10)
        if not flag8 then
          flag8 = 0
        end
        flag10 = false
        arg22(arg32, arg4, flag8, flag10)
      else
        arg22 = CMG
        arg22 = arg22.setVehicleMod
        arg32 = textValue15
        arg4 = 14
        flag8 = -1
        flag10 = false
        arg22(arg32, arg4, flag8, flag10)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "mod_15" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.mod_15
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8, flag10
      if arg12 then
        arg22 = CMG
        arg22 = arg22.setVehicleMod
        arg32 = textValue15
        arg4 = 15
        flag8 = tonumber
        flag10 = arg12
        flag8 = flag8(flag10)
        if not flag8 then
          flag8 = 0
        end
        flag10 = false
        arg22(arg32, arg4, flag8, flag10)
      else
        arg22 = CMG
        arg22 = arg22.setVehicleMod
        arg32 = textValue15
        arg4 = 15
        flag8 = -1
        flag10 = false
        arg22(arg32, arg4, flag8, flag10)
      end
    end
    arg3(textValue7, stringHelper2)
  elseif "mod_22" == arg2 or "xenonlights" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.mod_22
    function stringHelper2(arg12)
      local arg22, arg32, arg4
      arg22 = workValue13
      arg32 = textValue8.xenonlights
      function arg4(arg13)
        local arg23, arg33, numberValue4, flag9
        arg23 = arg12
        if arg23 then
          arg23 = tonumber
          arg33 = arg12
          arg23 = arg23(arg33)
          if arg23 > 0 then
            arg23 = ToggleVehicleMod
            arg33 = textValue15
            numberValue4 = 22
            flag9 = true
            arg23(arg33, numberValue4, flag9)
            if arg13 then
              arg23 = SetVehicleXenonLightsColor
              arg33 = textValue15
              numberValue4 = tonumber
              flag9 = arg13
              numberValue4 = numberValue4(flag9)
              if not numberValue4 then
                numberValue4 = 0
              end
              arg23(arg33, numberValue4)
            end
        end
        else
          arg23 = ToggleVehicleMod
          arg33 = textValue15
          numberValue4 = 22
          flag9 = false
          arg23(arg33, numberValue4, flag9)
        end
      end
      arg22(arg32, arg4)
    end
    arg3(textValue7, stringHelper2)
  elseif "neonlayout" == arg2 or "neoncolour" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.neonlayout
    function stringHelper2(arg12)
      local arg22, arg32, arg4
      arg22 = workValue13
      arg32 = textValue8.neoncolour
      function arg4(arg13)
        local arg23, arg33, numberValue4, flag9, flag11, numberValue5, workValue51
        arg23 = arg12
        if arg23 then
          arg23 = tonumber
          arg33 = arg12
          arg23 = arg23(arg33)
          if arg23 > 0 then
            arg23 = tonumber
            arg33 = arg12
            arg23 = arg23(arg33)
            if 1 == arg23 then
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 0
              flag11 = true
              arg33(numberValue4, flag9, flag11)
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 1
              flag11 = true
              arg33(numberValue4, flag9, flag11)
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 2
              flag11 = true
              arg33(numberValue4, flag9, flag11)
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 3
              flag11 = true
              arg33(numberValue4, flag9, flag11)
            elseif 2 == arg23 then
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 2
              flag11 = true
              arg33(numberValue4, flag9, flag11)
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 3
              flag11 = true
              arg33(numberValue4, flag9, flag11)
            elseif 3 == arg23 then
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 0
              flag11 = true
              arg33(numberValue4, flag9, flag11)
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 1
              flag11 = true
              arg33(numberValue4, flag9, flag11)
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 2
              flag11 = true
              arg33(numberValue4, flag9, flag11)
            elseif 4 == arg23 then
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 0
              flag11 = true
              arg33(numberValue4, flag9, flag11)
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 1
              flag11 = true
              arg33(numberValue4, flag9, flag11)
              arg33 = SetVehicleNeonLightEnabled
              numberValue4 = textValue15
              flag9 = 3
              flag11 = true
              arg33(numberValue4, flag9, flag11)
            end
            if arg13 then
              arg33 = cmgCall.neonColours
              arg33 = arg33[arg13]
              numberValue4 = SetVehicleNeonLightsColour
              flag9 = textValue15
              flag11 = arg33[1]
              numberValue5 = arg33[2]
              workValue51 = arg33[3]
              numberValue4(flag9, flag11, numberValue5, workValue51)
            else
              arg33 = SetVehicleNeonLightsColour
              numberValue4 = textValue15
              flag9 = 222
              flag11 = 222
              numberValue5 = 255
              arg33(numberValue4, flag9, flag11, numberValue5)
            end
        end
        else
          arg23 = SetVehicleNeonLightEnabled
          arg33 = textValue15
          numberValue4 = 0
          flag9 = false
          arg23(arg33, numberValue4, flag9)
          arg23 = SetVehicleNeonLightEnabled
          arg33 = textValue15
          numberValue4 = 1
          flag9 = false
          arg23(arg33, numberValue4, flag9)
          arg23 = SetVehicleNeonLightEnabled
          arg33 = textValue15
          numberValue4 = 2
          flag9 = false
          arg23(arg33, numberValue4, flag9)
          arg23 = SetVehicleNeonLightEnabled
          arg33 = textValue15
          numberValue4 = 3
          flag9 = false
          arg23(arg33, numberValue4, flag9)
        end
      end
      arg22(arg32, arg4)
    end
    arg3(textValue7, stringHelper2)
  elseif "sounds" == arg2 then
    arg3 = workValue13
    textValue7 = textValue8.sounds
    function stringHelper2(arg12)
      local arg22, arg32, arg4, flag8, flag10
      if arg12 then
        arg22 = ForceVehicleEngineAudio
        arg32 = textValue15
        arg4 = CMG
        arg4 = arg4.getVehicleSoundNameFromId
        flag8 = tonumber
        flag10 = arg12
        flag8 = flag8(flag10)
        if not flag8 then
          flag8 = 0
        end
        arg4, flag8, flag10 = arg4(flag8)
        arg22(arg32, arg4, flag8, flag10)
      else
        arg22 = ForceVehicleEngineAudio
        arg32 = textValue15
        arg4 = ""
        arg22(arg32, arg4)
      end
      arg22 = SetTimeout
      arg32 = 500
      function arg4()
        local arg13, arg23, arg33
        arg13 = SetVehicleRadioEnabled
        arg23 = textValue15
        arg33 = false
        arg13(arg23, arg33)
        arg13 = SetVehRadioStation
        arg23 = textValue15
        arg33 = "OFF"
        arg13(arg23, arg33)
      end
      arg22(arg32, arg4)
    end
    arg3(textValue7, stringHelper2)
  end
end
function workValue31(arg1)
  local arg2, arg3
  arg2 = arg1.saveKey
  if "mod_14" == arg2 then
    arg2 = Citizen
    arg2 = arg2.CreateThread
    function arg3()
      local arg12, arg22, arg32, arg4, flag8
      arg12 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg12 = arg12()
      while true do
        arg22 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg22 = arg22()
        arg22 = arg22 - arg12
        arg32 = 2500
        if not (arg22 < arg32) then
          break
        end
        arg22 = SetControlNormal
        arg32 = 0
        arg4 = 86
        flag8 = 1.0
        arg22(arg32, arg4, flag8)
        arg22 = Citizen
        arg22 = arg22.Wait
        arg32 = 0
        arg22(arg32)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg2(arg3)
  else
    arg2 = workValue19
    arg2()
  end
  arg2 = arg1.name
  if "Chrome" ~= arg2 then
    arg2 = arg1.name
    if "Classic" ~= arg2 then
      arg2 = arg1.name
      if "Matte" ~= arg2 then
        arg2 = arg1.name
        if "Metallic" ~= arg2 then
          arg2 = arg1.name
          if "Metals" ~= arg2 then
            arg2 = arg1.name
            if "Pearlescent" ~= arg2 then
              arg2 = arg1.name
              if "Util" ~= arg2 then
                arg2 = arg1.name
                if "Chameleon" ~= arg2 then
                  return
                end
              end
            end
          end
        end
      end
    end
  end
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function arg3()
    local arg12, arg22, arg32, arg4, flag8, flag10, workValue49, workValue50, workValue52, flag12, flag, flag2, flag4
    arg12 = CMG
    arg12 = arg12.loadPtfx
    arg22 = "scr_as_trans"
    arg12(arg22)
    arg12 = UseParticleFxAsset
    arg22 = "scr_as_trans"
    arg12(arg22)
    arg12 = StartParticleFxLoopedOnEntity
    arg22 = "scr_as_trans_smoke"
    arg32 = textValue15
    arg4 = 0.0
    flag8 = 0.0
    flag10 = 0.0
    workValue49 = 0.0
    workValue50 = 0.0
    workValue52 = 0.0
    flag12 = 2.0
    flag = false
    flag2 = false
    flag4 = false
    arg12 = arg12(arg22, arg32, arg4, flag8, flag10, workValue49, workValue50, workValue52, flag12, flag, flag2, flag4)
    arg22 = GetVehicleColor
    arg32 = textValue15
    arg22, arg32, arg4 = arg22(arg32)
    flag8 = SetParticleFxLoopedColour
    flag10 = arg12
    workValue49 = arg22 / 255
    workValue50 = arg32 / 255
    workValue52 = arg4 / 255
    flag12 = false
    flag8(flag10, workValue49, workValue50, workValue52, flag12)
    flag8 = Citizen
    flag8 = flag8.Wait
    flag10 = 1000
    flag8(flag10)
    flag8 = StopParticleFxLooped
    flag10 = arg12
    workValue49 = false
    flag8(flag10, workValue49)
    flag8 = RemoveNamedPtfxAsset
    flag10 = "scr_as_trans"
    flag8(flag10)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
numberValue3 = 0.5
function workValue32()
  local arg1, arg2, arg3, textValue7
  arg1 = GetVehiclePedIsIn
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = false
  -- Beginner: result below is currentVehicle.
  arg1 = arg1(arg2, arg3)
  arg2 = CMG
  arg2 = arg2.getVehicleIdFromModel
  arg3 = GetEntityModel
  textValue7 = arg1
  arg3, textValue7 = arg3(textValue7)
  arg2 = arg2(arg3, textValue7)
  arg3 = cmgCall2.customCars
  arg3 = arg3.Imports
  arg3 = arg3[arg2]
  if arg3 then
    arg3 = true
    return arg3
  end
  arg3 = false
  return arg3
end
function workValue33(arg1)
  local arg2
  if "Engine Tunes" == arg1 or "Transmission" == arg1 or "Suspension" == arg1 or "Turbo" == arg1 or "Brakes" == arg1 then
    arg2 = true
    return arg2
  end
  arg2 = false
  return arg2
end
function workValue34(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue, flag7, numberValue2
  arg2 = arg1.helpText
  if arg2 then
    arg2 = drawNativeNotification
    arg3 = arg1.helpText
    textValue7 = true
    -- Beginner: Show a GTA-style notification/help prompt.
    arg2(arg3, textValue7)
  end
  arg2 = pairs
  arg3 = arg1.items
  arg2, arg3, textValue7, stringHelper2 = arg2(arg3)
  for rageUiCall4, nameValue in arg2, arg3, textValue7, stringHelper2 do
    textValue17 = arg1.saveValue
    textValue17 = nameValue[textValue17]
    textValue18 = type
    rageUiCall7 = textValue17
    textValue18 = textValue18(rageUiCall7)
    if "table" == textValue18 then
      textValue18 = json
      textValue18 = textValue18.encode
      rageUiCall7 = textValue17
      textValue18 = textValue18(rageUiCall7)
      if textValue18 then
        goto flow_label_28
      end
    end
    textValue18 = tostring
    rageUiCall7 = textValue17
    textValue18 = textValue18(rageUiCall7)
    ::flow_label_28::
    rageUiCall = arg1.saveKey
    rageUiCall7 = textValue8
    rageUiCall7 = rageUiCall7[rageUiCall]
    rageUiCall7 = rageUiCall7[textValue18]
    rageUiCall = nameValue.price
    if not rageUiCall then
      rageUiCall = arg1.price
    end
    workValue = workValue32
    workValue = workValue()
    if workValue then
      workValue = workValue33
      workValue2 = arg1.name
      workValue = workValue(workValue2)
      if workValue then
        workValue = math
        workValue = workValue.floor
        workValue2 = numberValue3
        workValue2 = rageUiCall * workValue2
        workValue = workValue(workValue2)
        rageUiCall = workValue
      end
    end
    workValue = workValue18
    workValue2 = true == rageUiCall7
    flag5 = nil ~= rageUiCall7
    flag6 = rageUiCall
    workValue = workValue(workValue2, flag5, flag6)
    workValue2 = RageUI
    workValue2 = workValue2.ButtonWithStyle
    flag5 = nameValue.name
    flag6 = nil
    numberValue = workValue
    flag7 = true
    function numberValue2(arg12, arg22, arg32)
      local arg4, flag8, flag10, workValue49, workValue50
      if arg22 then
        arg4 = workValue29
        flag8 = arg1
        flag10 = nameValue
        arg4(flag8, flag10)
      end
      if arg32 then
        arg4 = rageUiCall7
        if true == arg4 then
          arg4 = notify
          flag8 = "~r~You have already applied this mod"
          -- Beginner: Show a notification to the player.
          arg4(flag8)
        else
          arg4 = rageUiCall7
          if false == arg4 then
            arg4 = TriggerServerEvent
            flag8 = "1d97587305"
            flag10 = rageUiCall5
            workValue49 = cmgCall.categoryToIndentifier
            workValue50 = arg1
            workValue49 = workValue49[workValue50]
            workValue50 = rageUiCall4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1d97587305".
            arg4(flag8, flag10, workValue49, workValue50)
            arg4 = workValue31
            flag8 = arg1
            arg4(flag8)
          else
            arg4 = TriggerServerEvent
            flag8 = "94c59aead0"
            flag10 = rageUiCall5
            workValue49 = cmgCall.categoryToIndentifier
            workValue50 = arg1
            workValue49 = workValue49[workValue50]
            workValue50 = rageUiCall4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "94c59aead0".
            arg4(flag8, flag10, workValue49, workValue50)
            arg4 = workValue31
            flag8 = arg1
            arg4(flag8)
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    workValue2(flag5, flag6, numberValue, flag7, numberValue2)
  end
end
function workValue35(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6
  arg2 = pairs
  arg3 = arg1.items
  arg2, arg3, textValue7, stringHelper2 = arg2(arg3)
  for rageUiCall4, nameValue in arg2, arg3, textValue7, stringHelper2 do
    textValue18 = arg1.saveKey
    textValue17 = textValue8
    textValue17 = textValue17[textValue18]
    if not textValue17 then
      textValue17 = 0
    end
    textValue18 = type
    rageUiCall7 = textValue17
    textValue18 = textValue18(rageUiCall7)
    if "number" ~= textValue18 then
      textValue18 = tonumber
      rageUiCall7 = textValue17
      textValue18 = textValue18(rageUiCall7)
      textValue17 = textValue18 or textValue17
      if not textValue18 then
        textValue17 = 0
      end
    end
    textValue18 = workValue18
    rageUiCall7 = arg1.ownedValue
    rageUiCall7 = textValue17 == rageUiCall7
    rageUiCall = false
    workValue = nameValue.price
    if not workValue then
      workValue = arg1.price
    end
    textValue18 = textValue18(rageUiCall7, rageUiCall, workValue)
    rageUiCall7 = RageUI
    rageUiCall7 = rageUiCall7.ButtonWithStyle
    rageUiCall = nameValue.name
    workValue = nil
    workValue2 = textValue18
    flag5 = true
    function flag6(arg12, arg22, arg32)
      local arg4, flag8, flag10, workValue49, workValue50
      if arg32 then
        arg4 = textValue17
        flag8 = arg1.ownedValue
        if arg4 == flag8 then
          arg4 = notify
          flag8 = "~r~You have already applied this mod"
          -- Beginner: Show a notification to the player.
          arg4(flag8)
        else
          arg4 = TriggerServerEvent
          flag8 = "39ab80a2e4"
          flag10 = rageUiCall5
          workValue49 = cmgCall.categoryToIndentifier
          workValue50 = arg1
          workValue49 = workValue49[workValue50]
          workValue50 = rageUiCall4
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "39ab80a2e4".
          arg4(flag8, flag10, workValue49, workValue50)
          arg4 = workValue19
          arg4()
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall7(rageUiCall, workValue, workValue2, flag5, flag6)
  end
end
function workValue36(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5
  arg3 = arg1.saveKey
  arg2 = textValue8
  arg2 = arg2[arg3]
  if not arg2 then
    arg2 = {}
  end
  arg3 = #arg2
  if arg3 > 0 then
    arg3 = drawNativeNotification
    textValue7 = string
    textValue7 = textValue7.format
    stringHelper2 = "Press ~INPUT_FRONTEND_ACCEPT~ to change %s"
    rageUiCall4 = arg1.helpSuffix
    textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5 = textValue7(stringHelper2, rageUiCall4)
    -- Beginner: Show a GTA-style notification/help prompt.
    arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5)
  end
  arg3 = pairs
  textValue7 = arg2
  arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
  for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
    textValue18 = RageUI
    textValue18 = textValue18.ButtonWithStyle
    rageUiCall7 = string
    rageUiCall7 = rageUiCall7.format
    rageUiCall = "%s%d"
    workValue = arg1.indexPrefix
    workValue2 = nameValue
    rageUiCall7 = rageUiCall7(rageUiCall, workValue, workValue2)
    rageUiCall = ""
    workValue = {}
    workValue2 = tostring
    flag5 = textValue17
    workValue2 = workValue2(flag5)
    workValue.RightLabel = workValue2
    workValue2 = true
    function flag5(arg12, arg22, arg32)
      local arg4, flag8, flag10, workValue49
      if arg32 then
        arg4 = CMG
        arg4 = arg4.clientPrompt
        flag8 = arg1.inputTitle
        flag10 = ""
        function workValue49(arg13)
          local arg23, arg33, numberValue4, flag9, flag11, numberValue5, workValue51, workValue53
          arg33 = nameValue
          arg23 = arg2
          arg23 = arg23[arg33]
          arg33 = nil
          numberValue4 = arg1.valueType
          if "number" == numberValue4 then
            numberValue4 = tonumber
            flag9 = arg13
            numberValue4 = numberValue4(flag9)
            if numberValue4 then
              arg33 = numberValue4
            else
              flag9 = notify
              flag11 = "~r~Could not parse number."
              -- Beginner: Show a notification to the player.
              flag9(flag11)
            end
          else
            arg33 = arg13
          end
          if arg33 and arg33 ~= arg23 then
            numberValue4 = TriggerServerEvent
            flag9 = "50bb6e7b72"
            flag11 = rageUiCall5
            numberValue5 = cmgCall.categoryToIndentifier
            workValue51 = arg1
            numberValue5 = numberValue5[workValue51]
            workValue51 = nameValue
            workValue53 = arg33
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "50bb6e7b72".
            numberValue4(flag9, flag11, numberValue5, workValue51, workValue53)
          end
        end
        arg4(flag8, flag10, workValue49)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    textValue18(rageUiCall7, rageUiCall, workValue, workValue2, flag5)
  end
  arg3 = RageUI
  arg3 = arg3.ButtonWithStyle
  textValue7 = arg1.buyTitle
  stringHelper2 = ""
  rageUiCall4 = {}
  nameValue = "\194\163"
  textValue17 = getMoneyStringFormatted
  textValue18 = workValue17
  rageUiCall7 = arg1.price
  textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5 = textValue18(rageUiCall7)
  textValue17 = textValue17(textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5)
  nameValue = nameValue .. textValue17
  rageUiCall4.RightLabel = nameValue
  nameValue = true
  function textValue17(arg12, arg22, arg32)
    local arg4, flag8, flag10, workValue49, workValue50
    if arg32 then
      arg4 = TriggerServerEvent
      flag8 = "7a505e9225"
      flag10 = rageUiCall5
      workValue49 = cmgCall.categoryToIndentifier
      workValue50 = arg1
      workValue49 = workValue49[workValue50]
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7a505e9225".
      arg4(flag8, flag10, workValue49)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17)
end
function workValue37(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg3 = arg1.saveKey
  if "primaryrgb" == arg3 then
    textValue7 = SetVehicleCustomPrimaryColour
    stringHelper2 = textValue15
    rageUiCall4 = arg2.red
    nameValue = arg2.green
    textValue17 = arg2.blue
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
  end
end
function workValue38(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2
  arg3 = arg1.saveKey
  arg2 = textValue8
  arg2 = arg2[arg3]
  function arg3(arg12, arg22)
    local arg32, arg4, flag8, flag10
    if arg12 then
      arg32 = CMG
      arg32 = arg32.clientPrompt
      arg4 = "Enter Value (0 - 255)"
      flag8 = ""
      function flag10(arg13)
        local arg23, arg33, numberValue4
        arg23 = tonumber
        arg33 = arg13
        arg23 = arg23(arg33)
        if arg23 then
          arg33 = math
          arg33 = arg33.type
          numberValue4 = arg23
          arg33 = arg33(numberValue4)
          if "integer" == arg33 and arg23 >= 0 then
            arg33 = 255
            if arg23 <= arg33 then
              arg33 = arg22
              numberValue4 = arg23
              arg33(numberValue4)
            end
          end
        end
      end
      arg32(arg4, flag8, flag10)
    end
  end
  function textValue7()
    local arg12, arg22, arg32, arg4, flag8, flag10, workValue49
    arg12 = workValue37
    arg22 = arg1
    arg32 = arg2
    arg12(arg22, arg32)
    arg12 = TriggerServerEvent
    arg22 = "e4da2894cf"
    arg32 = rageUiCall5
    arg4 = cmgCall.categoryToIndentifier
    flag8 = arg1
    arg4 = arg4[flag8]
    flag8 = arg2.red
    flag10 = arg2.green
    workValue49 = arg2.blue
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e4da2894cf".
    arg12(arg22, arg32, arg4, flag8, flag10, workValue49)
  end
  if not arg2 then
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.ButtonWithStyle
    rageUiCall4 = "Purchase Colour Picker"
    nameValue = ""
    textValue17 = {}
    textValue18 = "\194\163"
    rageUiCall7 = getMoneyStringFormatted
    rageUiCall = workValue17
    workValue = arg1.price
    rageUiCall, workValue, workValue2 = rageUiCall(workValue)
    rageUiCall7 = rageUiCall7(rageUiCall, workValue, workValue2)
    textValue18 = textValue18 .. rageUiCall7
    textValue17.RightLabel = textValue18
    textValue18 = true
    function rageUiCall7(arg12, arg22, arg32)
      local arg4, flag8, flag10, workValue49, workValue50
      if arg32 then
        arg4 = TriggerServerEvent
        flag8 = "a3c480899a"
        flag10 = rageUiCall5
        workValue49 = cmgCall.categoryToIndentifier
        workValue50 = arg1
        workValue49 = workValue49[workValue50]
        arg4(flag8, flag10, workValue49)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    stringHelper2(rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7)
  else
    stringHelper2 = drawNativeNotification
    rageUiCall4 = "Press ~INPUT_FRONTEND_ACCEPT~ to enter an RGB value."
    -- Beginner: Show a GTA-style notification/help prompt.
    stringHelper2(rageUiCall4)
  end
  stringHelper2 = RageUI
  stringHelper2 = stringHelper2.Slider
  rageUiCall4 = "Red"
  if arg2 then
    nameValue = arg2.red
    if nameValue then
      goto flow_label_38
    end
  end
  nameValue = 0
  ::flow_label_38::
  textValue17 = 255
  textValue18 = ""
  rageUiCall7 = false
  rageUiCall = {}
  workValue = nil ~= arg2
  function workValue2(arg12, arg22, arg32, arg4)
    local flag8, flag10, workValue49
    flag8 = arg3
    flag10 = arg32
    function workValue49(arg13)
      local arg23
      arg2.red = arg13
      arg23 = textValue7
      arg23()
    end
    flag8(flag10, workValue49)
    flag8 = arg2.red
    if flag8 ~= arg4 then
      arg2.red = arg4
      flag8 = textValue7
      flag8()
    end
  end
  stringHelper2(rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2)
  stringHelper2 = RageUI
  stringHelper2 = stringHelper2.Slider
  rageUiCall4 = "Green"
  if arg2 then
    nameValue = arg2.green
    if nameValue then
      goto flow_label_58
    end
  end
  nameValue = 0
  ::flow_label_58::
  textValue17 = 255
  textValue18 = ""
  rageUiCall7 = false
  rageUiCall = {}
  workValue = nil ~= arg2
  function workValue2(arg12, arg22, arg32, arg4)
    local flag8, flag10, workValue49
    flag8 = arg3
    flag10 = arg32
    function workValue49(arg13)
      local arg23
      arg2.green = arg13
      arg23 = textValue7
      arg23()
    end
    flag8(flag10, workValue49)
    flag8 = arg2.green
    if flag8 ~= arg4 then
      arg2.green = arg4
      flag8 = textValue7
      flag8()
    end
  end
  stringHelper2(rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2)
  stringHelper2 = RageUI
  stringHelper2 = stringHelper2.Slider
  rageUiCall4 = "Blue"
  if arg2 then
    nameValue = arg2.blue
    if nameValue then
      goto flow_label_78
    end
  end
  nameValue = 0
  ::flow_label_78::
  textValue17 = 255
  textValue18 = ""
  rageUiCall7 = false
  rageUiCall = {}
  workValue = nil ~= arg2
  function workValue2(arg12, arg22, arg32, arg4)
    local flag8, flag10, workValue49
    flag8 = arg3
    flag10 = arg32
    function workValue49(arg13)
      local arg23
      arg2.blue = arg13
      arg23 = textValue7
      arg23()
    end
    flag8(flag10, workValue49)
    flag8 = arg2.blue
    if flag8 ~= arg4 then
      arg2.blue = arg4
      flag8 = textValue7
      flag8()
    end
  end
  stringHelper2(rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2)
end
function workValue39(arg1, arg2)
  local arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue
  arg3 = RageUI
  arg3 = arg3.ButtonWithStyle
  textValue7 = arg1.name
  stringHelper2 = arg1.description
  rageUiCall4 = {}
  rageUiCall4.RightLabel = "\226\134\146\226\134\146\226\134\146"
  nameValue = true
  function textValue17(arg12, arg22, arg32)
    local arg4, flag8, flag10, workValue49, workValue50, workValue52, flag12
    if arg32 then
      arg4 = TriggerEvent
      flag8 = "e3500806d7"
      flag10 = arg1.menuType
      workValue49 = textValue15
      workValue50 = rageUiCall5
      workValue52 = textValue8
      flag12 = arg2
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e3500806d7".
      arg4(flag8, flag10, workValue49, workValue50, workValue52, flag12)
    end
  end
  textValue18 = RMenu
  rageUiCall7 = textValue18
  textValue18 = textValue18.Get
  rageUiCall = arg1.menuType
  workValue = arg1.menuName
  textValue18, rageUiCall7, rageUiCall, workValue = textValue18(rageUiCall7, rageUiCall, workValue)
  -- Beginner: Draw a selectable RageUI menu button.
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
end
function workValue40(arg1)
  local arg2, arg3, textValue7
  arg2 = IsControlJustPressed
  arg3 = 0
  textValue7 = 0
  arg2 = arg2(arg3, textValue7)
  if arg2 then
    arg2 = rageUiCall6
    if 0 == arg2 then
      arg2 = workValue9
      arg3 = arg1
      arg2(arg3)
    else
      arg2 = workValue10
      arg2()
    end
  end
end
function workValue41(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall
  arg2 = {}
  arg3 = pairs
  textValue7 = arg1.categories
  arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
  for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
    textValue18 = table
    textValue18 = textValue18.insert
    rageUiCall7 = arg2
    rageUiCall = textValue17
    textValue18(rageUiCall7, rageUiCall)
  end
  arg3 = table
  arg3 = arg3.sort
  textValue7 = arg2
  function stringHelper2(arg12, arg22)
    local arg32, arg4
    arg32 = arg12.name
    if not arg32 then
      arg32 = ""
    end
    arg4 = arg22.name
    if not arg4 then
      arg4 = ""
    end
    arg32 = arg32 < arg4
    return arg32
  end
  arg3(textValue7, stringHelper2)
  return arg2
end
function workValue42(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18
  arg2 = RageUI
  arg2 = arg2.IsVisible
  arg3 = RMenu
  textValue7 = arg3
  arg3 = arg3.Get
  stringHelper2 = "lscustoms"
  rageUiCall4 = arg1.menu
  -- Beginner: result below is menu.
  arg3 = arg3(textValue7, stringHelper2, rageUiCall4)
  textValue7 = true
  stringHelper2 = true
  rageUiCall4 = true
  function nameValue()
    local arg12, arg22, arg32, arg4, flag8, flag10, workValue49, workValue50, workValue52, flag12, flag, flag2, flag4, workValue4, textValue3, workValue6
    arg12 = RageUI
    arg12 = arg12.BackspaceMenuCallback
    function arg22()
      local arg13, arg23
      arg13 = workValue11
      arg23 = arg1
      arg13(arg23)
      arg13 = arg1.type
      if "modList" == arg13 then
        arg13 = workValue21
        arg23 = arg1
        arg13(arg23)
      else
        arg13 = arg1.type
        if "staticList" == arg13 then
          arg13 = workValue30
          arg23 = arg1
          arg13(arg23)
        else
          arg13 = arg1.type
          if "indexModList" == arg13 then
            arg13 = workValue24
            arg23 = arg1
            arg13(arg23)
          end
        end
      end
    end
    arg12(arg22)
    arg12 = arg1.type
    if "modList" == arg12 then
      arg12 = workValue22
      arg22 = arg1
      arg12(arg22)
      arg12 = workValue40
      arg22 = arg1
      arg12(arg22)
    else
      arg12 = arg1.type
      if "indexModList" == arg12 then
        arg12 = workValue25
        arg22 = arg1
        arg12(arg22)
        arg12 = workValue40
        arg22 = arg1
        arg12(arg22)
      else
        arg12 = arg1.type
        if "indexMultiList" == arg12 then
          arg12 = workValue26
          arg22 = arg1
          arg12(arg22)
          arg12 = workValue40
          arg22 = arg1
          arg12(arg22)
        else
          arg12 = arg1.type
          if "staticList" == arg12 then
            arg12 = workValue34
            arg22 = arg1
            arg12(arg22)
            arg12 = workValue40
            arg22 = arg1
            arg12(arg22)
          else
            arg12 = arg1.type
            if "staticValueList" == arg12 then
              arg12 = workValue35
              arg22 = arg1
              arg12(arg22)
              arg12 = workValue40
              arg22 = arg1
              arg12(arg22)
            else
              arg12 = arg1.type
              if "valueInputList" == arg12 then
                arg12 = workValue36
                arg22 = arg1
                arg12(arg22)
                arg12 = workValue40
                arg22 = arg1
                arg12(arg22)
              else
                arg12 = arg1.type
                if "colourPicker" == arg12 then
                  arg12 = workValue38
                  arg22 = arg1
                  arg12(arg22)
                  arg12 = workValue40
                  arg22 = arg1
                  arg12(arg22)
                else
                  arg12 = arg1.type
                  if "categoryList" == arg12 then
                    arg12 = ipairs
                    arg22 = workValue41
                    arg32 = arg1
                    arg22, arg32, arg4, flag8, flag10, workValue49, workValue50, workValue52, flag12, flag, flag2, flag4, workValue4, textValue3, workValue6 = arg22(arg32)
                    arg12, arg22, arg32, arg4 = arg12(arg22, arg32, arg4, flag8, flag10, workValue49, workValue50, workValue52, flag12, flag, flag2, flag4, workValue4, textValue3, workValue6)
                    for flag8, flag10 in arg12, arg22, arg32, arg4 do
                      workValue49 = flag10.visible
                      if workValue49 then
                        workValue49 = flag10.type
                        if "externalMenu" == workValue49 then
                          workValue49 = workValue39
                          workValue50 = flag10
                          workValue52 = {}
                          flag12 = "lscustoms"
                          flag = arg1.menu
                          workValue52[1] = flag12
                          workValue52[2] = flag
                          workValue49(workValue50, workValue52)
                        else
                          workValue49 = RageUI
                          workValue49 = workValue49.ButtonWithStyle
                          workValue50 = flag10.name
                          workValue52 = flag10.description
                          flag12 = {}
                          flag12.RightLabel = "\226\134\146\226\134\146\226\134\146"
                          flag = true
                          function flag2(arg13, arg23, arg33)
                            local numberValue4, flag9
                            if arg33 then
                              numberValue4 = workValue9
                              flag9 = flag10
                              numberValue4(flag9)
                            end
                          end
                          flag4 = RMenu
                          workValue4 = flag4
                          flag4 = flag4.Get
                          textValue3 = "lscustoms"
                          workValue6 = flag10.menu
                          flag4, workValue4, textValue3, workValue6 = flag4(workValue4, textValue3, workValue6)
                          -- Beginner: Draw a selectable RageUI menu button.
                          workValue49(workValue50, workValue52, flag12, flag, flag2, flag4, workValue4, textValue3, workValue6)
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
  arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue)
  arg2 = arg1.type
  if "categoryList" == arg2 then
    arg2 = pairs
    arg3 = arg1.categories
    arg2, arg3, textValue7, stringHelper2 = arg2(arg3)
    for rageUiCall4, nameValue in arg2, arg3, textValue7, stringHelper2 do
      textValue17 = workValue42
      textValue18 = nameValue
      textValue17(textValue18)
    end
  end
end
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateWhile
dataTable2 = 1.0
workValue43 = RMenu
workValue44 = workValue43
workValue43 = workValue43.Get
textValue9 = "lscustoms"
cmgCall3 = "mainmenu"
-- Beginner: result below is menu.
workValue43 = workValue43(workValue44, textValue9, cmgCall3)
workValue44 = nil
function textValue9()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue7 = "lscustoms"
  stringHelper2 = "repair"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue7, stringHelper2)
  arg3 = true
  textValue7 = true
  stringHelper2 = true
  function rageUiCall4()
    local arg12, arg22, arg32, arg4, flag8, flag10
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Repair Vehicle"
    arg32 = nil
    arg4 = {}
    arg4.RightLabel = "\194\1631,000"
    flag8 = true
    function flag10(arg13, arg23, arg33)
      local numberValue4, flag9
      if arg33 then
        numberValue4 = TriggerServerEvent
        flag9 = "d4574bdb4a"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d4574bdb4a".
        numberValue4(flag9)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, arg4, flag8, flag10)
  end
  arg1(arg2, arg3, textValue7, stringHelper2, rageUiCall4)
  arg1 = workValue42
  arg2 = cmgCall.category
  arg1(arg2)
end
rageUiCall2(dataTable2, workValue43, workValue44, textValue9)
rageUiCall2 = {}
function dataTable2()
  local arg1, arg2
  arg1 = true
  return arg1
end
rageUiCall2.default = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = IsThisModelACar
  arg2 = GetEntityModel
  arg3 = textValue15
  arg2, arg3 = arg2(arg3)
  return arg1(arg2, arg3)
end
rageUiCall2.isCar = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = IsThisModelABike
  arg2 = GetEntityModel
  arg3 = textValue15
  arg2, arg3 = arg2(arg3)
  return arg1(arg2, arg3)
end
rageUiCall2.isBike = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = IsThisModelAPlane
  arg2 = GetEntityModel
  arg3 = textValue15
  arg2, arg3 = arg2(arg3)
  return arg1(arg2, arg3)
end
rageUiCall2.isPlane = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = GetNumVehicleMods
  arg2 = textValue15
  arg3 = 1
  arg1 = arg1(arg2, arg3)
  arg1 = arg1 > 0
  return arg1
end
rageUiCall2.hasFrontBumper = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = GetNumVehicleMods
  arg2 = textValue15
  arg3 = 2
  arg1 = arg1(arg2, arg3)
  arg1 = arg1 > 0
  return arg1
end
rageUiCall2.hasRearBumper = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = GetNumVehicleMods
  arg2 = textValue15
  arg3 = 1
  arg1 = arg1(arg2, arg3)
  arg1 = arg1 > 0
  return arg1
end
rageUiCall2.hasAnyBumper = dataTable2
function dataTable2()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue
  arg1 = 42
  arg2 = 46
  arg3 = 1
  for textValue7 = arg1, arg2, arg3 do
    stringHelper2 = GetNumVehicleMods
    rageUiCall4 = textValue15
    nameValue = textValue7
    stringHelper2 = stringHelper2(rageUiCall4, nameValue)
    if stringHelper2 > 0 then
      stringHelper2 = true
      return stringHelper2
    end
  end
  arg1 = GetNumVehicleMods
  arg2 = textValue15
  arg3 = 5
  arg1 = arg1(arg2, arg3)
  arg1 = arg1 > 0
  return arg1
end
rageUiCall2.hasChassis = dataTable2
function dataTable2()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue
  arg1 = 27
  arg2 = 37
  arg3 = 1
  for textValue7 = arg1, arg2, arg3 do
    stringHelper2 = GetNumVehicleMods
    rageUiCall4 = textValue15
    nameValue = textValue7
    stringHelper2 = stringHelper2(rageUiCall4, nameValue)
    if stringHelper2 > 0 then
      stringHelper2 = true
      return stringHelper2
    end
  end
  arg1 = false
  return arg1
end
rageUiCall2.hasInterior = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = GetNumVehicleMods
  arg2 = textValue15
  arg3 = 25
  arg1 = arg1(arg2, arg3)
  arg1 = arg1 > 0
  return arg1
end
rageUiCall2.hasPlates = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = IsThisModelACar
  arg2 = GetEntityModel
  arg3 = textValue15
  arg2, arg3 = arg2(arg3)
  arg1 = arg1(arg2, arg3)
  if not arg1 then
    arg1 = IsThisModelABike
    arg2 = GetEntityModel
    arg3 = textValue15
    arg2, arg3 = arg2(arg3)
    arg1 = arg1(arg2, arg3)
  end
  return arg1
end
rageUiCall2.isCarOrBike = dataTable2
function dataTable2()
  local arg1, arg2, arg3
  arg1 = GetEntityModel
  arg2 = textValue15
  -- Beginner: result below is modelHash.
  arg1 = arg1(arg2)
  arg2 = IsThisModelACar
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = IsThisModelABike
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = IsThisModelAHeli
      arg3 = arg1
      arg2 = arg2(arg3)
    end
  end
  return arg2
end
rageUiCall2.isCarOrBikeOrHeli = dataTable2
function dataTable2()
  local arg1, arg2
  arg1 = textValue8
  if arg1 then
    arg1 = textValue8.security
    if arg1 then
      arg1 = textValue8.security
      arg1 = arg1["21"]
      arg1 = nil ~= arg1
    end
  end
  return arg1
end
rageUiCall2.hasBiometricLock = dataTable2
dataTable2 = {}
dataTable2[18] = true
dataTable2[22] = true
function workValue43(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue
  arg1.visible = true
  arg2 = arg1.type
  if "modList" == arg2 then
    arg2 = GetNumVehicleMods
    arg3 = textValue15
    textValue7 = arg1.modType
    arg2 = arg2(arg3, textValue7)
    arg2 = arg2 > 0
    arg1.visible = arg2
  else
    arg2 = arg1.type
    if "indexModList" ~= arg2 then
      arg2 = arg1.type
      if "indexMultiList" ~= arg2 then
        goto flow_label_34
      end
    end
    arg2 = table
    arg2 = arg2.count
    textValue7 = arg1.generatorName
    arg3 = dataTable
    arg3 = arg3[textValue7]
    arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue = arg3()
    -- Beginner: result below is count.
    arg2 = arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
    arg2 = arg2 > 0
    arg1.visible = arg2
    goto flow_label_100
    ::flow_label_34::
    arg2 = arg1.type
    if "staticList" == arg2 then
      arg2 = string
      arg2 = arg2.match
      arg3 = arg1.saveKey
      textValue7 = "mod_"
      arg2 = arg2(arg3, textValue7)
      if arg2 then
        arg2 = tonumber
        arg3 = string
        arg3 = arg3.sub
        textValue7 = arg1.saveKey
        stringHelper2 = 5
        arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue = arg3(textValue7, stringHelper2)
        arg2 = arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
        if arg2 then
          arg3 = dataTable2
          arg3 = arg3[arg2]
          if not arg3 then
            arg3 = GetNumVehicleMods
            textValue7 = textValue15
            stringHelper2 = arg2
            arg3 = arg3(textValue7, stringHelper2)
            if 0 == arg3 then
              arg1.visible = false
            end
          end
        end
      end
    end
    arg2 = arg1.requirements
    if arg2 then
      arg2 = stringsplit
      arg3 = arg1.requirements
      textValue7 = ","
      arg2 = arg2(arg3, textValue7)
      arg3 = pairs
      textValue7 = arg2
      arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
      for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
        textValue18 = string
        textValue18 = textValue18.gsub
        rageUiCall7 = textValue17
        rageUiCall = "%s+"
        workValue = ""
        textValue18 = textValue18(rageUiCall7, rageUiCall, workValue)
        textValue17 = textValue18
        textValue18 = rageUiCall2
        textValue18 = textValue18[textValue17]
        rageUiCall7 = textValue18
        rageUiCall7 = rageUiCall7()
        if not rageUiCall7 then
          arg1.visible = false
          break
        end
      end
    else
      arg2 = arg1.visible
      if arg2 then
        arg2 = rageUiCall2.default
        arg2 = arg2()
        arg1.visible = arg2
      end
    end
  end
  ::flow_label_100::
  arg2 = arg1.type
  if "categoryList" == arg2 then
    arg2 = false
    arg3 = pairs
    textValue7 = arg1.categories
    arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
    for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
      textValue18 = workValue43
      rageUiCall7 = textValue17
      textValue18(rageUiCall7)
      textValue18 = textValue17.visible
      if textValue18 then
        arg2 = true
      end
    end
    if not arg2 then
      arg1.visible = false
    end
  end
end
function workValue44()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue
  arg1 = CMG
  arg1 = arg1.getVehicleIdFromModel
  arg2 = GetEntityModel
  arg3 = textValue15
  arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue = arg2(arg3)
  arg1 = arg1(arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue)
  textValue16 = arg1
  arg1 = DecorExistOn
  arg2 = textValue15
  arg3 = "0a6cf607ed"
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = DecorGetInt
    arg2 = textValue15
    arg3 = "0a6cf607ed"
    arg1 = arg1(arg2, arg3)
    rageUiCall5 = arg1
  else
    arg1 = 0
    rageUiCall5 = arg1
  end
  arg1 = textValue16
  if nil ~= arg1 then
    arg1 = rageUiCall5
    if 0 ~= arg1 then
      arg1 = rageUiCall3
      if arg1 then
        goto flow_label_39
      end
    end
  end
  arg1 = notify
  arg2 = "~r~Could not identify the vehicle you are in."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
  arg1 = nil
  rageUiCall3 = arg1
  arg1 = 0
  textValue15 = arg1
  return
  ::flow_label_39::
  arg1 = TriggerServerEvent
  arg2 = "233c2baede"
  arg3 = rageUiCall5
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "233c2baede".
  arg1(arg2, arg3)
  while true do
    arg1 = textValue8
    if arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = DisplayRadar
  arg2 = false
  arg1(arg2)
  arg1 = SetPlayerControl
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = false
  textValue7 = 0
  arg1(arg2, arg3, textValue7)
  arg1 = TriggerServerEvent
  arg2 = "ae63f8542b"
  arg3 = rageUiCall3.index
  textValue7 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
  arg1(arg2, arg3, textValue7)
  arg1 = DoScreenFadeOut
  arg2 = 500
  arg1(arg2)
  while true do
    arg1 = IsScreenFadingOut
    arg1 = arg1()
    if not arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = rageUiCall3.driveIn
  arg2 = SetEntityCoordsNoOffset
  arg3 = textValue15
  textValue7 = arg1.position
  textValue7 = textValue7.x
  stringHelper2 = arg1.position
  stringHelper2 = stringHelper2.y
  rageUiCall4 = arg1.position
  rageUiCall4 = rageUiCall4.z
  nameValue = false
  textValue17 = false
  textValue18 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18)
  arg2 = SetEntityHeading
  arg3 = textValue15
  textValue7 = arg1.heading
  -- Beginner: Change the direction an entity is facing.
  arg2(arg3, textValue7)
  arg2 = FadeOutLocalPlayer
  arg3 = true
  arg2(arg3)
  arg2 = SetVehicleOnGroundProperly
  arg3 = textValue15
  arg2(arg3)
  arg2 = SetVehicleLights
  arg3 = textValue15
  textValue7 = 2
  arg2(arg3, textValue7)
  arg2 = SetVehicleInteriorlight
  arg3 = textValue15
  textValue7 = true
  arg2(arg3, textValue7)
  arg2 = SetVehicleDoorsLocked
  arg3 = textValue15
  textValue7 = 4
  arg2(arg3, textValue7)
  arg2 = SetPlayerInvincible
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  textValue7 = true
  arg2(arg3, textValue7)
  arg2 = SetEntityInvincible
  arg3 = textValue15
  textValue7 = true
  arg2(arg3, textValue7)
  arg2 = SetEntityCanBeDamaged
  arg3 = textValue15
  textValue7 = false
  arg2(arg3, textValue7)
  arg2 = SetVehRadioStation
  arg3 = textValue15
  textValue7 = "OFF"
  arg2(arg3, textValue7)
  arg2 = rageUiCall3.interior
  if arg2 then
    arg3 = ForceRoomForEntity
    textValue7 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue7 = textValue7()
    stringHelper2 = arg2.key
    rageUiCall4 = arg2.room
    arg3(textValue7, stringHelper2, rageUiCall4)
    arg3 = ForceRoomForEntity
    textValue7 = textValue15
    stringHelper2 = arg2.key
    rageUiCall4 = arg2.room
    arg3(textValue7, stringHelper2, rageUiCall4)
    arg3 = ForceRoomForGameViewport
    textValue7 = arg2.key
    stringHelper2 = arg2.room
    arg3(textValue7, stringHelper2)
  end
  arg3 = rageUiCall3.type
  if "automobile" == arg3 then
    arg3 = rageUiCall3.camera
    textValue7 = GetRenderingCam
    textValue7 = textValue7()
    textValue = textValue7
    textValue7 = CreateCam
    stringHelper2 = "DEFAULT_SCRIPTED_CAMERA"
    rageUiCall4 = true
    -- Beginner: result below is cameraHandle.
    textValue7 = textValue7(stringHelper2, rageUiCall4)
    rageUiCall6 = textValue7
    textValue7 = SetCamCoord
    stringHelper2 = rageUiCall6
    rageUiCall4 = arg3.position
    rageUiCall4 = rageUiCall4.x
    nameValue = arg3.position
    nameValue = nameValue.y
    textValue17 = arg3.position
    textValue17 = textValue17.z
    textValue17 = textValue17 + 1.0
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17)
    textValue7 = PointCamAtEntity
    stringHelper2 = rageUiCall6
    rageUiCall4 = textValue15
    nameValue = 1
    textValue17 = 1
    textValue18 = 1
    rageUiCall7 = true
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7)
    textValue7 = SetCamActive
    stringHelper2 = rageUiCall6
    rageUiCall4 = true
    textValue7(stringHelper2, rageUiCall4)
    textValue7 = RenderScriptCams
    stringHelper2 = true
    rageUiCall4 = false
    nameValue = 0
    textValue17 = false
    textValue18 = false
    textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18)
    textValue7 = rageUiCall3.inside
    stringHelper2 = TaskVehicleDriveToCoord
    rageUiCall4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    rageUiCall4 = rageUiCall4()
    nameValue = textValue15
    textValue17 = textValue7.position
    textValue17 = textValue17.x
    textValue18 = textValue7.position
    textValue18 = textValue18.y
    rageUiCall7 = textValue7.position
    rageUiCall7 = rageUiCall7.z
    rageUiCall = 3.0
    workValue = 1.0
    workValue2 = GetEntityModel
    flag5 = textValue15
    -- Beginner: result below is modelHash.
    workValue2 = workValue2(flag5)
    flag5 = 16777216
    flag6 = 0.1
    numberValue = 1
    stringHelper2(rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue)
  end
  if arg2 then
    arg3 = ForceRoomForEntity
    textValue7 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue7 = textValue7()
    stringHelper2 = arg2.key
    rageUiCall4 = arg2.room
    arg3(textValue7, stringHelper2, rageUiCall4)
    arg3 = ForceRoomForEntity
    textValue7 = textValue15
    stringHelper2 = arg2.key
    rageUiCall4 = arg2.room
    arg3(textValue7, stringHelper2, rageUiCall4)
    arg3 = ForceRoomForGameViewport
    textValue7 = arg2.key
    stringHelper2 = arg2.room
    arg3(textValue7, stringHelper2)
  end
  arg3 = DoScreenFadeIn
  textValue7 = 3000
  arg3(textValue7)
  while true do
    arg3 = IsScreenFadingIn
    arg3 = arg3()
    if not arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    textValue7 = 0
    arg3(textValue7)
  end
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  while true do
    textValue7 = IsVehicleStopped
    stringHelper2 = textValue15
    textValue7 = textValue7(stringHelper2)
    if textValue7 then
      break
    end
    textValue7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue7 = textValue7()
    textValue7 = textValue7 - arg3
    stringHelper2 = 15000
    if textValue7 > stringHelper2 then
      break
    end
    textValue7 = Citizen
    textValue7 = textValue7.Wait
    stringHelper2 = 0
    textValue7(stringHelper2)
  end
  textValue7 = ClearPedTasks
  stringHelper2 = PlayerPedId
  stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue = stringHelper2()
  textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue)
  textValue7 = rageUiCall3.type
  if "automobile" == textValue7 then
    textValue7 = GetFinalRenderedCamCoord
    textValue7 = textValue7()
    stringHelper2 = SetCamCoord
    rageUiCall4 = rageUiCall6
    nameValue = textValue7.x
    textValue17 = textValue7.y
    textValue18 = textValue7.z
    stringHelper2(rageUiCall4, nameValue, textValue17, textValue18)
    stringHelper2 = GetGameplayCamRot
    rageUiCall4 = 2
    stringHelper2 = stringHelper2(rageUiCall4)
    rageUiCall4 = SetCamRot
    nameValue = rageUiCall6
    textValue17 = stringHelper2.x
    textValue18 = stringHelper2.y
    rageUiCall7 = stringHelper2.z
    rageUiCall = 2
    rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
    rageUiCall4 = RenderScriptCams
    nameValue = true
    textValue17 = true
    textValue18 = 0
    rageUiCall7 = false
    rageUiCall = false
    rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
    rageUiCall4 = RenderScriptCams
    nameValue = false
    textValue17 = true
    textValue18 = 1000
    rageUiCall7 = false
    rageUiCall = false
    rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
    rageUiCall4 = SetCamActive
    nameValue = rageUiCall6
    textValue17 = true
    rageUiCall4(nameValue, textValue17)
    rageUiCall4 = TogglePausedRenderphases
    nameValue = true
    rageUiCall4(nameValue)
    rageUiCall4 = SetCamActive
    nameValue = rageUiCall6
    textValue17 = false
    rageUiCall4(nameValue, textValue17)
  end
  textValue7 = FreezeEntityPosition
  stringHelper2 = textValue15
  rageUiCall4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = SetEntityCollision
  stringHelper2 = textValue15
  rageUiCall4 = false
  nameValue = false
  textValue7(stringHelper2, rageUiCall4, nameValue)
  textValue7 = SetPlayerControl
  stringHelper2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stringHelper2 = stringHelper2()
  rageUiCall4 = true
  nameValue = 0
  textValue7(stringHelper2, rageUiCall4, nameValue)
  textValue7 = RequestScriptAudioBank
  stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  rageUiCall4 = false
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = RequestScriptAudioBank
  stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  rageUiCall4 = false
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = RMenu
  stringHelper2 = textValue7
  textValue7 = textValue7.Get
  rageUiCall4 = "lscustoms"
  nameValue = "mainmenu"
  -- Beginner: result below is menu.
  textValue7 = textValue7(stringHelper2, rageUiCall4, nameValue)
  stringHelper2 = textValue7
  textValue7 = textValue7.SetSubtitle
  rageUiCall4 = rageUiCall3.name
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = workValue43
  stringHelper2 = cmgCall.category
  textValue7(stringHelper2)
  textValue7 = IsVehicleDamaged
  stringHelper2 = textValue15
  textValue7 = textValue7(stringHelper2)
  if textValue7 then
    textValue7 = RageUI
    textValue7 = textValue7.Visible
    stringHelper2 = RMenu
    rageUiCall4 = stringHelper2
    stringHelper2 = stringHelper2.Get
    nameValue = "lscustoms"
    textValue17 = "repair"
    -- Beginner: result below is menu.
    stringHelper2 = stringHelper2(rageUiCall4, nameValue, textValue17)
    rageUiCall4 = true
    textValue7(stringHelper2, rageUiCall4)
  else
    textValue7 = RageUI
    textValue7 = textValue7.Visible
    stringHelper2 = RMenu
    rageUiCall4 = stringHelper2
    stringHelper2 = stringHelper2.Get
    nameValue = "lscustoms"
    textValue17 = "mainmenu"
    -- Beginner: result below is menu.
    stringHelper2 = stringHelper2(rageUiCall4, nameValue, textValue17)
    rageUiCall4 = true
    textValue7(stringHelper2, rageUiCall4)
  end
  textValue7 = true
  flag3 = textValue7
end
function textValue9()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue
  arg1 = CMG
  arg1 = arg1.getVehicleIdFromModel
  arg2 = GetEntityModel
  arg3 = textValue15
  arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue = arg2(arg3)
  arg1 = arg1(arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
  textValue16 = arg1
  arg1 = DecorExistOn
  arg2 = textValue15
  arg3 = "0a6cf607ed"
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = DecorGetInt
    arg2 = textValue15
    arg3 = "0a6cf607ed"
    arg1 = arg1(arg2, arg3)
    rageUiCall5 = arg1
  else
    arg1 = 0
    rageUiCall5 = arg1
  end
  arg1 = textValue16
  if nil ~= arg1 then
    arg1 = rageUiCall5
    if 0 ~= arg1 then
      arg1 = rageUiCall3
      if arg1 then
        goto flow_label_51
      end
    end
  end
  arg1 = notify
  arg2 = "~r~Could not identify the vehicle you are in."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
  arg1 = rageUiCall3
  if arg1 then
    arg1 = TriggerServerEvent
    arg2 = "ae63f8542b"
    arg3 = rageUiCall3.index
    textValue7 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
    arg1(arg2, arg3, textValue7)
  end
  arg1 = nil
  rageUiCall3 = arg1
  arg1 = 0
  textValue15 = arg1
  arg1 = nil
  workValue3 = arg1
  arg1 = nil
  workValue5 = arg1
  return
  ::flow_label_51::
  arg1 = nil
  textValue8 = arg1
  arg1 = TriggerServerEvent
  arg2 = "233c2baede"
  arg3 = rageUiCall5
  arg1(arg2, arg3)
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg1 = arg1 + 15000
  while true do
    arg2 = textValue8
    if nil ~= arg2 then
      break
    end
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    if not (arg1 > arg2) then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = textValue8
  if nil == arg2 then
    arg2 = notify
    arg3 = "~r~Could not load vehicle customizations."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    arg2 = TriggerServerEvent
    arg3 = "ae63f8542b"
    textValue7 = rageUiCall3.index
    stringHelper2 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
    arg2(arg3, textValue7, stringHelper2)
    arg2 = nil
    rageUiCall3 = arg2
    arg2 = 0
    textValue15 = arg2
    arg2 = nil
    workValue3 = arg2
    arg2 = nil
    workValue5 = arg2
    return
  end
  arg2 = DisplayRadar
  arg3 = false
  arg2(arg3)
  arg2 = SetPlayerControl
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  textValue7 = false
  stringHelper2 = 0
  arg2(arg3, textValue7, stringHelper2)
  arg2 = TriggerServerEvent
  arg3 = "ae63f8542b"
  textValue7 = rageUiCall3.index
  stringHelper2 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
  arg2(arg3, textValue7, stringHelper2)
  arg2 = DoScreenFadeOut
  arg3 = 500
  arg2(arg3)
  while true do
    arg2 = IsScreenFadingOut
    arg2 = arg2()
    if not arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = rageUiCall3.inside
  arg3 = rageUiCall3.driveIn
  textValue7 = SetEntityCoordsNoOffset
  stringHelper2 = textValue15
  rageUiCall4 = arg2.position
  rageUiCall4 = rageUiCall4.x
  nameValue = arg2.position
  nameValue = nameValue.y
  textValue17 = arg2.position
  textValue17 = textValue17.z
  textValue18 = false
  rageUiCall7 = false
  rageUiCall = false
  -- Beginner: Move/teleport an entity to new coordinates.
  textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
  textValue7 = SetEntityHeading
  stringHelper2 = textValue15
  rageUiCall4 = arg2.heading
  if not rageUiCall4 then
    rageUiCall4 = arg3.heading
  end
  -- Beginner: Change the direction an entity is facing.
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = GetPedInVehicleSeat
  stringHelper2 = textValue15
  rageUiCall4 = -1
  textValue7 = textValue7(stringHelper2, rageUiCall4)
  stringHelper2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stringHelper2 = stringHelper2()
  if textValue7 ~= stringHelper2 then
    textValue7 = TaskWarpPedIntoVehicle
    stringHelper2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    stringHelper2 = stringHelper2()
    rageUiCall4 = textValue15
    nameValue = -1
    textValue7(stringHelper2, rageUiCall4, nameValue)
    textValue7 = Citizen
    textValue7 = textValue7.Wait
    stringHelper2 = 250
    textValue7(stringHelper2)
  end
  textValue7 = FadeOutLocalPlayer
  stringHelper2 = true
  textValue7(stringHelper2)
  textValue7 = SetVehicleOnGroundProperly
  stringHelper2 = textValue15
  textValue7(stringHelper2)
  textValue7 = SetVehicleLights
  stringHelper2 = textValue15
  rageUiCall4 = 2
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = SetVehicleInteriorlight
  stringHelper2 = textValue15
  rageUiCall4 = true
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = SetVehicleDoorsLocked
  stringHelper2 = textValue15
  rageUiCall4 = 4
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = SetPlayerInvincible
  stringHelper2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stringHelper2 = stringHelper2()
  rageUiCall4 = true
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = SetEntityInvincible
  stringHelper2 = textValue15
  rageUiCall4 = true
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = SetEntityCanBeDamaged
  stringHelper2 = textValue15
  rageUiCall4 = false
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = SetVehRadioStation
  stringHelper2 = textValue15
  rageUiCall4 = "OFF"
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = rageUiCall3.interior
  if textValue7 then
    stringHelper2 = ForceRoomForEntity
    rageUiCall4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    rageUiCall4 = rageUiCall4()
    nameValue = textValue7.key
    textValue17 = textValue7.room
    stringHelper2(rageUiCall4, nameValue, textValue17)
    stringHelper2 = ForceRoomForEntity
    rageUiCall4 = textValue15
    nameValue = textValue7.key
    textValue17 = textValue7.room
    stringHelper2(rageUiCall4, nameValue, textValue17)
    stringHelper2 = ForceRoomForGameViewport
    rageUiCall4 = textValue7.key
    nameValue = textValue7.room
    stringHelper2(rageUiCall4, nameValue)
  end
  stringHelper2 = rageUiCall3.type
  if "automobile" == stringHelper2 then
    stringHelper2 = rageUiCall3.camera
    rageUiCall4 = GetRenderingCam
    rageUiCall4 = rageUiCall4()
    textValue = rageUiCall4
    rageUiCall4 = CreateCam
    nameValue = "DEFAULT_SCRIPTED_CAMERA"
    textValue17 = true
    -- Beginner: result below is cameraHandle.
    rageUiCall4 = rageUiCall4(nameValue, textValue17)
    rageUiCall6 = rageUiCall4
    rageUiCall4 = SetCamCoord
    nameValue = rageUiCall6
    textValue17 = stringHelper2.position
    textValue17 = textValue17.x
    textValue18 = stringHelper2.position
    textValue18 = textValue18.y
    rageUiCall7 = stringHelper2.position
    rageUiCall7 = rageUiCall7.z
    rageUiCall7 = rageUiCall7 + 1.0
    rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7)
    rageUiCall4 = PointCamAtEntity
    nameValue = rageUiCall6
    textValue17 = textValue15
    textValue18 = 1
    rageUiCall7 = 1
    rageUiCall = 1
    workValue = true
    rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
    rageUiCall4 = SetCamActive
    nameValue = rageUiCall6
    textValue17 = true
    rageUiCall4(nameValue, textValue17)
    rageUiCall4 = RenderScriptCams
    nameValue = true
    textValue17 = false
    textValue18 = 0
    rageUiCall7 = false
    rageUiCall = false
    rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall)
  end
  if textValue7 then
    stringHelper2 = ForceRoomForEntity
    rageUiCall4 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    rageUiCall4 = rageUiCall4()
    nameValue = textValue7.key
    textValue17 = textValue7.room
    stringHelper2(rageUiCall4, nameValue, textValue17)
    stringHelper2 = ForceRoomForEntity
    rageUiCall4 = textValue15
    nameValue = textValue7.key
    textValue17 = textValue7.room
    stringHelper2(rageUiCall4, nameValue, textValue17)
    stringHelper2 = ForceRoomForGameViewport
    rageUiCall4 = textValue7.key
    nameValue = textValue7.room
    stringHelper2(rageUiCall4, nameValue)
  end
  stringHelper2 = DoScreenFadeIn
  rageUiCall4 = 800
  stringHelper2(rageUiCall4)
  while true do
    stringHelper2 = IsScreenFadingIn
    stringHelper2 = stringHelper2()
    if not stringHelper2 then
      break
    end
    stringHelper2 = Citizen
    stringHelper2 = stringHelper2.Wait
    rageUiCall4 = 0
    stringHelper2(rageUiCall4)
  end
  stringHelper2 = Citizen
  stringHelper2 = stringHelper2.Wait
  rageUiCall4 = 400
  stringHelper2(rageUiCall4)
  stringHelper2 = rageUiCall3.type
  if "automobile" == stringHelper2 then
    stringHelper2 = rageUiCall6
    if 0 ~= stringHelper2 then
      stringHelper2 = GetFinalRenderedCamCoord
      stringHelper2 = stringHelper2()
      rageUiCall4 = SetCamCoord
      nameValue = rageUiCall6
      textValue17 = stringHelper2.x
      textValue18 = stringHelper2.y
      rageUiCall7 = stringHelper2.z
      rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7)
      rageUiCall4 = GetGameplayCamRot
      nameValue = 2
      rageUiCall4 = rageUiCall4(nameValue)
      nameValue = SetCamRot
      textValue17 = rageUiCall6
      textValue18 = rageUiCall4.x
      rageUiCall7 = rageUiCall4.y
      rageUiCall = rageUiCall4.z
      workValue = 2
      nameValue(textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
      nameValue = RenderScriptCams
      textValue17 = true
      textValue18 = true
      rageUiCall7 = 0
      rageUiCall = false
      workValue = false
      nameValue(textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
      nameValue = RenderScriptCams
      textValue17 = false
      textValue18 = true
      rageUiCall7 = 1000
      rageUiCall = false
      workValue = false
      nameValue(textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
      nameValue = SetCamActive
      textValue17 = rageUiCall6
      textValue18 = true
      nameValue(textValue17, textValue18)
      nameValue = TogglePausedRenderphases
      textValue17 = true
      nameValue(textValue17)
      nameValue = SetCamActive
      textValue17 = rageUiCall6
      textValue18 = false
      nameValue(textValue17, textValue18)
    end
  end
  stringHelper2 = FreezeEntityPosition
  rageUiCall4 = textValue15
  nameValue = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stringHelper2(rageUiCall4, nameValue)
  stringHelper2 = SetEntityCollision
  rageUiCall4 = textValue15
  nameValue = false
  textValue17 = false
  stringHelper2(rageUiCall4, nameValue, textValue17)
  stringHelper2 = SetPlayerControl
  rageUiCall4 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  rageUiCall4 = rageUiCall4()
  nameValue = true
  textValue17 = 0
  stringHelper2(rageUiCall4, nameValue, textValue17)
  stringHelper2 = RequestScriptAudioBank
  rageUiCall4 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  nameValue = false
  stringHelper2(rageUiCall4, nameValue)
  stringHelper2 = RequestScriptAudioBank
  rageUiCall4 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  nameValue = false
  stringHelper2(rageUiCall4, nameValue)
  stringHelper2 = RMenu
  rageUiCall4 = stringHelper2
  stringHelper2 = stringHelper2.Get
  nameValue = "lscustoms"
  textValue17 = "mainmenu"
  -- Beginner: result below is menu.
  stringHelper2 = stringHelper2(rageUiCall4, nameValue, textValue17)
  rageUiCall4 = stringHelper2
  stringHelper2 = stringHelper2.SetSubtitle
  nameValue = rageUiCall3.name
  stringHelper2(rageUiCall4, nameValue)
  stringHelper2 = workValue43
  rageUiCall4 = cmgCall.category
  stringHelper2(rageUiCall4)
  stringHelper2 = IsVehicleDamaged
  rageUiCall4 = textValue15
  stringHelper2 = stringHelper2(rageUiCall4)
  if stringHelper2 then
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.Visible
    rageUiCall4 = RMenu
    nameValue = rageUiCall4
    rageUiCall4 = rageUiCall4.Get
    textValue17 = "lscustoms"
    textValue18 = "repair"
    -- Beginner: result below is menu.
    rageUiCall4 = rageUiCall4(nameValue, textValue17, textValue18)
    nameValue = true
    stringHelper2(rageUiCall4, nameValue)
  else
    stringHelper2 = RageUI
    stringHelper2 = stringHelper2.Visible
    rageUiCall4 = RMenu
    nameValue = rageUiCall4
    rageUiCall4 = rageUiCall4.Get
    textValue17 = "lscustoms"
    textValue18 = "mainmenu"
    -- Beginner: result below is menu.
    rageUiCall4 = rageUiCall4(nameValue, textValue17, textValue18)
    nameValue = true
    stringHelper2(rageUiCall4, nameValue)
  end
  stringHelper2 = true
  flag3 = stringHelper2
end
cmgCall3 = CMG
function workValue45(arg1, arg2, arg3)
  local textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall
  if arg1 and 0 ~= arg1 then
    textValue7 = DoesEntityExist
    stringHelper2 = arg1
    textValue7 = textValue7(stringHelper2)
    if textValue7 then
      goto flow_label_11
    end
  end
  return
  ::flow_label_11::
  textValue7 = CMG
  textValue7 = textValue7.isInsideLsCustoms
  textValue7 = textValue7()
  if textValue7 then
    return
  end
  if arg2 then
    textValue7 = arg2.x
    if textValue7 then
      textValue7 = arg2.y
      if textValue7 then
        textValue7 = arg2.z
        if textValue7 then
          workValue3 = arg2
          textValue7 = arg3 or textValue7
          if not arg3 then
            textValue7 = 0.0
          end
          workValue5 = textValue7
      end
    end
  end
  else
    textValue7 = nil
    workValue3 = textValue7
    textValue7 = nil
    workValue5 = textValue7
  end
  textValue7 = nil
  stringHelper2 = pairs
  rageUiCall4 = cmgCall.garages
  stringHelper2, rageUiCall4, nameValue, textValue17 = stringHelper2(rageUiCall4)
  for textValue18, rageUiCall7 in stringHelper2, rageUiCall4, nameValue, textValue17 do
    rageUiCall = rageUiCall7.remoteOnly
    if rageUiCall then
      textValue7 = rageUiCall7
      break
    end
  end
  if textValue7 then
    stringHelper2 = textValue7.index
    if stringHelper2 then
      goto flow_label_64
    end
  end
  stringHelper2 = notify
  rageUiCall4 = "~r~Remote LS Customs is not available."
  -- Beginner: Show a notification to the player.
  stringHelper2(rageUiCall4)
  stringHelper2 = nil
  workValue3 = stringHelper2
  stringHelper2 = nil
  workValue5 = stringHelper2
  return
  ::flow_label_64::
  stringHelper2 = GetEntityModel
  rageUiCall4 = arg1
  -- Beginner: result below is modelHash.
  stringHelper2 = stringHelper2(rageUiCall4)
  rageUiCall4 = IsThisModelACar
  nameValue = stringHelper2
  rageUiCall4 = rageUiCall4(nameValue)
  if not rageUiCall4 then
    rageUiCall4 = IsThisModelABike
    nameValue = stringHelper2
    rageUiCall4 = rageUiCall4(nameValue)
    if not rageUiCall4 then
      rageUiCall4 = notify
      nameValue = "~r~Remote LS Customs is only for cars and bikes."
      rageUiCall4(nameValue)
      rageUiCall4 = nil
      workValue3 = rageUiCall4
      rageUiCall4 = nil
      workValue5 = rageUiCall4
      return
    end
  end
  rageUiCall3 = textValue7
  textValue15 = arg1
  rageUiCall4 = Citizen
  rageUiCall4 = rageUiCall4.CreateThread
  nameValue = textValue9
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  rageUiCall4(nameValue)
end
cmgCall3.enterRemoteLsCustomsFromGarage = workValue45
function cmgCall3()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5
  arg1 = assert
  arg2 = rageUiCall3
  arg3 = "Unable to drive out of garage without a current garage assigned"
  arg1(arg2, arg3)
  arg1 = SetPlayerControl
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = false
  textValue7 = 0
  arg1(arg2, arg3, textValue7)
  arg1 = DoScreenFadeOut
  arg2 = 500
  arg1(arg2)
  while true do
    arg1 = IsScreenFadingOut
    arg1 = arg1()
    if not arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = tCMG
  arg1 = arg1.applyModsOnVehicle
  arg2 = textValue8
  arg3 = rageUiCall5
  textValue7 = textValue15
  arg1(arg2, arg3, textValue7)
  arg1 = rageUiCall3.remoteOnly
  if arg1 then
    arg1 = workValue3
    if arg1 then
      arg1 = workValue3
      arg2 = workValue5
      if not arg2 then
        arg2 = 0.0
      end
      arg3 = rageUiCall3.index
      textValue7 = nil
      workValue3 = textValue7
      textValue7 = nil
      workValue5 = textValue7
      textValue7 = FadeOutLocalPlayer
      stringHelper2 = false
      textValue7(stringHelper2)
      textValue7 = rageUiCall6
      if 0 ~= textValue7 then
        textValue7 = SetCamActive
        stringHelper2 = rageUiCall6
        rageUiCall4 = false
        textValue7(stringHelper2, rageUiCall4)
        textValue7 = RenderScriptCams
        stringHelper2 = false
        rageUiCall4 = false
        nameValue = 0
        textValue17 = false
        textValue18 = false
        textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18)
        textValue7 = DestroyCam
        stringHelper2 = rageUiCall6
        rageUiCall4 = false
        textValue7(stringHelper2, rageUiCall4)
        textValue7 = 0
        rageUiCall6 = textValue7
      end
      textValue7 = SetEntityCoords
      stringHelper2 = textValue15
      rageUiCall4 = arg1.x
      nameValue = arg1.y
      textValue17 = arg1.z
      textValue17 = textValue17 + 0.5
      textValue18 = false
      rageUiCall7 = false
      rageUiCall = false
      workValue = false
      -- Beginner: Move/teleport an entity to new coordinates.
      textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
      textValue7 = SetEntityHeading
      stringHelper2 = textValue15
      rageUiCall4 = arg2
      -- Beginner: Change the direction an entity is facing.
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = GetPedInVehicleSeat
      stringHelper2 = textValue15
      rageUiCall4 = -1
      textValue7 = textValue7(stringHelper2, rageUiCall4)
      stringHelper2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      stringHelper2 = stringHelper2()
      if textValue7 ~= stringHelper2 then
        textValue7 = TaskWarpPedIntoVehicle
        stringHelper2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        stringHelper2 = stringHelper2()
        rageUiCall4 = textValue15
        nameValue = -1
        textValue7(stringHelper2, rageUiCall4, nameValue)
        textValue7 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        textValue7 = textValue7()
        textValue7 = textValue7 + 2000
        while true do
          stringHelper2 = GetPedInVehicleSeat
          rageUiCall4 = textValue15
          nameValue = -1
          stringHelper2 = stringHelper2(rageUiCall4, nameValue)
          rageUiCall4 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          rageUiCall4 = rageUiCall4()
          if stringHelper2 == rageUiCall4 then
            break
          end
          stringHelper2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          stringHelper2 = stringHelper2()
          if not (textValue7 > stringHelper2) then
            break
          end
          stringHelper2 = Citizen
          stringHelper2 = stringHelper2.Wait
          rageUiCall4 = 0
          stringHelper2(rageUiCall4)
        end
      end
      textValue7 = SetEntityCollision
      stringHelper2 = textValue15
      rageUiCall4 = true
      nameValue = true
      textValue7(stringHelper2, rageUiCall4, nameValue)
      textValue7 = FreezeEntityPosition
      stringHelper2 = textValue15
      rageUiCall4 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = SetVehicleOnGroundProperly
      stringHelper2 = textValue15
      textValue7(stringHelper2)
      textValue7 = SetVehicleDoorsLocked
      stringHelper2 = textValue15
      rageUiCall4 = 0
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = SetPlayerInvincible
      stringHelper2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      stringHelper2 = stringHelper2()
      rageUiCall4 = false
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = SetVehicleLights
      stringHelper2 = textValue15
      rageUiCall4 = 0
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = NetworkLeaveTransition
      textValue7()
      textValue7 = ClearPedTasks
      stringHelper2 = PlayerPedId
      stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5 = stringHelper2()
      textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5)
      textValue7 = SetEntityInvincible
      stringHelper2 = textValue15
      rageUiCall4 = false
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = SetEntityCanBeDamaged
      stringHelper2 = textValue15
      rageUiCall4 = true
      textValue7(stringHelper2, rageUiCall4)
      textValue7 = CMG
      textValue7 = textValue7.setVehicleFixedPreservingFuel
      stringHelper2 = textValue15
      textValue7(stringHelper2)
      textValue7 = ReleaseNamedScriptAudioBank
      stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
      textValue7(stringHelper2)
      textValue7 = ReleaseNamedScriptAudioBank
      stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
      textValue7(stringHelper2)
      textValue7 = TriggerServerEvent
      stringHelper2 = "ae63f8542b"
      rageUiCall4 = arg3
      nameValue = false
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
      textValue7(stringHelper2, rageUiCall4, nameValue)
      textValue7 = nil
      rageUiCall3 = textValue7
      textValue7 = 0
      textValue15 = textValue7
      textValue7 = SetPlayerControl
      stringHelper2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      stringHelper2 = stringHelper2()
      rageUiCall4 = true
      nameValue = 0
      textValue7(stringHelper2, rageUiCall4, nameValue)
      textValue7 = DisplayRadar
      stringHelper2 = true
      textValue7(stringHelper2)
      textValue7 = DoScreenFadeIn
      stringHelper2 = 500
      textValue7(stringHelper2)
      while true do
        textValue7 = IsScreenFadingIn
        textValue7 = textValue7()
        if not textValue7 then
          break
        end
        textValue7 = Citizen
        textValue7 = textValue7.Wait
        stringHelper2 = 0
        textValue7(stringHelper2)
      end
      return
    end
  end
  arg1 = rageUiCall3.driveOut
  arg2 = SetEntityCoords
  arg3 = textValue15
  textValue7 = arg1.position
  textValue7 = textValue7.x
  stringHelper2 = arg1.position
  stringHelper2 = stringHelper2.y
  rageUiCall4 = arg1.position
  rageUiCall4 = rageUiCall4.z
  nameValue = false
  textValue17 = false
  textValue18 = false
  rageUiCall7 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7)
  arg2 = SetEntityHeading
  arg3 = textValue15
  textValue7 = arg1.heading
  -- Beginner: Change the direction an entity is facing.
  arg2(arg3, textValue7)
  arg2 = SetEntityCollision
  arg3 = textValue15
  textValue7 = true
  stringHelper2 = true
  arg2(arg3, textValue7, stringHelper2)
  arg2 = FreezeEntityPosition
  arg3 = textValue15
  textValue7 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, textValue7)
  arg2 = SetVehicleOnGroundProperly
  arg3 = textValue15
  arg2(arg3)
  arg2 = SetVehicleDoorsLocked
  arg3 = textValue15
  textValue7 = 0
  arg2(arg3, textValue7)
  arg2 = SetPlayerInvincible
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  textValue7 = false
  arg2(arg3, textValue7)
  arg2 = SetVehicleLights
  arg3 = textValue15
  textValue7 = 0
  arg2(arg3, textValue7)
  arg2 = NetworkLeaveTransition
  arg2()
  arg2 = rageUiCall3.type
  if "automobile" == arg2 then
    arg2 = rageUiCall3.teleportDontDriveOut
    if arg2 then
      arg2 = SetEntityCoords
      arg3 = textValue15
      textValue7 = rageUiCall3.outside
      textValue7 = textValue7.position
      textValue7 = textValue7.x
      stringHelper2 = rageUiCall3.outside
      stringHelper2 = stringHelper2.position
      stringHelper2 = stringHelper2.y
      rageUiCall4 = rageUiCall3.outside
      rageUiCall4 = rageUiCall4.position
      rageUiCall4 = rageUiCall4.z
      nameValue = false
      textValue17 = false
      textValue18 = false
      rageUiCall7 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7)
    else
      arg2 = SetCamActive
      arg3 = rageUiCall6
      textValue7 = false
      arg2(arg3, textValue7)
      arg2 = RenderScriptCams
      arg3 = false
      textValue7 = false
      stringHelper2 = 0
      rageUiCall4 = false
      nameValue = false
      arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue)
      arg2 = DestroyCam
      arg3 = rageUiCall6
      textValue7 = false
      arg2(arg3, textValue7)
      arg2 = 0
      rageUiCall6 = arg2
      arg2 = rageUiCall3.outside
      arg3 = TaskVehicleDriveToCoord
      textValue7 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      textValue7 = textValue7()
      stringHelper2 = textValue15
      rageUiCall4 = arg2.position
      rageUiCall4 = rageUiCall4.x
      nameValue = arg2.position
      nameValue = nameValue.y
      textValue17 = arg2.position
      textValue17 = textValue17.z
      textValue18 = 3.0
      rageUiCall7 = 0.1
      rageUiCall = GetEntityModel
      workValue = textValue15
      -- Beginner: result below is modelHash.
      rageUiCall = rageUiCall(workValue)
      workValue = 16777216
      workValue2 = 0.1
      flag5 = 1
      arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5)
    end
  end
  arg2 = rageUiCall3.interior
  if arg2 then
    arg3 = ForceRoomForEntity
    textValue7 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue7 = textValue7()
    stringHelper2 = arg2.key
    rageUiCall4 = arg2.room
    arg3(textValue7, stringHelper2, rageUiCall4)
    arg3 = ForceRoomForEntity
    textValue7 = textValue15
    stringHelper2 = arg2.key
    rageUiCall4 = arg2.room
    arg3(textValue7, stringHelper2, rageUiCall4)
    arg3 = ForceRoomForGameViewport
    textValue7 = arg2.key
    stringHelper2 = arg2.room
    arg3(textValue7, stringHelper2)
  end
  arg3 = DoScreenFadeIn
  textValue7 = 3000
  arg3(textValue7)
  while true do
    arg3 = IsScreenFadingIn
    arg3 = arg3()
    if not arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    textValue7 = 0
    arg3(textValue7)
  end
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  while true do
    textValue7 = IsVehicleStopped
    stringHelper2 = textValue15
    textValue7 = textValue7(stringHelper2)
    if textValue7 then
      break
    end
    textValue7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue7 = textValue7()
    textValue7 = textValue7 - arg3
    stringHelper2 = 15000
    if textValue7 > stringHelper2 then
      break
    end
    textValue7 = Citizen
    textValue7 = textValue7.Wait
    stringHelper2 = 0
    textValue7(stringHelper2)
  end
  textValue7 = ClearPedTasks
  stringHelper2 = PlayerPedId
  stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5 = stringHelper2()
  textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5)
  textValue7 = SetEntityInvincible
  stringHelper2 = textValue15
  rageUiCall4 = false
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = SetEntityCanBeDamaged
  stringHelper2 = textValue15
  rageUiCall4 = true
  textValue7(stringHelper2, rageUiCall4)
  textValue7 = CMG
  textValue7 = textValue7.setVehicleFixedPreservingFuel
  stringHelper2 = textValue15
  textValue7(stringHelper2)
  textValue7 = ReleaseNamedScriptAudioBank
  stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  textValue7(stringHelper2)
  textValue7 = ReleaseNamedScriptAudioBank
  stringHelper2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  textValue7(stringHelper2)
  textValue7 = TriggerServerEvent
  stringHelper2 = "ae63f8542b"
  rageUiCall4 = rageUiCall3.index
  nameValue = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ae63f8542b".
  textValue7(stringHelper2, rageUiCall4, nameValue)
  textValue7 = nil
  rageUiCall3 = textValue7
  textValue7 = 0
  textValue15 = textValue7
  textValue7 = SetPlayerControl
  stringHelper2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stringHelper2 = stringHelper2()
  rageUiCall4 = true
  nameValue = 0
  textValue7(stringHelper2, rageUiCall4, nameValue)
  textValue7 = DisplayRadar
  stringHelper2 = true
  textValue7(stringHelper2)
end
function workValue45(arg1)
  local arg2, arg3, textValue7
  arg2 = CMG
  arg2 = arg2.TriggerServerCallback
  arg3 = "4268e2656a"
  textValue7 = arg1.index
  arg2 = arg2(arg3, textValue7)
  arg1.isLocked = arg2
end
function workValue46(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  arg2, arg3 = arg2()
  if 0 ~= arg2 and arg3 then
    textValue7 = rageUiCall3
    if not textValue7 then
      goto flow_label_12
    end
  end
  return
  ::flow_label_12::
  textValue7 = tCMG
  textValue7 = textValue7.getVehicleInfos
  stringHelper2 = arg2
  textValue7 = textValue7(stringHelper2)
  stringHelper2 = GetEntityModel
  rageUiCall4 = arg2
  -- Beginner: result below is modelHash.
  stringHelper2 = stringHelper2(rageUiCall4)
  rageUiCall4 = arg1.isLocked
  if rageUiCall4 then
    rageUiCall4 = CMG
    rageUiCall4 = rageUiCall4.DrawText
    nameValue = 0.5
    textValue17 = 0.8
    textValue18 = "~r~Locked, please wait~w~"
    rageUiCall7 = 1.0
    rageUiCall = 4
    workValue = 0
    rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
  else
    rageUiCall4 = arg1.type
    if "plane" == rageUiCall4 then
      rageUiCall4 = IsThisModelAPlane
      nameValue = stringHelper2
      rageUiCall4 = rageUiCall4(nameValue)
      if not rageUiCall4 then
        rageUiCall4 = CMG
        rageUiCall4 = rageUiCall4.DrawText
        nameValue = 0.5
        textValue17 = 0.8
        textValue18 = "~r~You must be a in a plane to use this~w~"
        rageUiCall7 = 1.0
        rageUiCall = 4
        workValue = 0
        rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
    end
    else
      rageUiCall4 = arg1.type
      if "boat" == rageUiCall4 then
        rageUiCall4 = IsThisModelABoat
        nameValue = stringHelper2
        rageUiCall4 = rageUiCall4(nameValue)
        if not rageUiCall4 then
          rageUiCall4 = CMG
          rageUiCall4 = rageUiCall4.DrawText
          nameValue = 0.5
          textValue17 = 0.8
          textValue18 = "~r~You must be a in a boat to use this~w~"
          rageUiCall7 = 1.0
          rageUiCall = 4
          workValue = 0
          rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
      end
      else
        rageUiCall4 = CMG
        rageUiCall4 = rageUiCall4.getClientUserId
        -- Beginner: result below is userId.
        rageUiCall4 = rageUiCall4()
        if textValue7 ~= rageUiCall4 then
          rageUiCall4 = CMG
          rageUiCall4 = rageUiCall4.DrawText
          nameValue = 0.5
          textValue17 = 0.8
          textValue18 = "~r~Denied, you are not the vehicle owner~w~"
          rageUiCall7 = 1.0
          rageUiCall = 4
          workValue = 0
          rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
        else
          rageUiCall4 = CMG
          rageUiCall4 = rageUiCall4.DrawText
          nameValue = 0.5
          textValue17 = 0.8
          textValue18 = "Press ~b~ENTER~w~ to enter ~b~"
          rageUiCall7 = arg1.name
          rageUiCall = "~w~"
          textValue18 = textValue18 .. rageUiCall7 .. rageUiCall
          rageUiCall7 = 1.0
          rageUiCall = 4
          workValue = 0
          rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue)
          rageUiCall4 = IsControlJustPressed
          nameValue = 0
          textValue17 = 201
          rageUiCall4 = rageUiCall4(nameValue, textValue17)
          if rageUiCall4 then
            rageUiCall4 = CMG
            rageUiCall4 = rageUiCall4.TriggerServerCallback
            nameValue = "4268e2656a"
            textValue17 = arg1.index
            rageUiCall4 = rageUiCall4(nameValue, textValue17)
            arg1.isLocked = rageUiCall4
            rageUiCall4 = arg1.isLocked
            if not rageUiCall4 then
              rageUiCall3 = arg1
              textValue15 = arg2
              rageUiCall4 = Citizen
              rageUiCall4 = rageUiCall4.CreateThread
              nameValue = workValue44
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              rageUiCall4(nameValue)
            end
          end
        end
      end
    end
  end
end
function workValue47(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  textValue7 = arg3
  arg3 = arg3.Get
  stringHelper2 = "lscustoms"
  rageUiCall4 = arg1.menu
  arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18 = arg3(textValue7, stringHelper2, rageUiCall4)
  -- Beginner: result below is menuVisible.
  arg2 = arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18)
  if arg2 then
    arg2 = true
    return arg2
  end
  arg2 = arg1.type
  if "externalMenu" == arg2 then
    arg2 = RageUI
    arg2 = arg2.Visible
    arg3 = RMenu
    textValue7 = arg3
    arg3 = arg3.Get
    stringHelper2 = arg1.menuType
    rageUiCall4 = arg1.menuName
    arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18 = arg3(textValue7, stringHelper2, rageUiCall4)
    return arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18)
  else
    arg2 = arg1.type
    if "categoryList" == arg2 then
      arg2 = pairs
      arg3 = arg1.categories
      arg2, arg3, textValue7, stringHelper2 = arg2(arg3)
      for rageUiCall4, nameValue in arg2, arg3, textValue7, stringHelper2 do
        textValue17 = workValue47
        textValue18 = nameValue
        textValue17 = textValue17(textValue18)
        if textValue17 then
          textValue17 = true
          return textValue17
        end
      end
    end
  end
  arg2 = false
  return arg2
end
function workValue48()
  local arg1, arg2, arg3, textValue7, stringHelper2
  arg1 = rageUiCall3
  if arg1 then
    arg1 = SetLocalPlayerVisibleLocally
    arg2 = true
    arg1(arg2)
    arg1 = flag3
    if arg1 then
      arg1 = workValue47
      arg2 = cmgCall.category
      arg1 = arg1(arg2)
      if not arg1 then
        arg1 = RageUI
        arg1 = arg1.Visible
        arg2 = RMenu
        arg3 = arg2
        arg2 = arg2.Get
        textValue7 = "lscustoms"
        stringHelper2 = "repair"
        arg2, arg3, textValue7, stringHelper2 = arg2(arg3, textValue7, stringHelper2)
        -- Beginner: result below is menuVisible.
        arg1 = arg1(arg2, arg3, textValue7, stringHelper2)
        if not arg1 then
          arg1 = Citizen
          arg1 = arg1.CreateThread
          arg2 = cmgCall3
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          arg1(arg2)
          arg1 = false
          flag3 = arg1
        end
      end
    end
  end
end
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread
function textValue10()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue
  arg1 = pairs
  arg2 = cmgCall.garages
  arg1, arg2, arg3, textValue7 = arg1(arg2)
  for stringHelper2, rageUiCall4 in arg1, arg2, arg3, textValue7 do
    rageUiCall4.index = stringHelper2
    nameValue = rageUiCall4.remoteOnly
    if nameValue then
    else
      nameValue = rageUiCall4.type
      if "plane" == nameValue then
        nameValue = 3.0
        if nameValue then
          goto flow_label_17
        end
      end
      nameValue = 1.0
      ::flow_label_17::
      textValue17 = CMG
      textValue17 = textValue17.createArea
      textValue18 = "lscustoms_"
      rageUiCall7 = tostring
      rageUiCall = stringHelper2
      rageUiCall7 = rageUiCall7(rageUiCall)
      textValue18 = textValue18 .. rageUiCall7
      rageUiCall7 = rageUiCall4.driveIn
      rageUiCall7 = rageUiCall7.position
      rageUiCall = 5.0 * nameValue
      workValue = 6.0 * nameValue
      workValue2 = workValue45
      function flag5()
        local arg12, arg22
      end
      flag6 = workValue46
      numberValue = rageUiCall4
      -- Beginner: Create an interaction area around a world position.
      textValue17(textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue)
      textValue17 = rageUiCall4.hiddenOnMap
      if not textValue17 then
        textValue17 = tCMG
        textValue17 = textValue17.addBlip
        textValue18 = rageUiCall4.inside
        textValue18 = textValue18.position
        textValue18 = textValue18.x
        rageUiCall7 = rageUiCall4.inside
        rageUiCall7 = rageUiCall7.position
        rageUiCall7 = rageUiCall7.y
        rageUiCall = rageUiCall4.inside
        rageUiCall = rageUiCall.position
        rageUiCall = rageUiCall.z
        workValue = 72
        workValue2 = nil
        flag5 = "LS Customs"
        -- Beginner: Create a minimap blip.
        textValue17(textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5)
      end
    end
  end
  arg1 = CMG
  arg1 = arg1.createThreadOnTick
  arg2 = workValue48
  arg3 = "LSCustoms"
  -- Beginner: Run a helper every game frame while this script is active.
  arg1(arg2, arg3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue10)
eventRegistration = RegisterNetEvent
textValue10 = "b5a8ef81c1"
-- Beginner: this function handles network event "b5a8ef81c1".
function textValue11(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, textValue7, stringHelper2 = arg2(arg3)
  for rageUiCall4, nameValue in arg2, arg3, textValue7, stringHelper2 do
    textValue17 = cmgCall.garages
    textValue17 = textValue17[nameValue]
    textValue17.isLocked = true
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b5a8ef81c1".
eventRegistration(textValue10, textValue11)
eventRegistration = RegisterNetEvent
textValue10 = "08cf0d5d45"
-- Beginner: this function handles network event "08cf0d5d45".
function textValue11(arg1)
  local arg2
  textValue8 = arg1
end
eventRegistration(textValue10, textValue11)
eventRegistration = RegisterNetEvent
textValue10 = "6b3c48e86c"
-- Beginner: this function handles network event "6b3c48e86c".
function textValue11(arg1, arg2)
  local arg3
  arg3 = textValue8
  arg3[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6b3c48e86c".
eventRegistration(textValue10, textValue11)
eventRegistration = RegisterNetEvent
textValue10 = "d4574bdb4a"
-- Beginner: this function handles network event "d4574bdb4a".
function textValue11()
  local arg1, arg2, arg3, textValue7, stringHelper2
  arg1 = CMG
  arg1 = arg1.setVehicleFixedPreservingFuel
  arg2 = textValue15
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  textValue7 = "lscustoms"
  stringHelper2 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, textValue7, stringHelper2)
  arg3 = true
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d4574bdb4a".
eventRegistration(textValue10, textValue11)
eventRegistration = CMG
function textValue10()
  local arg1, arg2
  arg1 = rageUiCall3
  arg1 = nil ~= arg1
  return arg1
end
eventRegistration.isInsideLsCustoms = textValue10
function eventRegistration(arg1)
  local arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall
  arg2 = "Not Set"
  arg3 = DecorGetInt
  textValue7 = arg1
  stringHelper2 = "6939027d97"
  arg3 = arg3(textValue7, stringHelper2)
  if arg3 and 0 ~= arg3 then
    textValue7 = pairs
    stringHelper2 = cmgCall.customExhausts
    textValue7, stringHelper2, rageUiCall4, nameValue = textValue7(stringHelper2)
    for textValue17, textValue18 in textValue7, stringHelper2, rageUiCall4, nameValue do
      rageUiCall7 = GetHashKey
      rageUiCall = textValue18.soundId
      -- Beginner: result below is hash.
      rageUiCall7 = rageUiCall7(rageUiCall)
      if rageUiCall7 == arg3 then
        arg2 = textValue18.name
        break
      end
    end
  end
  textValue7 = DecorGetBool
  stringHelper2 = arg1
  rageUiCall4 = "9d5712766f"
  textValue7 = textValue7(stringHelper2, rageUiCall4)
  if textValue7 then
    textValue7 = "Yes"
    if textValue7 then
      goto flow_label_34
    end
  end
  textValue7 = "No"
  ::flow_label_34::
  stringHelper2 = json
  stringHelper2 = stringHelper2.encode
  rageUiCall4 = Entity
  nameValue = arg1
  rageUiCall4 = rageUiCall4(nameValue)
  rageUiCall4 = rageUiCall4.state
  rageUiCall4 = rageUiCall4.biometricUsers
  if not rageUiCall4 then
    rageUiCall4 = {}
  end
  stringHelper2 = stringHelper2(rageUiCall4)
  rageUiCall4 = string
  rageUiCall4 = rageUiCall4.format
  nameValue = [[
Audio Override: %s
Biometric Lock: %s
Biometric Users: %s]]
  textValue17 = arg2
  textValue18 = textValue7
  rageUiCall7 = stringHelper2
  return rageUiCall4(nameValue, textValue17, textValue18, rageUiCall7)
end
textValue10 = CMG
textValue10 = textValue10.registerDevMenuEntityEditor
textValue11 = "LS Customs"
cmgCall4 = "vehicle"
textValue12 = eventRegistration
function cmgCall5()
  local arg1, arg2
end
textValue10(textValue11, cmgCall4, textValue12, cmgCall5)
textValue10 = {}
textValue10[0] = "cfg.sportsWheels"
textValue10[1] = "cfg.muscleWheels"
textValue10[2] = "cfg.lowriderWheels"
textValue10[3] = "cfg.suvWheels"
textValue10[4] = "cfg.offroadWheels"
textValue10[5] = "cfg.tunerWheels"
textValue10[6] = "cfg.bikeWheels"
textValue10[7] = "cfg.highendWheels"
textValue10[8] = "cfg.bennysOneWheels"
textValue10[9] = "cfg.beenysTwoWheels"
textValue10[10] = "cfg.openWheels"
textValue10[11] = "cfg.streetWheels"
textValue10[12] = "cfg.trackWheels"
function textValue11()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue, flag7, numberValue2, stringHelper, textValue4, workValue12, workValue14, workValue16
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = -1216765807
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.spawnVehicle
  arg3 = -1216765807
  textValue7 = arg1.x
  stringHelper2 = arg1.y
  rageUiCall4 = arg1.z
  nameValue = 0.0
  textValue17 = false
  textValue18 = false
  rageUiCall7 = false
  arg2 = arg2(arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7)
  arg3 = SetVehicleModKit
  textValue7 = arg2
  stringHelper2 = 0
  arg3(textValue7, stringHelper2)
  arg3 = ""
  textValue7 = pairs
  stringHelper2 = textValue10
  textValue7, stringHelper2, rageUiCall4, nameValue = textValue7(stringHelper2)
  for textValue17, textValue18 in textValue7, stringHelper2, rageUiCall4, nameValue do
    rageUiCall7 = arg3
    rageUiCall = string
    rageUiCall = rageUiCall.format
    workValue = [[
%s = {
	{name = "Stock", type = %s, index = -1, price = 0},
]]
    workValue2 = textValue18
    flag5 = textValue17
    rageUiCall = rageUiCall(workValue, workValue2, flag5)
    rageUiCall7 = rageUiCall7 .. rageUiCall
    arg3 = rageUiCall7
    rageUiCall7 = SetVehicleWheelType
    rageUiCall = arg2
    workValue = textValue17
    rageUiCall7(rageUiCall, workValue)
    rageUiCall7 = GetNumVehicleMods
    rageUiCall = arg2
    workValue = 23
    rageUiCall7 = rageUiCall7(rageUiCall, workValue)
    rageUiCall = 0
    workValue = -1
    workValue2 = rageUiCall7
    flag5 = 1
    for flag6 = workValue, workValue2, flag5 do
      numberValue = GetModTextLabel
      flag7 = arg2
      numberValue2 = 23
      stringHelper = flag6
      numberValue = numberValue(flag7, numberValue2, stringHelper)
      if numberValue then
        flag7 = GetLabelText
        numberValue2 = numberValue
        flag7 = flag7(numberValue2)
        if "NULL" ~= flag7 then
          numberValue2 = arg3
          stringHelper = string
          stringHelper = stringHelper.format
          textValue4 = "\t{name = \"%s\", type = %s, index = %s, price = 50000},\n"
          workValue12 = flag7
          workValue14 = textValue17
          workValue16 = flag6
          stringHelper = stringHelper(textValue4, workValue12, workValue14, workValue16)
          numberValue2 = numberValue2 .. stringHelper
          arg3 = numberValue2
        else
          rageUiCall = rageUiCall + 1
        end
      else
        rageUiCall = rageUiCall + 1
      end
    end
    if rageUiCall > 0 then
      workValue = print
      workValue2 = "^3Warning: %s wheels are missing from wheel type %s due to missing/invalid labels."
      flag5 = rageUiCall
      flag6 = textValue17
      workValue(workValue2, flag5, flag6)
    end
    workValue = arg3
    workValue2 = [[
}

]]
    workValue = workValue .. workValue2
    arg3 = workValue
  end
  textValue7 = DeleteEntity
  stringHelper2 = arg2
  -- Beginner: Delete a GTA entity.
  textValue7(stringHelper2)
  textValue7 = SetModelAsNoLongerNeeded
  stringHelper2 = -1216765807
  textValue7(stringHelper2)
  textValue7 = CMG
  textValue7 = textValue7.copyToClipboard
  stringHelper2 = arg3
  textValue7(stringHelper2)
  textValue7 = notify
  stringHelper2 = source
  rageUiCall4 = "~g~Wheels config copied to clipboard!"
  -- Beginner: Show a notification to the player.
  textValue7(stringHelper2, rageUiCall4)
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.registerDevMenuItems
textValue12 = "LS Customs"
function cmgCall5()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Copy Wheels Config"
  arg3 = "Copies the wheels config to the clipboard."
  textValue7 = true
  function stringHelper2(arg12, arg22, arg32)
    local arg4
    if arg32 then
      arg4 = textValue11
      arg4()
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, textValue7, stringHelper2)
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  arg2 = RageUI
  arg2 = arg2.Button
  arg3 = "Set Wheel Type"
  textValue7 = string
  textValue7 = textValue7.format
  stringHelper2 = "Sets the wheel type for the current vehicle. Currently: %s"
  rageUiCall4 = GetVehicleWheelType
  nameValue = arg1
  rageUiCall4, nameValue, textValue17, textValue18 = rageUiCall4(nameValue)
  textValue7 = textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18)
  stringHelper2 = true
  function rageUiCall4(arg12, arg22, arg32)
    local arg4, flag8, flag10, workValue49
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      flag8 = "Wheel Type"
      flag10 = ""
      function workValue49(arg13)
        local arg23, arg33, numberValue4, flag9
        arg23 = tonumber
        arg33 = arg13
        arg23 = arg23(arg33)
        if arg23 then
          arg33 = SetVehicleWheelType
          numberValue4 = arg1
          flag9 = arg23
          arg33(numberValue4, flag9)
        end
      end
      arg4(flag8, flag10, workValue49)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg2(arg3, textValue7, stringHelper2, rageUiCall4)
  arg2 = RageUI
  arg2 = arg2.Button
  arg3 = "Set Wheel Index"
  textValue7 = string
  textValue7 = textValue7.format
  stringHelper2 = "Sets the wheel index for the current vehicle. Currently: %s"
  rageUiCall4 = GetVehicleMod
  nameValue = arg1
  textValue17 = 23
  rageUiCall4, nameValue, textValue17, textValue18 = rageUiCall4(nameValue, textValue17)
  textValue7 = textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18)
  stringHelper2 = true
  function rageUiCall4(arg12, arg22, arg32)
    local arg4, flag8, flag10, workValue49
    if arg32 then
      arg4 = CMG
      arg4 = arg4.clientPrompt
      flag8 = "Wheel Index"
      flag10 = ""
      function workValue49(arg13)
        local arg23, arg33, numberValue4, flag9, flag11, numberValue5
        arg23 = tonumber
        arg33 = arg13
        arg23 = arg23(arg33)
        if arg23 then
          arg33 = CMG
          arg33 = arg33.setVehicleMod
          numberValue4 = arg1
          flag9 = 23
          flag11 = arg23
          numberValue5 = false
          arg33(numberValue4, flag9, flag11, numberValue5)
        end
      end
      arg4(flag8, flag10, workValue49)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg2(arg3, textValue7, stringHelper2, rageUiCall4)
  arg2 = GetVehicleTyresCanBurst
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = RageUI
  arg3 = arg3.Checkbox
  textValue7 = "Tyres Can Burst"
  stringHelper2 = "Whether the vehicle you are currently in can burst its tyres."
  rageUiCall4 = arg2
  nameValue = {}
  function textValue17(arg12, arg22, arg32, arg4)
    local flag8, flag10, workValue49
    flag8 = arg2
    if flag8 ~= arg4 then
      flag8 = SetVehicleTyresCanBurst
      flag10 = arg1
      workValue49 = arg4
      flag8(flag10, workValue49)
    end
  end
  -- Beginner: Draw a RageUI checkbox.
  arg3(textValue7, stringHelper2, rageUiCall4, nameValue, textValue17)
  arg3 = DecorGetBool
  textValue7 = arg1
  stringHelper2 = "bb6df5797c"
  arg3 = arg3(textValue7, stringHelper2)
  textValue7 = RageUI
  textValue7 = textValue7.Checkbox
  stringHelper2 = "Has Bulletproof Decor"
  rageUiCall4 = "Whether the vehicle you are currently has the bulletproof decor."
  nameValue = arg3
  textValue17 = {}
  function textValue18(arg12, arg22, arg32, arg4)
    local flag8, flag10, workValue49, workValue50
    flag8 = arg3
    if flag8 ~= arg4 then
      flag8 = DecorSetBool
      flag10 = arg1
      workValue49 = "bb6df5797c"
      workValue50 = arg4
      flag8(flag10, workValue49, workValue50)
    end
  end
  -- Beginner: Draw a RageUI checkbox.
  textValue7(stringHelper2, rageUiCall4, nameValue, textValue17, textValue18)
end
cmgCall4(textValue12, cmgCall5)
cmgCall4 = {}
textValue12 = 0
cmgCall5 = 1
textValue13 = 4
textValue14 = 5
cmgCall4[1] = textValue12
cmgCall4[2] = cmgCall5
cmgCall4[3] = textValue13
cmgCall4[4] = textValue14
function textValue12()
  local arg1, arg2, arg3, textValue7, stringHelper2, rageUiCall4, nameValue, textValue17, textValue18, rageUiCall7, rageUiCall, workValue, workValue2, flag5, flag6, numberValue
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 ~= arg1 and arg2 then
    arg3 = DecorGetBool
    textValue7 = arg1
    stringHelper2 = "bb6df5797c"
    arg3 = arg3(textValue7, stringHelper2)
    if arg3 then
      goto flow_label_15
    end
  end
  return
  ::flow_label_15::
  arg3 = pairs
  textValue7 = cmgCall4
  arg3, textValue7, stringHelper2, rageUiCall4 = arg3(textValue7)
  for nameValue, textValue17 in arg3, textValue7, stringHelper2, rageUiCall4 do
    textValue18 = GetTyreHealth
    rageUiCall7 = arg1
    rageUiCall = textValue17
    textValue18 = textValue18(rageUiCall7, rageUiCall)
    rageUiCall7 = 1000.0
    if textValue18 < rageUiCall7 then
      rageUiCall7 = DecorGetInt
      rageUiCall = arg1
      workValue = "b36fb0e830"
      rageUiCall7 = rageUiCall7(rageUiCall, workValue)
      rageUiCall = nameValue - 1
      rageUiCall = rageUiCall * 8
      workValue = rageUiCall7 >> rageUiCall
      workValue = workValue & 255
      if workValue < 10 then
        workValue2 = SetTyreHealth
        flag5 = arg1
        flag6 = textValue17
        numberValue = 1000.0
        workValue2(flag5, flag6, numberValue)
        workValue2 = SetVehicleTyreFixed
        flag5 = arg1
        flag6 = textValue17
        workValue2(flag5, flag6)
        workValue = workValue + 1
        workValue2 = 255
        workValue2 = workValue2 << rageUiCall
        workValue2 = ~workValue2
        rageUiCall7 = rageUiCall7 & workValue2
        workValue2 = workValue << rageUiCall
        rageUiCall7 = rageUiCall7 | workValue2
        workValue2 = DecorSetInt
        flag5 = arg1
        flag6 = "b36fb0e830"
        numberValue = rageUiCall7
        workValue2(flag5, flag6, numberValue)
      end
    end
  end
end
cmgCall5 = CMG
cmgCall5 = cmgCall5.createThreadOnTick
textValue13 = textValue12
textValue14 = "Bullet Resistant Wheels"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall5(textValue13, textValue14)
cmgCall5 = DecorRegister
textValue13 = "bb6df5797c"
textValue14 = 2
cmgCall5(textValue13, textValue14)
cmgCall5 = DecorRegister
textValue13 = "b36fb0e830"
textValue14 = 3
cmgCall5(textValue13, textValue14)