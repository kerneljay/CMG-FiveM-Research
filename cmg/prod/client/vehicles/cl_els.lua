--[[
    LEVEL 1 BEGINNER GUIDE — Els
    =================================

    File: cmg/prod/client/vehicles/cl_els.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Els feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 91
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
local workValue, dataTable3, dataTable4, dataTable5, numberValue16, numberValue17, vector3Builder, numberValue18, dataTable6, dataTable7, dataTable, numberValue2, dataTable2, workValue4, workValue6, threadCall, eventRegistration, cmgCall, workValue7, workValue8, workValue9, workValue11, workValue13, workValue15, workValue17, workValue19, eventRegistration2, cmgCall2, textValue3, textValue4, workValue24, workValue25
workValue = require
dataTable3 = "glm"
workValue = workValue(dataTable3)
dataTable3 = {}
dataTable4 = {}
dataTable5 = {}
numberValue16 = 0
numberValue17 = 0
vector3Builder = vector3
numberValue18 = 0.0
dataTable6 = 0.0
dataTable7 = 0.0
vector3Builder = vector3Builder(numberValue18, dataTable6, dataTable7)
numberValue18 = 0
dataTable6 = {}
dataTable7 = {}
dataTable = {}
numberValue2 = 0
dataTable2 = {}

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, arg4, flag3
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = numberValue2
  arg3 = arg2 - arg3
  arg4 = 2500
  if arg3 > arg4 then
    arg3 = print
    arg4 = "[CMG ELS] "
    flag3 = arg1
    arg4 = arg4 .. flag3
    arg3(arg4)
    numberValue2 = arg2
  end
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2
  arg2 = false
  arg3 = arg1.accurateLights
  if arg3 then
    arg3 = pairs
    arg4 = arg1.config
    arg4 = arg4.extras
    arg3, arg4, flag3, flag4 = arg3(arg4)
    for flag5 in arg3, arg4, flag3, flag4 do
      workValue31 = SetVehicleExtra
      workValue32 = arg1.entity
      workValue34 = flag5
      flag = true
      workValue31(workValue32, workValue34, flag)
    end
  end
  arg3 = pairs
  arg4 = arg1.pattern
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = workValue31.enabled
    if workValue32 then
      arg2 = true
      workValue32 = workValue31.stages
      workValue34 = workValue31.current
      workValue32 = workValue32[workValue34]
      workValue34 = arg1.accurateLights
      if workValue34 then
        workValue34 = 1
        flag = workValue32.Extras
        flag = #flag
        numberValue3 = 1
        for textValue = workValue34, flag, numberValue3 do
          modelHash = SetVehicleExtra
          textValue2 = arg1.entity
          stringHelper = workValue32.Extras
          stringHelper = stringHelper[textValue]
          flag2 = false
          modelHash(textValue2, stringHelper, flag2)
        end
      end
      workValue34 = numberValue16
      flag = workValue31.updated
      workValue34 = workValue34 - flag
      flag = workValue32.Milliseconds
      if workValue34 > flag then
        workValue34 = workValue31.current
        workValue34 = workValue34 + 1
        workValue31.current = workValue34
        workValue34 = workValue31.current
        flag = workValue31.stages
        flag = #flag
        if workValue34 > flag then
          workValue31.current = 1
        end
        workValue34 = workValue31.stages
        flag = workValue31.current
        workValue34 = workValue34[flag]
        flag = dataTable3.MoveToPattern
        numberValue3 = arg1.entity
        textValue = workValue32
        modelHash = workValue34
        flag(numberValue3, textValue, modelHash)
        workValue32 = workValue34
        flag = numberValue16
        workValue31.updated = flag
      end
      workValue34 = arg1.config
      workValue34 = workValue34.version
      if 1 == workValue34 then
        workValue34 = dataTable3.DrawGlobalLighting
        flag = arg1
        numberValue3 = workValue32
        workValue34(flag, numberValue3)
      else
        workValue34 = dataTable3.DrawDirectionalLighting
        flag = arg1
        numberValue3 = workValue32
        workValue34(flag, numberValue3)
      end
    end
  end
  if arg2 then
    arg3 = SetVehicleEngineOn
    arg4 = arg1.entity
    flag3 = true
    flag4 = true
    flag5 = false
    arg3(arg4, flag3, flag4, flag5)
  end
end
dataTable3.CheckPatterns = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2, arg3) ===
function workValue6(arg1, arg2, arg3)
  local arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag
  arg4 = 1
  flag3 = arg2.Extras
  flag3 = #flag3
  flag4 = 1
  for flag5 = arg4, flag3, flag4 do
    workValue31 = SetVehicleExtra
    workValue32 = arg1
    workValue34 = arg2.Extras
    workValue34 = workValue34[flag5]
    flag = true
    workValue31(workValue32, workValue34, flag)
  end
  arg4 = 1
  flag3 = arg3.Extras
  flag3 = #flag3
  flag4 = 1
  for flag5 = arg4, flag3, flag4 do
    workValue31 = SetVehicleExtra
    workValue32 = arg1
    workValue34 = arg3.Extras
    workValue34 = workValue34[flag5]
    flag = false
    workValue31(workValue32, workValue34, flag)
  end
end
dataTable3.MoveToPattern = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7
  arg3 = ipairs
  arg4 = arg2.Extras
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = arg1.config
    workValue32 = workValue32.extras
    workValue32 = workValue32[workValue31]
    if not workValue32 then
      workValue34 = workValue4
      flag = "Entity "
      numberValue3 = tostring
      textValue = arg1.entity
      numberValue3 = numberValue3(textValue)
      textValue = " with model "
      modelHash = GetEntityModel
      textValue2 = arg1.entity
      -- Beginner: result below is modelHash.
      modelHash = modelHash(textValue2)
      textValue2 = " has a NULL config for extra "
      stringHelper = tostring
      flag2 = workValue31
      stringHelper = stringHelper(flag2)
      flag = flag .. numberValue3 .. textValue .. modelHash .. textValue2 .. stringHelper
      workValue34(flag)
      break
    end
    workValue34 = GetOffsetFromEntityInWorldCoords
    flag = arg1.entity
    numberValue3 = workValue32.offset
    numberValue3 = numberValue3.x
    textValue = workValue32.offset
    textValue = textValue.y
    modelHash = workValue32.offset
    modelHash = modelHash.z
    workValue34 = workValue34(flag, numberValue3, textValue, modelHash)
    flag = workValue32.colour
    if "red" == flag then
      flag = DrawLightWithRangeAndShadow
      numberValue3 = workValue34.x
      textValue = workValue34.y
      modelHash = workValue34.z
      textValue2 = 255
      stringHelper = 0
      flag2 = 0
      numberValue5 = 50.0
      numberValue6 = 0.26
      numberValue7 = 1.0
      flag(numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7)
    else
      flag = workValue32.colour
      if "blue" == flag then
        flag = DrawLightWithRangeAndShadow
        numberValue3 = workValue34.x
        textValue = workValue34.y
        modelHash = workValue34.z
        textValue2 = 0
        stringHelper = 15
        flag2 = 255
        numberValue5 = 50.0
        numberValue6 = 0.26
        numberValue7 = 1.0
        flag(numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7)
      else
        flag = workValue32.colour
        if "green" == flag then
          flag = DrawLightWithRangeAndShadow
          numberValue3 = workValue34.x
          textValue = workValue34.y
          modelHash = workValue34.z
          textValue2 = 0
          stringHelper = 255
          flag2 = 0
          numberValue5 = 50.0
          numberValue6 = 0.26
          numberValue7 = 1.0
          flag(numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7)
        else
          flag = workValue32.colour
          if "amber" == flag then
            flag = DrawLightWithRangeAndShadow
            numberValue3 = workValue34.x
            textValue = workValue34.y
            modelHash = workValue34.z
            textValue2 = 255
            stringHelper = 194
            flag2 = 0
            numberValue5 = 50.0
            numberValue6 = 0.26
            numberValue7 = 1.0
            flag(numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7)
          else
            flag = workValue32.colour
            if "white" == flag then
              flag = DrawLightWithRangeAndShadow
              numberValue3 = workValue34.x
              textValue = workValue34.y
              modelHash = workValue34.z
              textValue2 = 255
              stringHelper = 255
              flag2 = 255
              numberValue5 = 50.0
              numberValue6 = 0.26
              numberValue7 = 1.0
              flag(numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7)
            end
          end
        end
      end
    end
  end
end
dataTable3.DrawGlobalLighting = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10, workValue12, workValue14, workValue16, workValue18, workValue20, workValue21, workValue22, workValue23, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15
  arg3 = GetEntityMatrix
  arg4 = arg1.entity
  arg3, arg4, flag3, flag4 = arg3(arg4)
  flag5 = mat3x3
  workValue31 = arg3
  workValue32 = arg4
  workValue34 = flag3
  flag5 = flag5(workValue31, workValue32, workValue34)
  workValue31 = ipairs
  workValue32 = arg2.Extras
  workValue31, workValue32, workValue34, flag = workValue31(workValue32)
  for numberValue3, textValue in workValue31, workValue32, workValue34, flag do
    modelHash = arg1.config
    modelHash = modelHash.extras
    modelHash = modelHash[textValue]
    textValue2 = ipairs
    stringHelper = modelHash
    textValue2, stringHelper, flag2, numberValue5 = textValue2(stringHelper)
    for numberValue6, numberValue7 in textValue2, stringHelper, flag2, numberValue5 do
      workValue10 = numberValue7.offset
      workValue10 = workValue10.x
      workValue10 = arg4 * workValue10
      workValue10 = flag4 + workValue10
      workValue12 = numberValue7.offset
      workValue12 = workValue12.y
      workValue12 = arg3 * workValue12
      workValue10 = workValue10 + workValue12
      workValue12 = numberValue7.offset
      workValue12 = workValue12.z
      workValue12 = flag3 * workValue12
      workValue10 = workValue10 + workValue12
      workValue12 = workValue.rotate
      workValue14 = flag5
      workValue16 = numberValue7.direction
      workValue18 = flag3
      workValue12 = workValue12(workValue14, workValue16, workValue18)
      workValue12 = workValue12[1]
      workValue14 = numberValue7.colour
      if "red" == workValue14 then
        workValue14 = DrawSpotLight
        workValue16 = workValue10.x
        workValue18 = workValue10.y
        workValue20 = workValue10.z
        workValue21 = workValue12.x
        workValue22 = workValue12.y
        workValue23 = workValue12.z
        numberValue8 = 255
        numberValue9 = 0
        numberValue10 = 0
        numberValue11 = 60.0
        numberValue12 = 1.0
        numberValue13 = 0.0
        numberValue14 = 45.0
        numberValue15 = 100.0
        workValue14(workValue16, workValue18, workValue20, workValue21, workValue22, workValue23, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15)
      else
        workValue14 = numberValue7.colour
        if "blue" == workValue14 then
          workValue14 = DrawSpotLight
          workValue16 = workValue10.x
          workValue18 = workValue10.y
          workValue20 = workValue10.z
          workValue21 = workValue12.x
          workValue22 = workValue12.y
          workValue23 = workValue12.z
          numberValue8 = 0
          numberValue9 = 15
          numberValue10 = 255
          numberValue11 = 60.0
          numberValue12 = 1.0
          numberValue13 = 0.0
          numberValue14 = 45.0
          numberValue15 = 100.0
          workValue14(workValue16, workValue18, workValue20, workValue21, workValue22, workValue23, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15)
        else
          workValue14 = numberValue7.colour
          if "green" == workValue14 then
            workValue14 = DrawSpotLight
            workValue16 = workValue10.x
            workValue18 = workValue10.y
            workValue20 = workValue10.z
            workValue21 = workValue12.x
            workValue22 = workValue12.y
            workValue23 = workValue12.z
            numberValue8 = 0
            numberValue9 = 255
            numberValue10 = 0
            numberValue11 = 60.0
            numberValue12 = 1.0
            numberValue13 = 0.0
            numberValue14 = 45.0
            numberValue15 = 100.0
            workValue14(workValue16, workValue18, workValue20, workValue21, workValue22, workValue23, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15)
          else
            workValue14 = numberValue7.colour
            if "amber" == workValue14 then
              workValue14 = DrawSpotLight
              workValue16 = workValue10.x
              workValue18 = workValue10.y
              workValue20 = workValue10.z
              workValue21 = workValue12.x
              workValue22 = workValue12.y
              workValue23 = workValue12.z
              numberValue8 = 255
              numberValue9 = 194
              numberValue10 = 0
              numberValue11 = 60.0
              numberValue12 = 1.0
              numberValue13 = 0.0
              numberValue14 = 45.0
              numberValue15 = 100.0
              workValue14(workValue16, workValue18, workValue20, workValue21, workValue22, workValue23, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15)
            else
              workValue14 = numberValue7.colour
              if "white" == workValue14 then
                workValue14 = DrawSpotLight
                workValue16 = workValue10.x
                workValue18 = workValue10.y
                workValue20 = workValue10.z
                workValue21 = workValue12.x
                workValue22 = workValue12.y
                workValue23 = workValue12.z
                numberValue8 = 255
                numberValue9 = 255
                numberValue10 = 255
                numberValue11 = 60.0
                numberValue12 = 1.0
                numberValue13 = 0.0
                numberValue14 = 45.0
                numberValue15 = 100.0
                workValue14(workValue16, workValue18, workValue20, workValue21, workValue22, workValue23, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15)
              end
            end
          end
        end
      end
    end
  end
end
dataTable3.DrawDirectionalLighting = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4
  arg2 = arg1.stage
  if 0 == arg2 then
    arg2 = arg1.pattern
    arg3 = 303108068
    arg2 = arg2[arg3]
    arg2.enabled = false
    arg2 = dataTable3.OnPatternDisable
    arg3 = arg1
    arg4 = 303108068
    arg2(arg3, arg4)
    arg2 = arg1.pattern
    arg3 = -910931556
    arg2 = arg2[arg3]
    arg2.enabled = false
    arg2 = dataTable3.OnPatternDisable
    arg3 = arg1
    arg4 = -910931556
    arg2(arg3, arg4)
    arg2 = arg1.pattern
    arg3 = -383838148
    arg2 = arg2[arg3]
    arg2.enabled = false
    arg2 = dataTable3.OnPatternDisable
    arg3 = arg1
    arg4 = -383838148
    arg2(arg3, arg4)
    arg2 = arg1.siren
    arg2.tone = 0
    arg2 = dataTable3.OnSirenChange
    arg3 = arg1
    arg2(arg3)
    arg2 = SetVehicleSiren
    arg3 = arg1.entity
    arg4 = false
    arg2(arg3, arg4)
  else
    arg2 = arg1.stage
    if 1 == arg2 then
      arg2 = arg1.pattern
      arg3 = 303108068
      arg2 = arg2[arg3]
      arg2.enabled = true
      arg2 = SetVehicleSiren
      arg3 = arg1.entity
      arg4 = true
      arg2(arg3, arg4)
    end
  end
end
dataTable3.OnStageChange = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6
  arg3 = arg1.pattern
  arg3 = arg3[arg2]
  arg4 = arg3.enabled
  if not arg4 then
    arg4 = {}
    flag3 = pairs
    flag4 = arg3.stages
    flag3, flag4, flag5, workValue31 = flag3(flag4)
    for workValue32, workValue34 in flag3, flag4, flag5, workValue31 do
      flag = 1
      numberValue3 = workValue34.Extras
      numberValue3 = #numberValue3
      textValue = 1
      for modelHash = flag, numberValue3, textValue do
        textValue2 = workValue34.Extras
        textValue2 = textValue2[modelHash]
        stringHelper = arg4[textValue2]
        if not stringHelper then
          stringHelper = SetVehicleExtra
          flag2 = arg1.entity
          numberValue5 = textValue2
          numberValue6 = true
          stringHelper(flag2, numberValue5, numberValue6)
          arg4[textValue2] = true
        end
      end
    end
  end
end
dataTable3.OnPatternDisable = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32
  arg2 = arg1.entity
  if not arg2 then
    return
  end
  arg2 = arg1.bullhorn
  arg2 = arg2.enabled
  if arg2 then
    arg2 = arg1.bullhorn
    arg2 = arg2.handle
    if nil == arg2 then
      arg2 = arg1.config
      arg2 = arg2.sounds
      arg2 = arg2.mainHorn
      arg2 = arg2.audioString
      arg3 = arg1.bullhorn
      arg4 = GetSoundId
      -- Beginner: result below is soundHandle.
      arg4 = arg4()
      arg3.handle = arg4
      arg3 = IsCustomSound
      arg4 = arg2
      arg3 = arg3(arg4)
      if arg3 then
        arg3 = PlaySoundFromEntity
        arg4 = arg1.bullhorn
        arg4 = arg4.handle
        flag3 = arg2
        flag4 = arg1.entity
        flag5 = "DLC_XSIRENS_SOUNDSET"
        workValue31 = false
        workValue32 = 0
        arg3(arg4, flag3, flag4, flag5, workValue31, workValue32)
      else
        arg3 = PlaySoundFromEntity
        arg4 = arg1.bullhorn
        arg4 = arg4.handle
        flag3 = arg2
        flag4 = arg1.entity
        flag5 = nil
        workValue31 = false
        workValue32 = 0
        arg3(arg4, flag3, flag4, flag5, workValue31, workValue32)
      end
    end
  else
    arg2 = arg1.bullhorn
    arg2 = arg2.handle
    if nil ~= arg2 then
      arg2 = StopSound
      arg3 = arg1.bullhorn
      arg3 = arg3.handle
      arg2(arg3)
      arg2 = ReleaseSoundId
      arg3 = arg1.bullhorn
      arg3 = arg3.handle
      arg2(arg3)
      arg2 = arg1.bullhorn
      arg2.handle = nil
    end
  end
end
dataTable3.OnBullhornChange = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32
  arg2 = arg1.entity
  if not arg2 then
    return
  end
  arg2 = arg1.siren
  arg2 = arg2.tone
  if 0 ~= arg2 then
    arg2 = arg1.siren
    arg2 = arg2.selected
    arg3 = arg1.siren
    arg3 = arg3.tone
    if arg2 ~= arg3 then
      arg2 = arg1.siren
      arg2 = arg2.handle
      if nil ~= arg2 then
        arg2 = StopSound
        arg3 = arg1.siren
        arg3 = arg3.handle
        arg2(arg3)
        arg2 = ReleaseSoundId
        arg3 = arg1.siren
        arg3 = arg3.handle
        arg2(arg3)
      end
      arg2 = GetSirenNameFromIndex
      arg3 = arg1
      arg4 = arg1.siren
      arg4 = arg4.tone
      arg2 = arg2(arg3, arg4)
      arg3 = arg1.siren
      arg4 = GetSoundId
      -- Beginner: result below is soundHandle.
      arg4 = arg4()
      arg3.handle = arg4
      arg3 = IsCustomSound
      arg4 = arg2
      arg3 = arg3(arg4)
      if arg3 then
        arg3 = PlaySoundFromEntity
        arg4 = arg1.siren
        arg4 = arg4.handle
        flag3 = arg2
        flag4 = arg1.entity
        flag5 = "DLC_XSIRENS_SOUNDSET"
        workValue31 = false
        workValue32 = 0
        arg3(arg4, flag3, flag4, flag5, workValue31, workValue32)
      else
        arg3 = PlaySoundFromEntity
        arg4 = arg1.siren
        arg4 = arg4.handle
        flag3 = arg2
        flag4 = arg1.entity
        flag5 = nil
        workValue31 = false
        workValue32 = 0
        arg3(arg4, flag3, flag4, flag5, workValue31, workValue32)
      end
    end
  else
    arg2 = arg1.siren
    arg2 = arg2.handle
    if nil ~= arg2 then
      arg2 = StopSound
      arg3 = arg1.siren
      arg3 = arg3.handle
      arg2(arg3)
      arg2 = ReleaseSoundId
      arg3 = arg1.siren
      arg3 = arg3.handle
      arg2(arg3)
      arg2 = arg1.siren
      arg2.handle = nil
    end
  end
  arg2 = arg1.siren
  arg3 = arg1.siren
  arg3 = arg3.tone
  arg2.selected = arg3
end
dataTable3.OnSirenChange = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10, workValue12, workValue14, workValue16
  arg2 = {}
  arg3 = pairs
  arg4 = arg1.pattern
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = pairs
    workValue34 = workValue31.stages
    workValue32, workValue34, flag, numberValue3 = workValue32(workValue34)
    for textValue, modelHash in workValue32, workValue34, flag, numberValue3 do
      textValue2 = pairs
      stringHelper = modelHash.Extras
      textValue2, stringHelper, flag2, numberValue5 = textValue2(stringHelper)
      for numberValue6, numberValue7 in textValue2, stringHelper, flag2, numberValue5 do
        workValue10 = arg2[numberValue7]
        if not workValue10 then
          workValue10 = SetVehicleExtra
          workValue12 = arg1.entity
          workValue14 = numberValue7
          workValue16 = true
          workValue10(workValue12, workValue14, workValue16)
          arg2[numberValue7] = true
        end
      end
    end
  end
end
dataTable3.InitLights = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3
  if 1 == arg2 then
    arg3 = arg1.config
    arg3 = arg3.sounds
    arg3 = arg3.srnTone1
    arg3 = arg3.audioString
    return arg3
  elseif 2 == arg2 then
    arg3 = arg1.config
    arg3 = arg3.sounds
    arg3 = arg3.srnTone2
    arg3 = arg3.audioString
    return arg3
  elseif 3 == arg2 then
    arg3 = arg1.config
    arg3 = arg3.sounds
    arg3 = arg3.srnTone3
    arg3 = arg3.audioString
    return arg3
  elseif 4 == arg2 then
    arg3 = arg1.config
    arg3 = arg3.sounds
    arg3 = arg3.srnTone4
    arg3 = arg3.audioString
    return arg3
  end
  arg3 = nil
  return arg3
end
GetSirenNameFromIndex = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4
  arg2 = string
  arg2 = arg2.match
  arg3 = arg1
  arg4 = "siren_met"
  arg2 = arg2(arg3, arg4)
  if not arg2 then
    arg2 = IsAmbulanceSound
    arg3 = arg1
    arg2 = arg2(arg3)
  end
  return arg2
end
IsCustomSound = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, arg4
  arg2 = string
  arg2 = arg2.match
  arg3 = arg1
  arg4 = "siren_nhs"
  return arg2(arg3, arg4)
end
IsAmbulanceSound = workValue6

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  numberValue16 = arg1
  arg1 = ProcessCurrentVehicle
  arg1()
  arg1 = CheckVehicleStates
  arg1()
  arg1 = ProcessVehicleLights
  arg1()
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3
  arg1 = PerformInitialisation
  arg1()
  arg1 = CMG
  arg1 = arg1.createThreadOnTick
  arg2 = workValue6
  arg3 = "ELS"
  -- Beginner: Run a helper every game frame while this script is active.
  arg1(arg2, arg3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(eventRegistration)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10
  arg1 = GetCurrentResourceName
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.loadResourceFile
  arg3 = arg1
  arg4 = "cfg/els/config.json"
  arg2 = arg2(arg3, arg4)
  arg3 = json
  arg3 = arg3.decode
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  dataTable4 = arg3
  arg4 = {}
  dataTable4.Pattern = arg4
  arg4 = CMG
  arg4 = arg4.loadResourceFile
  flag3 = arg1
  flag4 = "cfg/els/primary.json"
  arg4 = arg4(flag3, flag4)
  flag3 = dataTable4.Pattern
  flag4 = 303108068
  flag5 = json
  flag5 = flag5.decode
  workValue31 = arg4
  flag5 = flag5(workValue31)
  flag3[flag4] = flag5
  flag3 = CMG
  flag3 = flag3.loadResourceFile
  flag4 = arg1
  flag5 = "cfg/els/secondary.json"
  flag3 = flag3(flag4, flag5)
  flag4 = dataTable4.Pattern
  flag5 = -910931556
  workValue31 = json
  workValue31 = workValue31.decode
  workValue32 = flag3
  workValue31 = workValue31(workValue32)
  flag4[flag5] = workValue31
  flag4 = CMG
  flag4 = flag4.loadResourceFile
  flag5 = arg1
  workValue31 = "cfg/els/warning.json"
  flag4 = flag4(flag5, workValue31)
  flag5 = dataTable4.Pattern
  workValue31 = -383838148
  workValue32 = json
  workValue32 = workValue32.decode
  workValue34 = flag4
  workValue32 = workValue32(workValue34)
  flag5[workValue31] = workValue32
  flag5 = CMG
  flag5 = flag5.loadResourceFile
  workValue31 = arg1
  workValue32 = "cfg/els/vcfs.json"
  flag5 = flag5(workValue31, workValue32)
  workValue31 = json
  workValue31 = workValue31.decode
  workValue32 = flag5
  workValue31 = workValue31(workValue32)
  if not workValue31 then
    return
  end
  workValue32 = ipairs
  workValue34 = workValue31
  workValue32, workValue34, flag, numberValue3 = workValue32(workValue34)
  for textValue, modelHash in workValue32, workValue34, flag, numberValue3 do
    textValue2 = CMG
    textValue2 = textValue2.loadResourceFile
    stringHelper = arg1
    flag2 = "cfg/els/vcf/"
    numberValue5 = modelHash
    numberValue6 = ".xml"
    flag2 = flag2 .. numberValue5 .. numberValue6
    textValue2 = textValue2(stringHelper, flag2)
    if textValue2 then
      stringHelper = GetHashKey
      flag2 = modelHash
      -- Beginner: result below is hash.
      stringHelper = stringHelper(flag2)
      flag2 = IsModelInCdimage
      numberValue5 = stringHelper
      flag2 = flag2(numberValue5)
      if flag2 then
        flag2 = pcall

        -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: none) ===
        function numberValue5()
          local arg12, arg22, arg32, workValue29, stringHelper2
          arg12 = GetVehicleFromXML
          arg22 = textValue2
          arg32 = modelHash
          arg12, arg22 = arg12(arg22, arg32)
          if arg12 then
            workValue29 = stringHelper
            arg32 = dataTable5
            arg32[workValue29] = arg12
          else
            arg32 = WriteLoadError
            workValue29 = modelHash
            stringHelper2 = arg22
            arg32(workValue29, stringHelper2)
          end
        end
        flag2, numberValue5 = flag2(numberValue5)
        if not flag2 then
          numberValue6 = WriteLoadError
          numberValue7 = modelHash
          workValue10 = numberValue5
          numberValue6(numberValue7, workValue10)
        end
      else
        flag2 = CMG
        flag2 = flag2.getVehicleIdFromModel
        numberValue5 = stringHelper
        flag2 = flag2(numberValue5)
        if not flag2 then
          flag2 = WriteLoadError
          numberValue5 = modelHash
          numberValue6 = "Vehicle model does not exist in the game or in garages config"
          flag2(numberValue5, numberValue6)
        end
      end
    else
      stringHelper = WriteLoadError
      flag2 = modelHash
      numberValue5 = "File does not exist"
      stringHelper(flag2, numberValue5)
    end
  end
  workValue32 = collectgarbage
  workValue34 = "collect"
  workValue32(workValue34)
  workValue32 = RequestScriptAudioBank
  workValue34 = "DLC_XSIRENS\\XSIRENS_ONE"
  flag = false
  workValue32(workValue34, flag)
  workValue32 = DecorRegister
  workValue34 = "c102c26beb"
  flag = 2
  workValue32(workValue34, flag)
end
PerformInitialisation = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  local arg3
  arg3 = dataTable2
  arg3[arg1] = arg2
end
WriteLoadError = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, flag3, flag4, flag5
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  numberValue17 = arg1
  arg1 = GetEntityCoords
  arg2 = numberValue17
  arg3 = true
  -- Beginner: result below is entityCoords.
  arg1 = arg1(arg2, arg3)
  vector3Builder = arg1
  arg1 = GetVehiclePedIsIn
  arg2 = numberValue17
  arg3 = false
  -- Beginner: result below is currentVehicle.
  arg1 = arg1(arg2, arg3)
  numberValue18 = arg1
  arg1 = numberValue18
  if 0 == arg1 then
    return
  end
  arg1 = NetworkGetEntityIsNetworked
  arg2 = numberValue18
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg1 = GetPedInVehicleSeat
  arg2 = numberValue18
  arg3 = -1
  arg1 = arg1(arg2, arg3)
  arg2 = numberValue17
  arg1 = arg1 == arg2
  arg2 = ProcessCivilianVehicle
  arg3 = arg1
  arg2(arg3)
  arg2 = GetEntityModel
  arg3 = numberValue18
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = dataTable5
  if arg3 then
    arg3 = dataTable5
    arg3 = arg3[arg2]
    if arg3 then
      goto flow_label_47
    end
  end
  return
  ::flow_label_47::
  if arg1 then
    arg3 = IsEntityInWater
    arg4 = numberValue18
    arg3 = arg3(arg4)
    if arg3 then
      arg3 = IsThisModelABoat
      arg4 = arg2
      arg3 = arg3(arg4)
      if not arg3 then
        arg3 = DisableCurrentVehicle
        arg3()
        return
    end
    else
      arg3 = DecorGetBool
      arg4 = numberValue18
      flag3 = "c102c26beb"
      arg3 = arg3(arg4, flag3)
      if not arg3 then
        arg3 = GetSavedVehicleStateUsingEntity
        arg4 = numberValue18
        arg3 = arg3(arg4)
        if arg3 then
          arg4 = dataTable3.InitLights
          flag3 = arg3
          arg4(flag3)
          arg4 = DecorSetBool
          flag3 = numberValue18
          flag4 = "c102c26beb"
          flag5 = true
          arg4(flag3, flag4, flag5)
        end
      end
    end
  else
    arg3 = GetPedInVehicleSeat
    arg4 = numberValue18
    flag3 = 0
    arg3 = arg3(arg4, flag3)
    arg4 = numberValue17
    if arg3 ~= arg4 then
      return
    end
  end
  arg3 = DisableControlAction
  arg4 = 0
  flag3 = 81
  flag4 = true
  arg3(arg4, flag3, flag4)
  arg3 = DisableControlAction
  arg4 = 0
  flag3 = 82
  flag4 = true
  arg3(arg4, flag3, flag4)
  arg3 = DisableControlAction
  arg4 = 0
  flag3 = 83
  flag4 = true
  arg3(arg4, flag3, flag4)
  arg3 = DisableControlAction
  arg4 = 0
  flag3 = 84
  flag4 = true
  arg3(arg4, flag3, flag4)
  arg3 = DisableControlAction
  arg4 = 0
  flag3 = 85
  flag4 = true
  arg3(arg4, flag3, flag4)
  arg3 = SetVehRadioStation
  arg4 = numberValue18
  flag3 = "OFF"
  arg3(arg4, flag3)
  arg3 = SetVehicleRadioEnabled
  arg4 = numberValue18
  flag3 = false
  arg3(arg4, flag3)
  arg3 = SetVehicleHasMutedSirens
  arg4 = numberValue18
  flag3 = true
  arg3(arg4, flag3)
  arg3 = GetLastInputMethod
  arg4 = 0
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.StageChange
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Bullhorn
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneOne
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneTwo
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneThree
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Pattern
    flag3 = flag3.Primary
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Pattern
    flag3 = flag3.Secondary
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Pattern
    flag3 = flag3.Warning
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.StageChange
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeyStageChange
      arg3()
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Bullhorn
    arg3 = arg3(arg4, flag3)
    if arg3 and arg1 then
      arg3 = OnKeyBullhorn
      arg4 = true
      arg3(arg4)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Bullhorn
    arg3 = arg3(arg4, flag3)
    if arg3 and arg1 then
      arg3 = OnKeyBullhorn
      arg4 = false
      arg3(arg4)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneOne
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 1
      flag3 = true
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneOne
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 0
      flag3 = false
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneTwo
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 2
      flag3 = true
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneTwo
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 0
      flag3 = false
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneThree
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 3
      flag3 = true
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneThree
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 0
      flag3 = false
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneFour
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 4
      flag3 = true
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Siren
    flag3 = flag3.ToneFour
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 0
      flag3 = false
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Pattern
    flag3 = flag3.Primary
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeyPattern
      arg4 = 303108068
      arg3(arg4)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Pattern
    flag3 = flag3.Secondary
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeyPattern
      arg4 = -910931556
      arg3(arg4)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Keyboard
    flag3 = flag3.Pattern
    flag3 = flag3.Warning
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeyPattern
      arg4 = -383838148
      arg3(arg4)
    end
  else
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.StageChange
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Bullhorn
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneOne
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneTwo
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = DisableControlAction
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneThree
    flag4 = true
    arg3(arg4, flag3, flag4)
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.StageChange
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeyStageChange
      arg3()
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Bullhorn
    arg3 = arg3(arg4, flag3)
    if arg3 and arg1 then
      arg3 = OnKeyBullhorn
      arg4 = true
      arg3(arg4)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Bullhorn
    arg3 = arg3(arg4, flag3)
    if arg3 and arg1 then
      arg3 = OnKeyBullhorn
      arg4 = false
      arg3(arg4)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneOne
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 1
      flag3 = true
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneOne
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 0
      flag3 = false
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneTwo
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 2
      flag3 = true
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneTwo
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 0
      flag3 = false
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustPressed
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneThree
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 3
      flag3 = true
      arg3(arg4, flag3)
    end
    arg3 = IsDisabledControlJustReleased
    arg4 = 0
    flag3 = dataTable4.Controller
    flag3 = flag3.Siren
    flag3 = flag3.ToneThree
    arg3 = arg3(arg4, flag3)
    if arg3 then
      arg3 = OnKeySiren
      arg4 = 0
      flag3 = false
      arg3(arg4, flag3)
    end
  end
end
ProcessCurrentVehicle = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1) ===
function threadCall(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5
  arg2 = GetLastInputMethod
  arg3 = 0
  arg2 = arg2(arg3)
  if not arg2 or not arg1 then
    return
  end
  arg2 = IsControlJustPressed
  arg3 = 0
  arg4 = dataTable4.Keyboard
  arg4 = arg4.IndicatorLeft
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = GetVehicleIndicatorLights
    arg3 = numberValue18
    arg2 = arg2(arg3)
    arg3 = 1 ~= arg2
    arg4 = TriggerServerEvent
    flag3 = "CMGELS:indicatorChange"
    flag4 = 1
    flag5 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:indicatorChange".
    arg4(flag3, flag4, flag5)
  end
  arg2 = IsControlJustPressed
  arg3 = 0
  arg4 = dataTable4.Keyboard
  arg4 = arg4.IndicatorRight
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = GetVehicleIndicatorLights
    arg3 = numberValue18
    arg2 = arg2(arg3)
    arg3 = 2 ~= arg2
    arg4 = TriggerServerEvent
    flag3 = "CMGELS:indicatorChange"
    flag4 = 2
    flag5 = arg3
    arg4(flag3, flag4, flag5)
  end
end
ProcessCivilianVehicle = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32
  arg1 = pairs
  arg2 = dataTable7
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for flag3 in arg1, arg2, arg3, arg4 do
    flag4 = dataTable6
    flag4 = flag4[flag3]
    flag5 = GetEntityCoords
    workValue31 = flag4.entity
    workValue32 = true
    -- Beginner: result below is entityCoords.
    flag5 = flag5(workValue31, workValue32)
    workValue31 = vector3Builder
    flag5 = flag5 - workValue31
    flag5 = #flag5
    if flag5 < 50.0 then
      flag4.accurateLights = true
    else
      flag4.accurateLights = false
    end
    flag5 = SetVehicleAutoRepairDisabled
    workValue31 = flag4.entity
    workValue32 = true
    flag5(workValue31, workValue32)
    flag5 = SetVehicleHasMutedSirens
    workValue31 = flag4.entity
    workValue32 = true
    flag5(workValue31, workValue32)
    flag5 = dataTable3.CheckPatterns
    workValue31 = flag4
    flag5(workValue31)
  end
end
ProcessVehicleLights = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, flag3, flag4
  arg1 = GetSavedVehicleStateUsingEntity
  arg2 = numberValue18
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg2 = arg1.stage
  arg2 = arg2 + 1
  arg1.stage = arg2
  arg2 = arg1.stage
  if 3 == arg2 then
    arg1.stage = 0
  end
  arg2 = dataTable3.OnStageChange
  arg3 = arg1
  arg2(arg3)
  arg2 = PlaySoundFrontend
  arg3 = -1
  arg4 = "NAV_UP_DOWN"
  flag3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  flag4 = true
  arg2(arg3, arg4, flag3, flag4)
  arg2 = TriggerServerEvent
  arg3 = "CMGELS:changeStage"
  arg4 = arg1.stage
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:changeStage".
  arg2(arg3, arg4)
  arg2 = arg1.stage
  if 1 == arg2 then
    arg2 = IsAmbulanceSound
    arg3 = arg1.config
    arg3 = arg3.sounds
    arg3 = arg3.srnTone1
    arg3 = arg3.audioString
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = Citizen
      arg2 = arg2.CreateThreadNow
      arg3 = PlayNineNineModeSound
      arg2(arg3)
    end
  end
end
OnKeyStageChange = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1) ===
function threadCall(arg1)
  local arg2, arg3, arg4, flag3
  arg2 = GetSavedVehicleStateUsingEntity
  arg3 = numberValue18
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = arg2.config
  arg3 = arg3.sounds
  arg3 = arg3.mainHorn
  if arg3 then
    arg3 = arg2.config
    arg3 = arg3.sounds
    arg3 = arg3.mainHorn
    arg3 = arg3.audioString
    if "" ~= arg3 then
      goto flow_label_19
    end
  end
  return
  ::flow_label_19::
  arg3 = arg2.bullhorn
  arg3 = arg3.enabled
  if arg3 == arg1 then
    return
  end
  arg3 = arg2.bullhorn
  arg3.enabled = arg1
  arg3 = dataTable3.OnBullhornChange
  arg4 = arg2
  arg3(arg4)
  arg3 = TriggerServerEvent
  arg4 = "CMGELS:toggleBullhorn"
  flag3 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:toggleBullhorn".
  arg3(arg4, flag3)
end
OnKeyBullhorn = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  local arg3, arg4, flag3, flag4
  arg3 = GetSavedVehicleStateUsingEntity
  arg4 = numberValue18
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg4 = arg3.stage
  if 0 == arg4 then
    return
  end
  arg4 = GetSirenNameFromIndex
  flag3 = arg3
  flag4 = arg1
  arg4 = arg4(flag3, flag4)
  if "UNUSED" == arg4 then
    return
  end
  if not arg2 then
    arg4 = arg3.stage
    if 2 ~= arg4 then
      return
    end
  end
  arg4 = arg3.siren
  arg4 = arg4.tone
  if arg4 == arg1 then
    arg1 = 0
  end
  arg4 = arg3.siren
  arg4.tone = arg1
  arg4 = dataTable3.OnSirenChange
  flag3 = arg3
  arg4(flag3)
  arg4 = TriggerServerEvent
  flag3 = "CMGELS:toggleSiren"
  flag4 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:toggleSiren".
  arg4(flag3, flag4)
  arg4 = arg3.siren
  arg4 = arg4.tone
  if 0 ~= arg4 then
    arg4 = Citizen
    arg4 = arg4.CreateThreadNow
    flag3 = PlaySirenSwitchSound
    arg4(flag3)
  end
end
OnKeySiren = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1) ===
function threadCall(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31
  arg2 = GetSavedVehicleStateUsingEntity
  arg3 = numberValue18
  arg2 = arg2(arg3)
  if not arg2 then
    return
  end
  arg3 = arg2.pattern
  arg3 = arg3[arg1]
  arg4 = arg3.enabled
  arg4 = not arg4
  arg3.enabled = arg4
  arg4 = arg3.enabled
  if not arg4 then
    arg4 = dataTable3.OnPatternDisable
    flag3 = arg2
    flag4 = arg1
    arg4(flag3, flag4)
  end
  arg4 = PlaySoundFrontend
  flag3 = -1
  flag4 = "NAV_UP_DOWN"
  flag5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  workValue31 = true
  arg4(flag3, flag4, flag5, workValue31)
  arg4 = GetIndexFromPattern
  flag3 = arg1
  arg4 = arg4(flag3)
  flag3 = TriggerServerEvent
  flag4 = "CMGELS:patternChange"
  flag5 = arg4
  workValue31 = arg3.enabled
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:patternChange".
  flag3(flag4, flag5, workValue31)
end
OnKeyPattern = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4
  arg1 = GetSavedVehicleStateUsingEntity
  arg2 = numberValue18
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg2 = arg1.bullhorn
  arg2 = arg2.enabled
  if arg2 then
    arg2 = arg1.bullhorn
    arg2.enabled = false
    arg2 = dataTable3.OnBullhornChange
    arg3 = arg1
    arg2(arg3)
    arg2 = TriggerServerEvent
    arg3 = "CMGELS:toggleBullhorn"
    arg4 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:toggleBullhorn".
    arg2(arg3, arg4)
  end
  arg2 = arg1.siren
  arg2 = arg2.tone
  if 0 == arg2 then
    arg2 = arg1.stage
    if 0 == arg2 then
      goto flow_label_35
    end
  end
  arg1.stage = 0
  arg2 = dataTable3.OnStageChange
  arg3 = arg1
  arg2(arg3)
  arg2 = TriggerServerEvent
  arg3 = "CMGELS:changeStage"
  arg4 = 0
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:changeStage".
  arg2(arg3, arg4)
  ::flow_label_35::
end
DisableCurrentVehicle = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, flag3
  while true do
    arg1 = RequestScriptAudioBank
    arg2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
    arg3 = false
    arg1 = arg1(arg2, arg3)
    if arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "999sound"
  arg4 = "dlc_elsaudio_sounds"
  flag3 = false
  arg1(arg2, arg3, arg4, flag3)
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 1000
  arg1(arg2)
  arg1 = ReleaseNamedScriptAudioBank
  arg2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
  arg1(arg2)
end
PlayNineNineModeSound = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, flag3
  while true do
    arg1 = RequestScriptAudioBank
    arg2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
    arg3 = false
    arg1 = arg1(arg2, arg3)
    if arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "sirenswitch"
  arg4 = "dlc_elsaudio_sounds"
  flag3 = false
  arg1(arg2, arg3, arg4, flag3)
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 500
  arg1(arg2)
  arg1 = ReleaseNamedScriptAudioBank
  arg2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
  arg1(arg2)
end
PlaySirenSwitchSound = threadCall

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2) ===
function threadCall(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5
  arg3 = string
  arg3 = arg3.format
  arg4 = "els_%s"
  flag3 = arg1
  arg3 = arg3(arg4, flag3)
  arg4 = AddStateBagChangeHandler
  flag3 = arg3
  flag4 = nil

  -- === HELPER FUNCTION (decompiler name: flag5; parameters: arg12, arg22, arg32) ===
  function flag5(arg12, arg22, arg32)
    local workValue29, stringHelper2, workValue30, tableHelper, nameValue
    workValue29 = tonumber
    stringHelper2 = stringsplit
    workValue30 = arg12
    tableHelper = ":"
    stringHelper2 = stringHelper2(workValue30, tableHelper)
    stringHelper2 = stringHelper2[2]
    workValue29 = workValue29(stringHelper2)
    stringHelper2 = type
    workValue30 = arg32
    stringHelper2 = stringHelper2(workValue30)
    if "table" == stringHelper2 then
      stringHelper2 = arg2
      workValue30 = workValue29
      tableHelper = table
      tableHelper = tableHelper.unpack
      nameValue = arg32
      tableHelper, nameValue = tableHelper(nameValue)
      stringHelper2(workValue30, tableHelper, nameValue)
    else
      stringHelper2 = arg2
      workValue30 = workValue29
      tableHelper = arg32
      stringHelper2(workValue30, tableHelper)
    end
  end
  arg4(flag3, flag4, flag5)
end
eventRegistration = threadCall
cmgCall = "stage"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, flag3
  arg3 = dataTable5
  if not arg3 then
    return
  end
  arg3 = GetSavedVehicleState
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg3.stage = arg2
  arg4 = dataTable3.OnStageChange
  flag3 = arg3
  arg4(flag3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(cmgCall, workValue7)
eventRegistration = threadCall
cmgCall = "siren"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, flag3
  arg3 = Citizen
  arg3 = arg3.Wait
  arg4 = 0
  arg3(arg4)
  arg3 = dataTable5
  if not arg3 then
    return
  end
  arg3 = GetSavedVehicleState
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg4 = arg3.siren
  arg4.tone = arg2
  arg4 = dataTable3.OnSirenChange
  flag3 = arg3
  arg4(flag3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(cmgCall, workValue7)
eventRegistration = RegisterNetEvent
cmgCall = "CMGELS:toggleBullhorn"
-- Beginner: this function handles network event "CMGELS:toggleBullhorn".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, flag3, flag4
  arg3 = dataTable5
  if not arg3 then
    return
  end
  arg3 = GetSavedVehicleState
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg4 = arg3.entity
  if arg4 then
    arg4 = GetPedInVehicleSeat
    flag3 = arg3.entity
    flag4 = -1
    arg4 = arg4(flag3, flag4)
    flag3 = numberValue17
    if arg4 ~= flag3 then
      goto flow_label_22
    end
  end
  return
  ::flow_label_22::
  arg4 = arg3.bullhorn
  arg4.enabled = arg2
  arg4 = dataTable3.OnBullhornChange
  flag3 = arg3
  arg4(flag3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMGELS:toggleBullhorn".
eventRegistration(cmgCall, workValue7)
eventRegistration = threadCall
cmgCall = "primary"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, flag3
  arg3 = Citizen
  arg3 = arg3.Wait
  arg4 = 0
  arg3(arg4)
  arg3 = dataTable5
  if not arg3 then
    return
  end
  arg3 = GetSavedVehicleState
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg4 = GetPatternFromIndex
  flag3 = 1
  arg4 = arg4(flag3)
  flag3 = arg3.pattern
  flag3 = flag3[arg4]
  flag3.enabled = arg2
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(cmgCall, workValue7)
eventRegistration = threadCall
cmgCall = "secondary"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, flag3
  arg3 = Citizen
  arg3 = arg3.Wait
  arg4 = 0
  arg3(arg4)
  arg3 = dataTable5
  if not arg3 then
    return
  end
  arg3 = GetSavedVehicleState
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg4 = GetPatternFromIndex
  flag3 = 2
  arg4 = arg4(flag3)
  flag3 = arg3.pattern
  flag3 = flag3[arg4]
  flag3.enabled = arg2
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(cmgCall, workValue7)
eventRegistration = threadCall
cmgCall = "warning"

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, flag3
  arg3 = Citizen
  arg3 = arg3.Wait
  arg4 = 0
  arg3(arg4)
  arg3 = dataTable5
  if not arg3 then
    return
  end
  arg3 = GetSavedVehicleState
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg4 = GetPatternFromIndex
  flag3 = 3
  arg4 = arg4(flag3)
  flag3 = arg3.pattern
  flag3 = flag3[arg4]
  flag3.enabled = arg2
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(cmgCall, workValue7)
eventRegistration = RegisterNetEvent
cmgCall = "CMGELS:indicatorChange"
-- Beginner: this function handles network event "CMGELS:indicatorChange".

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2, arg3) ===
function workValue7(arg1, arg2, arg3)
  local arg4, flag3, flag4, flag5, workValue31
  arg4 = NetworkDoesNetworkIdExist
  flag3 = arg1
  arg4 = arg4(flag3)
  if not arg4 then
    return
  end
  arg4 = NetworkGetEntityFromNetworkId
  flag3 = arg1
  arg4 = arg4(flag3)
  if 0 == arg4 then
    return
  end
  if 1 == arg2 then
    flag3 = SetVehicleIndicatorLights
    flag4 = arg4
    flag5 = 0
    workValue31 = false
    flag3(flag4, flag5, workValue31)
    flag3 = SetVehicleIndicatorLights
    flag4 = arg4
    flag5 = 1
    workValue31 = arg3
    flag3(flag4, flag5, workValue31)
  elseif 2 == arg2 then
    flag3 = SetVehicleIndicatorLights
    flag4 = arg4
    flag5 = 0
    workValue31 = arg3
    flag3(flag4, flag5, workValue31)
    flag3 = SetVehicleIndicatorLights
    flag4 = arg4
    flag5 = 1
    workValue31 = false
    flag3(flag4, flag5, workValue31)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMGELS:indicatorChange".
eventRegistration(cmgCall, workValue7)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, arg4, flag3, flag4
  arg2 = dataTable6
  arg2 = arg2[arg1]
  if arg2 then
    return arg2
  end
  arg3 = {}
  arg2 = arg3
  arg2.stage = 0
  arg2.accurateLights = false
  arg3 = {}
  arg2.siren = arg3
  arg3 = arg2.siren
  arg3.tone = 0
  arg3 = {}
  arg2.bullhorn = arg3
  arg3 = arg2.bullhorn
  arg3.enabled = false
  arg3 = {}
  arg2.pattern = arg3
  arg3 = arg2.pattern
  arg4 = 303108068
  flag3 = {}
  arg3[arg4] = flag3
  arg3 = arg2.pattern
  arg4 = 303108068
  arg3 = arg3[arg4]
  arg3.enabled = false
  arg3 = arg2.pattern
  arg4 = 303108068
  arg3 = arg3[arg4]
  arg3.current = 1
  arg3 = arg2.pattern
  arg4 = 303108068
  arg3 = arg3[arg4]
  arg3.updated = 0
  arg3 = arg2.pattern
  arg4 = 303108068
  arg3 = arg3[arg4]
  arg4 = dataTable4.Pattern
  flag3 = 303108068
  arg4 = arg4[flag3]
  arg3.stages = arg4
  arg3 = arg2.pattern
  arg4 = -910931556
  flag3 = {}
  arg3[arg4] = flag3
  arg3 = arg2.pattern
  arg4 = -910931556
  arg3 = arg3[arg4]
  arg3.enabled = false
  arg3 = arg2.pattern
  arg4 = -910931556
  arg3 = arg3[arg4]
  arg3.current = 1
  arg3 = arg2.pattern
  arg4 = -910931556
  arg3 = arg3[arg4]
  arg3.updated = 0
  arg3 = arg2.pattern
  arg4 = -910931556
  arg3 = arg3[arg4]
  arg4 = dataTable4.Pattern
  flag3 = -910931556
  arg4 = arg4[flag3]
  arg3.stages = arg4
  arg3 = arg2.pattern
  arg4 = -383838148
  flag3 = {}
  arg3[arg4] = flag3
  arg3 = arg2.pattern
  arg4 = -383838148
  arg3 = arg3[arg4]
  arg3.enabled = false
  arg3 = arg2.pattern
  arg4 = -383838148
  arg3 = arg3[arg4]
  arg3.current = 1
  arg3 = arg2.pattern
  arg4 = -383838148
  arg3 = arg3[arg4]
  arg3.updated = 0
  arg3 = arg2.pattern
  arg4 = -383838148
  arg3 = arg3[arg4]
  arg4 = dataTable4.Pattern
  flag3 = -383838148
  arg4 = arg4[flag3]
  arg3.stages = arg4
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg2.createTime = arg3
  arg3 = NetworkDoesEntityExistWithNetworkId
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = NetworkGetEntityFromNetworkId
    arg4 = arg1
    arg3 = arg3(arg4)
    arg4 = LoadConfigurationIntoState
    flag3 = arg2
    flag4 = arg3
    arg4 = arg4(flag3, flag4)
    if not arg4 then
      arg4 = nil
      return arg4
    end
    arg2.entity = arg3
  end
  arg3 = dataTable6
  arg3[arg1] = arg2
  return arg2
end
GetSavedVehicleState = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, arg4
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 == arg2 then
    arg3 = nil
    return arg3
  end
  arg3 = GetSavedVehicleState
  arg4 = arg2
  return arg3(arg4)
end
GetSavedVehicleStateUsingEntity = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2
  arg2 = dataTable6
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = true
    return arg2
  else
    arg2 = false
    return arg2
  end
end
DoesVehicleStateExist = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, arg4
  arg2 = NetworkGetNetworkIdFromEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 == arg2 then
    arg3 = false
    return arg3
  end
  arg3 = DoesVehicleStateExist
  arg4 = arg2
  return arg3(arg4)
end
DoesVehicleStateExistUsingEntity = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32
  arg1 = pairs
  arg2 = dataTable7
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for flag3, flag4 in arg1, arg2, arg3, arg4 do
    flag5 = DoesEntityExist
    workValue31 = flag4
    flag5 = flag5(workValue31)
    if not flag5 then
      flag5 = VehicleLeftScope
      workValue31 = flag3
      workValue32 = dataTable6
      workValue32 = workValue32[flag3]
      flag5(workValue31, workValue32)
      flag5 = dataTable6
      flag5[flag3] = nil
    end
  end
  arg1 = pairs
  arg2 = dataTable6
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for flag3, flag4 in arg1, arg2, arg3, arg4 do
    flag5 = dataTable7
    flag5 = flag5[flag3]
    if not flag5 then
      flag5 = NetworkDoesEntityExistWithNetworkId
      workValue31 = flag3
      flag5 = flag5(workValue31)
      if flag5 then
        flag5 = VehicleEnteredScope
        workValue31 = flag3
        workValue32 = flag4
        flag5(workValue31, workValue32)
      else
        flag5 = flag4.createTime
        if flag5 then
          flag5 = numberValue16
          workValue31 = flag4.createTime
          flag5 = flag5 - workValue31
          workValue31 = 10000
          if flag5 > workValue31 then
            flag5 = dataTable6
            flag5[flag3] = nil
          end
        end
      end
    end
  end
end
CheckVehicleStates = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2) ===
function eventRegistration(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3
  arg3 = NetworkGetEntityFromNetworkId
  arg4 = arg1
  arg3 = arg3(arg4)
  if 0 == arg3 then
    return
  end
  arg4 = DoesEntityExist
  flag3 = arg3
  arg4 = arg4(flag3)
  if not arg4 then
    arg4 = workValue4
    flag3 = "Invalid entity "
    flag4 = tostring
    flag5 = arg3
    flag4 = flag4(flag5)
    flag5 = " returned from the network id"
    flag3 = flag3 .. flag4 .. flag5
    arg4(flag3)
    return
  end
  arg4 = arg2.config
  if not arg4 then
    arg4 = LoadConfigurationIntoState
    flag3 = arg2
    flag4 = arg3
    arg4 = arg4(flag3, flag4)
    if not arg4 then
      return
    end
  end
  arg4 = dataTable7
  arg4[arg1] = arg3
  arg2.entity = arg3
  arg4 = SetVehicleAutoRepairDisabled
  flag3 = arg3
  flag4 = true
  arg4(flag3, flag4)
  arg4 = SetVehicleHasMutedSirens
  flag3 = arg3
  flag4 = true
  arg4(flag3, flag4)
  arg4 = pairs
  flag3 = dataTable4.Pattern
  arg4, flag3, flag4, flag5 = arg4(flag3)
  for workValue31, workValue32 in arg4, flag3, flag4, flag5 do
    workValue34 = arg2.pattern
    workValue34 = workValue34[workValue31]
    workValue34 = workValue34.enabled
    if workValue34 then
      workValue34 = SetVehicleSiren
      flag = arg3
      numberValue3 = true
      workValue34(flag, numberValue3)
    end
  end
  arg4 = arg2.siren
  arg4 = arg4.tone
  if 0 ~= arg4 then
    arg4 = arg2.siren
    arg4 = arg4.handle
    if not arg4 then
      arg4 = dataTable3.OnSirenChange
      flag3 = arg2
      arg4(flag3)
    end
  end
end
VehicleEnteredScope = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2) ===
function eventRegistration(arg1, arg2)
  local arg3, arg4
  arg3 = dataTable7
  arg3[arg1] = nil
  arg3 = arg2.siren
  arg3 = arg3.tone
  if 0 ~= arg3 then
    arg3 = arg2.siren
    arg3 = arg3.handle
    if arg3 then
      arg3 = StopSound
      arg4 = arg2.siren
      arg4 = arg4.handle
      arg3(arg4)
      arg3 = ReleaseSoundId
      arg4 = arg2.siren
      arg4 = arg4.handle
      arg3(arg4)
      arg3 = arg2.siren
      arg3.handle = nil
      arg3 = arg2.siren
      arg3.selected = nil
    end
  end
  arg3 = arg2.bullhorn
  arg3 = arg3.enabled
  if arg3 then
    arg3 = arg2.bullhorn
    arg3 = arg3.handle
    if arg3 then
      arg3 = StopSound
      arg4 = arg2.bullhorn
      arg4 = arg4.handle
      arg3(arg4)
      arg3 = ReleaseSoundId
      arg4 = arg2.bullhorn
      arg4 = arg4.handle
      arg3(arg4)
      arg3 = arg2.bullhorn
      arg3.handle = nil
      arg3 = arg2.bullhorn
      arg3.enabled = false
    end
  end
  arg2.entity = nil
end
VehicleLeftScope = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2) ===
function eventRegistration(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34
  arg3 = GetEntityModel
  arg4 = arg2
  -- Beginner: result below is modelHash.
  arg3 = arg3(arg4)
  if 0 == arg3 then
    arg4 = workValue4
    flag3 = "Entity "
    flag4 = tostring
    flag5 = arg2
    flag4 = flag4(flag5)
    flag5 = " has a invalid model (0)"
    flag3 = flag3 .. flag4 .. flag5
    arg4(flag3)
    arg4 = false
    return arg4
  end
  arg4 = dataTable5
  arg4 = arg4[arg3]
  if not arg4 then
    flag3 = workValue4
    flag4 = "Entity "
    flag5 = tostring
    workValue31 = arg2
    flag5 = flag5(workValue31)
    workValue31 = " with model "
    workValue32 = tostring
    workValue34 = arg3
    workValue32 = workValue32(workValue34)
    workValue34 = " does not have an VCF defined."
    flag4 = flag4 .. flag5 .. workValue31 .. workValue32 .. workValue34
    flag3(flag4)
    flag3 = false
    return flag3
  end
  arg1.config = arg4
  flag3 = arg1.config
  flag3 = flag3.pattern
  flag4 = 303108068
  flag3 = flag3[flag4]
  if flag3 then
    flag4 = arg1.pattern
    flag5 = 303108068
    flag4 = flag4[flag5]
    flag4.stages = flag3
  end
  flag4 = arg1.config
  flag4 = flag4.pattern
  flag5 = -910931556
  flag4 = flag4[flag5]
  if flag4 then
    flag5 = arg1.pattern
    workValue31 = -910931556
    flag5 = flag5[workValue31]
    flag5.stages = flag4
  end
  flag5 = arg1.config
  flag5 = flag5.pattern
  workValue31 = -383838148
  flag5 = flag5[workValue31]
  if flag5 then
    workValue31 = arg1.pattern
    workValue32 = -383838148
    workValue31 = workValue31[workValue32]
    workValue31.stages = flag5
  end
  workValue31 = true
  return workValue31
end
LoadConfigurationIntoState = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2
  if 303108068 == arg1 then
    arg2 = 1
    return arg2
  elseif -910931556 == arg1 then
    arg2 = 2
    return arg2
  elseif -383838148 == arg1 then
    arg2 = 3
    return arg2
  end
end
GetIndexFromPattern = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2
  if 1 == arg1 then
    arg2 = 303108068
    return arg2
  elseif 2 == arg1 then
    arg2 = -910931556
    return arg2
  elseif 3 == arg1 then
    arg2 = -383838148
    return arg2
  end
end
GetPatternFromIndex = eventRegistration

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2
  if 303108068 == arg1 then
    arg2 = "PRIMARY"
    return arg2
  elseif -910931556 == arg1 then
    arg2 = "SECONDARY"
    return arg2
  elseif -383838148 == arg1 then
    arg2 = "WARNING"
    return arg2
  end
end
GetPatternNameFromPattern = eventRegistration
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1) ===
function cmgCall(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32
  arg2 = DoesVehicleStateExistUsingEntity
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = GetSavedVehicleStateUsingEntity
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      arg3 = pairs
      arg4 = arg2.pattern
      arg3, arg4, flag3, flag4 = arg3(arg4)
      for flag5, workValue31 in arg3, arg4, flag3, flag4 do
        workValue32 = workValue31.enabled
        if workValue32 then
          workValue32 = true
          return workValue32
        end
      end
    end
  end
  arg2 = false
  return arg2
end
eventRegistration.elsDoesVehicleHaveLightsEnabled = cmgCall
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1) ===
function cmgCall(arg1)
  local arg2, arg3
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = dataTable5
  arg3 = arg3[arg2]
  if arg3 then
    arg3 = true
    return arg3
  else
    arg3 = false
    return arg3
  end
end
eventRegistration.elsDoesVehicleHaveConfig = cmgCall

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2) ===
function eventRegistration(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash
  arg3 = ipairs
  arg4 = arg2.kids
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = string
    workValue32 = workValue32.upper
    workValue34 = string
    workValue34 = workValue34.sub
    flag = workValue31.name
    numberValue3 = 1
    textValue = -3
    workValue34, flag, numberValue3, textValue, modelHash = workValue34(flag, numberValue3, textValue)
    workValue32 = workValue32(workValue34, flag, numberValue3, textValue, modelHash)
    if "EXTRA" == workValue32 then
      workValue32 = workValue31.attr
      workValue32 = workValue32.AllowEnvLight
      if "true" == workValue32 then
        workValue32 = {}
        workValue34 = vector3
        flag = tonumber
        numberValue3 = workValue31.attr
        numberValue3 = numberValue3.OffsetX
        flag = flag(numberValue3)
        if not flag then
          flag = 0.0
        end
        numberValue3 = tonumber
        textValue = workValue31.attr
        textValue = textValue.OffsetY
        numberValue3 = numberValue3(textValue)
        if not numberValue3 then
          numberValue3 = 0.0
        end
        textValue = tonumber
        modelHash = workValue31.attr
        modelHash = modelHash.OffsetZ
        textValue = textValue(modelHash)
        if not textValue then
          textValue = 0.0
        end
        workValue34 = workValue34(flag, numberValue3, textValue)
        workValue32.offset = workValue34
        workValue34 = string
        workValue34 = workValue34.lower
        flag = workValue31.attr
        flag = flag.Color
        workValue34 = workValue34(flag)
        workValue32.colour = workValue34
        workValue34 = tonumber
        flag = string
        flag = flag.sub
        numberValue3 = workValue31.name
        textValue = -2
        flag, numberValue3, textValue, modelHash = flag(numberValue3, textValue)
        workValue34 = workValue34(flag, numberValue3, textValue, modelHash)
        if workValue34 then
          flag = arg1.extras
          flag[workValue34] = workValue32
        end
      end
    end
  end
  arg3 = arg1.version
  if arg3 then
    arg3 = error
    arg4 = "A VCF version has already been specified"
    arg3(arg4)
  else
    arg1.version = 1
  end
end

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1) ===
function cmgCall(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash
  arg2 = {}
  arg3 = ipairs
  arg4 = arg1.kids
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = workValue31.name
    if "Light" == workValue32 then
      workValue32 = {}
      workValue34 = vector3
      flag = tonumber
      numberValue3 = workValue31.attr
      numberValue3 = numberValue3.OffsetX
      flag = flag(numberValue3)
      if not flag then
        flag = 0.0
      end
      numberValue3 = tonumber
      textValue = workValue31.attr
      textValue = textValue.OffsetY
      numberValue3 = numberValue3(textValue)
      if not numberValue3 then
        numberValue3 = 0.0
      end
      textValue = tonumber
      modelHash = workValue31.attr
      modelHash = modelHash.OffsetZ
      textValue = textValue(modelHash)
      if not textValue then
        textValue = 0.0
      end
      workValue34 = workValue34(flag, numberValue3, textValue)
      workValue32.offset = workValue34
      workValue34 = workValue32.offset
      if not workValue34 then
        workValue34 = error
        flag = "Failed to get offset for extra light"
        workValue34(flag)
      end
      workValue34 = tonumber
      flag = workValue31.attr
      flag = flag.Direction
      workValue34 = workValue34(flag)
      workValue32.direction = workValue34
      workValue34 = workValue32.direction
      if not workValue34 then
        workValue34 = error
        flag = "Failed to get direction for extra light"
        workValue34(flag)
      else
        workValue34 = workValue.rad
        flag = workValue32.direction
        workValue34 = workValue34(flag)
        workValue32.direction = workValue34
      end
      workValue34 = workValue31.attr
      workValue34 = workValue34.Colour
      workValue32.colour = workValue34
      workValue34 = workValue32.colour
      if not workValue34 then
        workValue34 = error
        flag = "Failed to get colour for extra light"
        workValue34(flag)
      end
      workValue34 = table
      workValue34 = workValue34.insert
      flag = arg2
      numberValue3 = workValue32
      workValue34(flag, numberValue3)
    end
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3
  arg3 = ipairs
  arg4 = arg2.kids
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = workValue31.name
    if "Extra" == workValue32 then
      workValue32 = tonumber
      workValue34 = workValue31.attr
      workValue34 = workValue34.Number
      workValue32 = workValue32(workValue34)
      if workValue32 then
        workValue34 = arg1.extras
        flag = cmgCall
        numberValue3 = workValue31
        flag = flag(numberValue3)
        workValue34[workValue32] = flag
      end
    end
  end
  arg3 = arg1.version
  if arg3 then
    arg3 = error
    arg4 = "A VCF version has already been specified"
    arg3(arg4)
  else
    arg1.version = 2
  end
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2) ===
function workValue8(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag
  arg3 = ipairs
  arg4 = arg2.kids
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = workValue31.name
    if "MainHorn" == workValue32 then
      workValue32 = arg1.sounds
      workValue34 = {}
      flag = workValue31.attr
      flag = flag.AudioString
      workValue34.audioString = flag
      workValue32.mainHorn = workValue34
    else
      workValue32 = workValue31.name
      if "SrnTone1" == workValue32 then
        workValue32 = arg1.sounds
        workValue34 = {}
        flag = workValue31.attr
        flag = flag.AudioString
        workValue34.audioString = flag
        workValue32.srnTone1 = workValue34
      else
        workValue32 = workValue31.name
        if "SrnTone2" == workValue32 then
          workValue32 = arg1.sounds
          workValue34 = {}
          flag = workValue31.attr
          flag = flag.AudioString
          workValue34.audioString = flag
          workValue32.srnTone2 = workValue34
        else
          workValue32 = workValue31.name
          if "SrnTone3" == workValue32 then
            workValue32 = arg1.sounds
            workValue34 = {}
            flag = workValue31.attr
            flag = flag.AudioString
            workValue34.audioString = flag
            workValue32.srnTone3 = workValue34
          else
            workValue32 = workValue31.name
            if "SrnTone4" == workValue32 then
              workValue32 = arg1.sounds
              workValue34 = {}
              flag = workValue31.attr
              flag = flag.AudioString
              workValue34.audioString = flag
              workValue32.srnTone4 = workValue34
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2) ===
function workValue9(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag
  arg3 = {}
  arg4 = arg1
  flag3 = arg2
  arg4 = arg4 .. flag3
  flag3 = arg4
  arg4 = arg4.gmatch
  flag4 = "(.-)"
  flag5 = arg2
  flag4 = flag4 .. flag5
  arg4, flag3, flag4, flag5 = arg4(flag3, flag4)
  for workValue31 in arg4, flag3, flag4, flag5 do
    workValue32 = table
    workValue32 = workValue32.insert
    workValue34 = arg3
    flag = workValue31
    workValue32(workValue34, flag)
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue
  arg2 = workValue9
  arg3 = arg1
  arg4 = ","
  arg2 = arg2(arg3, arg4)
  arg3 = {}
  arg4 = ipairs
  flag3 = arg2
  arg4, flag3, flag4, flag5 = arg4(flag3)
  for workValue31, workValue32 in arg4, flag3, flag4, flag5 do
    workValue34 = tonumber
    flag = workValue32
    workValue34 = workValue34(flag)
    if workValue34 then
      flag = table
      flag = flag.insert
      numberValue3 = arg3
      textValue = workValue34
      flag(numberValue3, textValue)
    end
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1) ===
function workValue13(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag
  arg2 = {}
  arg3 = ipairs
  arg4 = arg1.el
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = {}
    workValue34 = tonumber
    flag = workValue31.attr
    flag = flag.Duration
    workValue34 = workValue34(flag)
    workValue32.Milliseconds = workValue34
    workValue34 = workValue11
    flag = workValue31.attr
    flag = flag.Extras
    workValue34 = workValue34(flag)
    workValue32.Extras = workValue34
    workValue34 = #arg2
    workValue34 = workValue34 + 1
    arg2[workValue34] = workValue32
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2) ===
function workValue15(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3
  arg3 = ipairs
  arg4 = arg2.kids
  arg3, arg4, flag3, flag4 = arg3(arg4)
  for flag5, workValue31 in arg3, arg4, flag3, flag4 do
    workValue32 = workValue31.name
    if "Primary" == workValue32 then
      workValue32 = arg1.pattern
      workValue34 = 303108068
      flag = workValue13
      numberValue3 = workValue31
      flag = flag(numberValue3)
      workValue32[workValue34] = flag
    else
      workValue32 = workValue31.name
      if "Secondary" == workValue32 then
        workValue32 = arg1.pattern
        workValue34 = -910931556
        flag = workValue13
        numberValue3 = workValue31
        flag = flag(numberValue3)
        workValue32[workValue34] = flag
      else
        workValue32 = workValue31.name
        if "Warning" == workValue32 then
          workValue32 = arg1.pattern
          workValue34 = -383838148
          flag = workValue13
          numberValue3 = workValue31
          flag = flag(numberValue3)
          workValue32[workValue34] = flag
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1, arg2) ===
function workValue17(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6
  if not arg1 then
    arg3 = nil
    return arg3
  end
  arg3 = {}
  arg4 = ipairs
  flag3 = arg1
  arg4, flag3, flag4, flag5 = arg4(flag3)
  for workValue31, workValue32 in arg4, flag3, flag4, flag5 do
    workValue34 = {}
    flag = ipairs
    numberValue3 = workValue32.Extras
    if not numberValue3 then
      numberValue3 = {}
    end
    flag, numberValue3, textValue, modelHash = flag(numberValue3)
    for textValue2, stringHelper in flag, numberValue3, textValue, modelHash do
      flag2 = arg2[stringHelper]
      if flag2 then
        flag2 = table
        flag2 = flag2.insert
        numberValue5 = workValue34
        numberValue6 = stringHelper
        flag2(numberValue5, numberValue6)
      end
    end
    flag = #arg3
    flag = flag + 1
    numberValue3 = {}
    textValue = workValue32.Milliseconds
    numberValue3.Milliseconds = textValue
    numberValue3.Extras = workValue34
    arg3[flag] = numberValue3
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg1) ===
function workValue19(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10, workValue12, workValue14, workValue16
  arg2 = pairs
  arg3 = arg1.pattern
  arg2, arg3, arg4, flag3 = arg2(arg3)
  for flag4, flag5 in arg2, arg3, arg4, flag3 do
    workValue31 = ipairs
    workValue32 = flag5
    workValue31, workValue32, workValue34, flag = workValue31(workValue32)
    for numberValue3, textValue in workValue31, workValue32, workValue34, flag do
      modelHash = textValue.Milliseconds
      if not modelHash then
        modelHash = false
        textValue2 = string
        textValue2 = textValue2.format
        stringHelper = "Unable to convert milliseconds in custom pattern %s"
        flag2 = flag4
        textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10, workValue12, workValue14, workValue16 = textValue2(stringHelper, flag2)
        return modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10, workValue12, workValue14, workValue16
      end
      modelHash = textValue.Extras
      if not modelHash then
        modelHash = false
        textValue2 = string
        textValue2 = textValue2.format
        stringHelper = "Unable to convert extras in custom pattern %s"
        flag2 = flag4
        textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10, workValue12, workValue14, workValue16 = textValue2(stringHelper, flag2)
        return modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10, workValue12, workValue14, workValue16
      end
      modelHash = ipairs
      textValue2 = textValue.Extras
      modelHash, textValue2, stringHelper, flag2 = modelHash(textValue2)
      for numberValue5, numberValue6 in modelHash, textValue2, stringHelper, flag2 do
        if numberValue6 < 1 or numberValue6 > 12 then
          numberValue7 = false
          workValue10 = string
          workValue10 = workValue10.format
          workValue12 = "Extra %d out of the range 1 to 12 in custom pattern %s"
          workValue14 = numberValue6
          workValue16 = flag4
          workValue10, workValue12, workValue14, workValue16 = workValue10(workValue12, workValue14, workValue16)
          return numberValue7, workValue10, workValue12, workValue14, workValue16
        end
      end
    end
  end
  arg2 = arg1.sounds
  if not arg2 then
    arg2 = false
    arg3 = "Sounds section does not exist"
    return arg2, arg3
  end
  arg2 = {}
  arg3 = arg1.sounds
  arg3 = arg3.srnTone1
  if arg3 then
    arg3 = arg1.sounds
    arg3 = arg3.srnTone1
    arg3 = arg3.audioString
  end
  arg4 = arg1.sounds
  arg4 = arg4.srnTone2
  if arg4 then
    arg4 = arg1.sounds
    arg4 = arg4.srnTone2
    arg4 = arg4.audioString
  end
  flag3 = arg1.sounds
  flag3 = flag3.srnTone3
  if flag3 then
    flag3 = arg1.sounds
    flag3 = flag3.srnTone3
    flag3 = flag3.audioString
  end
  flag4 = arg1.sounds
  flag4 = flag4.srnTone4
  if flag4 then
    flag4 = arg1.sounds
    flag4 = flag4.srnTone4
    flag4 = flag4.audioString
  end
  arg2[1] = arg3
  arg2[2] = arg4
  arg2[3] = flag3
  arg2[4] = flag4
  arg3 = #arg2
  if 4 ~= arg3 then
    arg3 = false
    arg4 = "Unable to find SrnTone1 to SrnTone4"
    return arg3, arg4
  end
  arg3 = 1
  arg4 = #arg2
  flag3 = 1
  for flag4 = arg3, arg4, flag3 do
    flag5 = string
    flag5 = flag5.match
    workValue31 = arg2[flag4]
    workValue32 = "xsiren"
    flag5 = flag5(workValue31, workValue32)
    if flag5 then
      flag5 = false
      workValue31 = "Sirens of type 'xsiren' unsupported"
      return flag5, workValue31
    end
  end
  arg3 = true
  return arg3
end

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2) ===
function eventRegistration2(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper
  arg3 = dataTable
  arg4 = arg3
  arg3 = arg3.dom
  flag3 = arg1
  flag4 = arg2
  arg3 = arg3(arg4, flag3, flag4)
  arg4 = {}
  flag3 = {}
  arg4.extras = flag3
  flag3 = {}
  arg4.sounds = flag3
  flag3 = {}
  arg4.pattern = flag3
  flag3 = ipairs
  flag4 = arg3.root
  flag4 = flag4.el
  flag3, flag4, flag5, workValue31 = flag3(flag4)
  for workValue32, workValue34 in flag3, flag4, flag5, workValue31 do
    flag = workValue34.name
    if "EOVERRIDE" == flag then
      flag = eventRegistration
      numberValue3 = arg4
      textValue = workValue34
      flag(numberValue3, textValue)
    else
      flag = workValue34.name
      if "EXTRAS" == flag then
        flag = workValue7
        numberValue3 = arg4
        textValue = workValue34
        flag(numberValue3, textValue)
      else
        flag = workValue34.name
        if "SOUNDS" == flag then
          flag = workValue8
          numberValue3 = arg4
          textValue = workValue34
          flag(numberValue3, textValue)
        else
          flag = workValue34.name
          if "PATTERNS" == flag then
            flag = workValue15
            numberValue3 = arg4
            textValue = workValue34
            flag(numberValue3, textValue)
          end
        end
      end
    end
  end
  flag3 = {}
  flag4 = 303108068
  flag5 = -910931556
  workValue31 = -383838148
  flag3[1] = flag4
  flag3[2] = flag5
  flag3[3] = workValue31
  flag4 = ipairs
  flag5 = flag3
  flag4, flag5, workValue31, workValue32 = flag4(flag5)
  for workValue34, flag in flag4, flag5, workValue31, workValue32 do
    numberValue3 = arg4.pattern
    numberValue3 = numberValue3[flag]
    if not numberValue3 then
      numberValue3 = dataTable4.Pattern
      numberValue3 = numberValue3[flag]
    end
    if not numberValue3 then
      textValue = false
      modelHash = "ELS default pattern missing for "
      textValue2 = tostring
      stringHelper = flag
      textValue2 = textValue2(stringHelper)
      modelHash = modelHash .. textValue2
      return textValue, modelHash
    end
    textValue = arg4.pattern
    modelHash = workValue17
    textValue2 = numberValue3
    stringHelper = arg4.extras
    modelHash = modelHash(textValue2, stringHelper)
    textValue[flag] = modelHash
  end
  flag4 = workValue19
  flag5 = arg4
  flag4, flag5 = flag4(flag5)
  if flag4 then
    workValue31 = arg4
    workValue32 = false
    return workValue31, workValue32
  else
    workValue31 = false
    workValue32 = flag5
    return workValue31, workValue32
  end
end
GetVehicleFromXML = eventRegistration2
eventRegistration2 = {}
eventRegistration2.VERSION = "0.7"
cmgCall2 = {}

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local arg3, arg4, flag3, flag4, flag5
  arg3 = print
  arg4 = string
  arg4 = arg4.format
  flag3 = "<?%s %s?>"
  flag4 = arg1
  flag5 = arg2
  arg4, flag3, flag4, flag5 = arg4(flag3, flag4, flag5)
  arg3(arg4, flag3, flag4, flag5)
end
cmgCall2.pi = textValue3

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4, flag3
  arg2 = print
  arg3 = string
  arg3 = arg3.format
  arg4 = "<!-- %s -->"
  flag3 = arg1
  arg3, arg4, flag3 = arg3(arg4, flag3)
  arg2(arg3, arg4, flag3)
end
cmgCall2.comment = textValue3

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2, arg3) ===
function textValue3(arg1, arg2, arg3)
  local arg4, flag3, flag4, flag5
  arg4 = io
  arg4 = arg4.write
  flag3 = "<"
  arg4(flag3)
  if arg3 then
    arg4 = io
    arg4 = arg4.write
    flag3 = arg3
    flag4 = ":"
    arg4(flag3, flag4)
  end
  arg4 = io
  arg4 = arg4.write
  flag3 = arg1
  arg4(flag3)
  if arg2 then
    arg4 = io
    arg4 = arg4.write
    flag3 = " (ns='"
    flag4 = arg2
    flag5 = "')"
    arg4(flag3, flag4, flag5)
  end
  arg4 = print
  flag3 = ">"
  arg4(flag3)
end
cmgCall2.startElement = textValue3

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2, arg3, arg4) ===
function textValue3(arg1, arg2, arg3, arg4)
  local flag3, flag4, flag5, workValue31, workValue32, workValue34
  flag3 = io
  flag3 = flag3.write
  flag4 = "  "
  flag3(flag4)
  if arg4 then
    flag3 = io
    flag3 = flag3.write
    flag4 = arg4
    flag5 = ":"
    flag3(flag4, flag5)
  end
  flag3 = io
  flag3 = flag3.write
  flag4 = arg1
  flag5 = "="
  workValue31 = string
  workValue31 = workValue31.format
  workValue32 = "%q"
  workValue34 = arg2
  workValue31, workValue32, workValue34 = workValue31(workValue32, workValue34)
  flag3(flag4, flag5, workValue31, workValue32, workValue34)
  if arg3 then
    flag3 = io
    flag3 = flag3.write
    flag4 = " (ns='"
    flag5 = arg3
    workValue31 = "')"
    flag3(flag4, flag5, workValue31)
  end
  flag3 = io
  flag3 = flag3.write
  flag4 = "\n"
  flag3(flag4)
end
cmgCall2.attribute = textValue3

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4, flag3
  arg2 = print
  arg3 = string
  arg3 = arg3.format
  arg4 = "  text: %q"
  flag3 = arg1
  arg3, arg4, flag3 = arg3(arg4, flag3)
  arg2(arg3, arg4, flag3)
end
cmgCall2.text = textValue3

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1, arg2) ===
function textValue3(arg1, arg2)
  local arg3, arg4, flag3, flag4
  arg3 = print
  arg4 = string
  arg4 = arg4.format
  flag3 = "</%s>"
  flag4 = arg1
  arg4, flag3, flag4 = arg4(flag3, flag4)
  arg3(arg4, flag3, flag4)
end
cmgCall2.closeElement = textValue3
eventRegistration2._call = cmgCall2
dataTable = eventRegistration2

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2) ===
function eventRegistration2(arg1, arg2)
  local arg3, arg4
  arg3 = {}
  arg4 = arg2 or arg4
  if not arg2 then
    arg4 = arg1._call
  end
  arg3._call = arg4
  arg4 = dataTable.parse
  arg3.parse = arg4
  return arg3
end
dataTable.parser = eventRegistration2

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2, arg3, arg4) ===
function eventRegistration2(arg1, arg2, arg3, arg4)
  local flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper, flag2, numberValue5, numberValue6, numberValue7, workValue10, workValue12, workValue14, workValue16, workValue18, workValue20, workValue21, workValue22, workValue23, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, workValue26, workValue27, workValue28, textValue5, textValue6, textValue7
  if not arg4 then
    flag3 = {}
    flag3.stripWhitespace = false
    arg4 = flag3
  end
  flag3 = string
  flag3 = flag3.find
  flag4 = string
  flag4 = flag4.sub
  flag5 = string
  flag5 = flag5.gsub
  workValue31 = string
  workValue31 = workValue31.char
  workValue32 = table
  workValue32 = workValue32.insert
  workValue34 = table
  workValue34 = workValue34.remove
  flag = table
  flag = flag.concat
  numberValue3 = nil
  textValue = nil
  modelHash = nil
  textValue2 = nil
  stringHelper = nil
  flag2 = nil
  numberValue5 = table
  numberValue5 = numberValue5.unpack
  numberValue6 = 1
  numberValue7 = "text"
  workValue10 = 1
  workValue12 = {}
  workValue14 = {}
  workValue16 = nil
  workValue18 = {}
  workValue20 = {}
  workValue21 = {}
  workValue22 = 2047
  workValue23 = 192
  workValue21[1] = workValue22
  workValue21[2] = workValue23
  workValue22 = {}
  workValue23 = 65535
  numberValue8 = 224
  workValue22[1] = workValue23
  workValue22[2] = numberValue8
  workValue23 = {}
  numberValue8 = 2097151
  numberValue9 = 240
  workValue23[1] = numberValue8
  workValue23[2] = numberValue9
  workValue20[1] = workValue21
  workValue20[2] = workValue22
  workValue20[3] = workValue23

  -- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg12) ===
  function workValue21(arg12)
    local arg22, arg32, workValue29, stringHelper2, workValue30, tableHelper, nameValue, workValue33, numberValue19, numberValue, workValue2, workValue3, workValue5, numberValue4
    if arg12 < 128 then
      arg22 = workValue31
      arg32 = arg12
      return arg22(arg32)
    end
    arg22 = {}
    arg32 = ipairs
    workValue29 = workValue20
    arg32, workValue29, stringHelper2, workValue30 = arg32(workValue29)
    for tableHelper, nameValue in arg32, workValue29, stringHelper2, workValue30 do
      workValue33 = nameValue[1]
      if arg12 <= workValue33 then
        workValue33 = tableHelper + 1
        numberValue19 = 2
        numberValue = -1
        for workValue2 = workValue33, numberValue19, numberValue do
          workValue3 = arg12 % 64
          workValue5 = arg12 - workValue3
          arg12 = workValue5 / 64
          workValue5 = workValue31
          numberValue4 = 128 + workValue3
          workValue5 = workValue5(numberValue4)
          arg22[workValue2] = workValue5
        end
        workValue33 = workValue31
        numberValue19 = nameValue[2]
        numberValue19 = numberValue19 + arg12
        workValue33 = workValue33(numberValue19)
        arg22[1] = workValue33
        workValue33 = flag
        numberValue19 = arg22
        workValue33, numberValue19, numberValue, workValue2, workValue3, workValue5, numberValue4 = workValue33(numberValue19)
        return workValue33, numberValue19, numberValue, workValue2, workValue3, workValue5, numberValue4
      end
    end
  end
  workValue22 = {}
  workValue22.lt = "<"
  workValue22.gt = ">"
  workValue22.amp = "&"
  workValue22.quot = "\""
  workValue22.apos = "'"

  -- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg12, arg22, arg32) ===
  function workValue23(arg12, arg22, arg32)
    local workValue29, stringHelper2, workValue30, tableHelper
    workValue29 = workValue22
    workValue29 = workValue29[arg32]
    if not workValue29 then
      if "#" == arg22 then
        workValue29 = workValue21
        stringHelper2 = tonumber
        workValue30 = "0"
        tableHelper = arg32
        workValue30 = workValue30 .. tableHelper
        stringHelper2, workValue30, tableHelper = stringHelper2(workValue30)
        workValue29 = workValue29(stringHelper2, workValue30, tableHelper)
        if workValue29 then
          goto flow_label_17
        end
      end
      workValue29 = arg12
    end
    ::flow_label_17::
    return workValue29
  end

  -- === HELPER FUNCTION (decompiler name: numberValue8; parameters: arg12) ===
  function numberValue8(arg12)
    local arg22, arg32, workValue29, stringHelper2
    arg22 = flag5
    arg32 = arg12
    workValue29 = "(&(#?)([%d%a]+);)"
    stringHelper2 = workValue23
    return arg22(arg32, workValue29, stringHelper2)
  end

  -- === HELPER FUNCTION (decompiler name: numberValue9; parameters: none) ===
  function numberValue9()
    local arg12, arg22, arg32, workValue29, stringHelper2
    arg12 = numberValue3
    arg22 = workValue10
    if arg12 > arg22 then
      arg12 = arg1._call
      arg12 = arg12.text
      if arg12 then
        arg12 = flag4
        arg22 = arg2
        arg32 = workValue10
        workValue29 = numberValue3
        workValue29 = workValue29 - 1
        arg12 = arg12(arg22, arg32, workValue29)
        arg22 = arg4.stripWhitespace
        if arg22 and arg12 then
          arg22 = flag5
          arg32 = arg12
          workValue29 = "^%s+"
          stringHelper2 = ""
          arg22 = arg22(arg32, workValue29, stringHelper2)
          arg12 = arg22
          arg22 = flag5
          arg32 = arg12
          workValue29 = "%s+$"
          stringHelper2 = ""
          arg22 = arg22(arg32, workValue29, stringHelper2)
          arg12 = arg22
          arg22 = #arg12
          if 0 == arg22 then
            arg12 = nil
          end
        end
        if arg12 then
          arg22 = arg1._call
          arg22 = arg22.text
          arg32 = numberValue8
          workValue29 = arg12
          arg32, workValue29, stringHelper2 = arg32(workValue29)
          arg22(arg32, workValue29, stringHelper2)
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue10; parameters: none) ===
  function numberValue10()
    local arg12, arg22, arg32, workValue29
    arg12 = flag3
    arg22 = arg2
    arg32 = "^<%?([:%a_][:%w_.-]*) ?(.-)%?>"
    workValue29 = numberValue6
    arg12, arg22, arg32, workValue29 = arg12(arg22, arg32, workValue29)
    textValue2 = workValue29
    modelHash = arg32
    textValue = arg22
    numberValue3 = arg12
    arg12 = numberValue3
    if arg12 then
      arg12 = numberValue9
      arg12()
      arg12 = arg1._call
      arg12 = arg12.pi
      if arg12 then
        arg12 = arg1._call
        arg12 = arg12.pi
        arg22 = modelHash
        arg32 = textValue2
        arg12(arg22, arg32)
      end
      arg12 = textValue
      arg12 = arg12 + 1
      numberValue6 = arg12
      arg12 = numberValue6
      workValue10 = arg12
      arg12 = true
      return arg12
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
  function numberValue11()
    local arg12, arg22, arg32, workValue29
    arg12 = flag3
    arg22 = arg2
    arg32 = "^<!%-%-(.-)%-%->"
    workValue29 = numberValue6
    arg12, arg22, arg32 = arg12(arg22, arg32, workValue29)
    modelHash = arg32
    textValue = arg22
    numberValue3 = arg12
    arg12 = numberValue3
    if arg12 then
      arg12 = numberValue9
      arg12()
      arg12 = arg1._call
      arg12 = arg12.comment
      if arg12 then
        arg12 = arg1._call
        arg12 = arg12.comment
        arg22 = modelHash
        arg12(arg22)
      end
      arg12 = textValue
      arg12 = arg12 + 1
      numberValue6 = arg12
      arg12 = numberValue6
      workValue10 = arg12
      arg12 = true
      return arg12
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg12) ===
  function numberValue12(arg12)
    local arg22, arg32, workValue29, stringHelper2, workValue30
    if "xml" == arg12 then
      arg22 = "http://www.w3.org/XML/1998/namespace"
      return arg22
    end
    arg22 = workValue18
    arg22 = #arg22
    arg32 = 1
    workValue29 = -1
    for stringHelper2 = arg22, arg32, workValue29 do
      workValue30 = workValue18
      workValue30 = workValue30[stringHelper2]
      workValue30 = workValue30[arg12]
      if workValue30 then
        workValue30 = workValue18
        workValue30 = workValue30[stringHelper2]
        workValue30 = workValue30[arg12]
        return workValue30
      end
    end
    arg22 = error
    arg32 = string
    arg32 = arg32.format
    workValue29 = "Cannot find namespace for prefix %s"
    stringHelper2 = arg12
    arg32, workValue29, stringHelper2, workValue30 = arg32(workValue29, stringHelper2)
    arg22(arg32, workValue29, stringHelper2, workValue30)
  end

  -- === HELPER FUNCTION (decompiler name: numberValue13; parameters: none) ===
  function numberValue13()
    local arg12, arg22, arg32, workValue29, stringHelper2, workValue30
    arg12 = flag3
    arg22 = arg2
    arg32 = "^<([%a_][%w_.-]*)"
    workValue29 = numberValue6
    arg12, arg22, arg32 = arg12(arg22, arg32, workValue29)
    modelHash = arg32
    textValue = arg22
    numberValue3 = arg12
    arg12 = numberValue3
    if arg12 then
      arg12 = workValue12
      arg12[2] = nil
      arg12 = workValue12
      arg12[3] = nil
      arg12 = numberValue9
      arg12()
      arg12 = textValue
      arg12 = arg12 + 1
      numberValue6 = arg12
      arg12 = flag3
      arg22 = arg2
      arg32 = "^:([%a_][%w_.-]*)"
      workValue29 = numberValue6
      arg12, arg22, arg32 = arg12(arg22, arg32, workValue29)
      textValue2 = arg32
      textValue = arg22
      numberValue3 = arg12
      arg12 = numberValue3
      if arg12 then
        arg12 = workValue12
        arg22 = textValue2
        arg12[1] = arg22
        arg12 = workValue12
        arg22 = modelHash
        arg12[3] = arg22
        arg12 = textValue2
        modelHash = arg12
        arg12 = textValue
        arg12 = arg12 + 1
        numberValue6 = arg12
      else
        arg12 = workValue12
        arg22 = modelHash
        arg12[1] = arg22
        arg12 = workValue18
        arg12 = #arg12
        arg22 = 1
        arg32 = -1
        for workValue29 = arg12, arg22, arg32 do
          stringHelper2 = workValue18
          stringHelper2 = stringHelper2[workValue29]
          stringHelper2 = stringHelper2["!"]
          if stringHelper2 then
            stringHelper2 = workValue12
            workValue30 = workValue18
            workValue30 = workValue30[workValue29]
            workValue30 = workValue30["!"]
            stringHelper2[2] = workValue30
            break
          end
        end
      end
      arg12 = 0
      workValue16 = arg12
      arg12 = workValue32
      arg22 = workValue18
      arg32 = {}
      arg12(arg22, arg32)
      arg12 = true
      return arg12
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue14; parameters: none) ===
  function numberValue14()
    local arg12, arg22, arg32, workValue29, stringHelper2
    arg12 = flag3
    arg22 = arg2
    arg32 = "^%s+([:%a_][:%w_.-]*)%s*=%s*"
    workValue29 = numberValue6
    arg12, arg22, arg32 = arg12(arg22, arg32, workValue29)
    modelHash = arg32
    textValue = arg22
    numberValue3 = arg12
    arg12 = numberValue3
    if arg12 then
      arg12 = textValue
      arg12 = arg12 + 1
      stringHelper = arg12
      arg12 = flag3
      arg22 = arg2
      arg32 = "^\"([^<\"]*)\""
      workValue29 = stringHelper
      arg12, arg22, arg32 = arg12(arg22, arg32, workValue29)
      textValue2 = arg32
      textValue = arg22
      numberValue3 = arg12
      arg12 = numberValue3
      if arg12 then
        arg12 = textValue
        arg12 = arg12 + 1
        numberValue6 = arg12
        arg12 = numberValue8
        arg22 = textValue2
        arg12 = arg12(arg22)
        textValue2 = arg12
      else
        arg12 = flag3
        arg22 = arg2
        arg32 = "^'([^<']*)'"
        workValue29 = stringHelper
        arg12, arg22, arg32 = arg12(arg22, arg32, workValue29)
        textValue2 = arg32
        textValue = arg22
        numberValue3 = arg12
        arg12 = numberValue3
        if arg12 then
          arg12 = textValue
          arg12 = arg12 + 1
          numberValue6 = arg12
          arg12 = numberValue8
          arg22 = textValue2
          arg12 = arg12(arg22)
          textValue2 = arg12
        end
      end
    end
    arg12 = modelHash
    if arg12 then
      arg12 = textValue2
      if arg12 then
        arg12 = {}
        arg22 = modelHash
        arg32 = textValue2
        arg12[1] = arg22
        arg12[2] = arg32
        arg22 = string
        arg22 = arg22.match
        arg32 = modelHash
        workValue29 = "^([^:]+):([^:]+)$"
        arg22, arg32 = arg22(arg32, workValue29)
        if arg22 then
          if "xmlns" == arg22 then
            workValue29 = workValue18
            stringHelper2 = #workValue29
            workValue29 = workValue18
            workValue29 = workValue29[stringHelper2]
            stringHelper2 = textValue2
            workValue29[arg32] = stringHelper2
          else
            arg12[1] = arg32
            arg12[4] = arg22
          end
        else
          workValue29 = modelHash
          if "xmlns" == workValue29 then
            workValue29 = workValue18
            stringHelper2 = #workValue29
            workValue29 = workValue18
            workValue29 = workValue29[stringHelper2]
            stringHelper2 = textValue2
            workValue29["!"] = stringHelper2
            workValue29 = workValue12
            stringHelper2 = textValue2
            workValue29[2] = stringHelper2
          end
        end
        workValue29 = workValue16
        workValue29 = workValue29 + 1
        workValue16 = workValue29
        stringHelper2 = workValue16
        workValue29 = workValue14
        workValue29[stringHelper2] = arg12
        workValue29 = true
        return workValue29
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: numberValue15; parameters: none) ===
  function numberValue15()
    local arg12, arg22, arg32, workValue29
    arg12 = flag3
    arg22 = arg2
    arg32 = "^<!%[CDATA%[(.-)%]%]>"
    workValue29 = numberValue6
    arg12, arg22, arg32 = arg12(arg22, arg32, workValue29)
    modelHash = arg32
    textValue = arg22
    numberValue3 = arg12
    arg12 = numberValue3
    if arg12 then
      arg12 = numberValue9
      arg12()
      arg12 = arg1._call
      arg12 = arg12.text
      if arg12 then
        arg12 = arg1._call
        arg12 = arg12.text
        arg22 = modelHash
        arg12(arg22)
      end
      arg12 = textValue
      arg12 = arg12 + 1
      numberValue6 = arg12
      arg12 = numberValue6
      workValue10 = arg12
      arg12 = true
      return arg12
    end
  end

  -- === HELPER FUNCTION (decompiler name: workValue26; parameters: none) ===
  function workValue26()
    local arg12, arg22, arg32, workValue29, stringHelper2, workValue30, tableHelper
    arg12 = flag3
    arg22 = arg2
    arg32 = "^%s*(/?)>"
    workValue29 = numberValue6
    arg12, arg22, arg32 = arg12(arg22, arg32, workValue29)
    modelHash = arg32
    textValue = arg22
    numberValue3 = arg12
    arg12 = numberValue3
    if arg12 then
      arg12 = "text"
      numberValue7 = arg12
      arg12 = textValue
      arg12 = arg12 + 1
      numberValue6 = arg12
      arg12 = numberValue6
      workValue10 = arg12
      arg12 = workValue12
      arg12 = arg12[3]
      if arg12 then
        arg12 = workValue12
        arg22 = numberValue12
        arg32 = workValue12
        arg32 = arg32[3]
        arg22 = arg22(arg32)
        arg12[2] = arg22
      end
      arg12 = arg1._call
      arg12 = arg12.startElement
      if arg12 then
        arg12 = arg1._call
        arg12 = arg12.startElement
        arg22 = numberValue5
        arg32 = workValue12
        arg22, arg32, workValue29, stringHelper2, workValue30, tableHelper = arg22(arg32)
        arg12(arg22, arg32, workValue29, stringHelper2, workValue30, tableHelper)
      end
      arg12 = arg1._call
      arg12 = arg12.attribute
      if arg12 then
        arg12 = 1
        arg22 = workValue16
        arg32 = 1
        for workValue29 = arg12, arg22, arg32 do
          stringHelper2 = workValue14
          stringHelper2 = stringHelper2[workValue29]
          stringHelper2 = stringHelper2[4]
          if stringHelper2 then
            stringHelper2 = workValue14
            stringHelper2 = stringHelper2[workValue29]
            workValue30 = numberValue12
            tableHelper = workValue14
            tableHelper = tableHelper[workValue29]
            tableHelper = tableHelper[4]
            workValue30 = workValue30(tableHelper)
            stringHelper2[3] = workValue30
          end
          stringHelper2 = arg1._call
          stringHelper2 = stringHelper2.attribute
          workValue30 = numberValue5
          tableHelper = workValue14
          tableHelper = tableHelper[workValue29]
          workValue30, tableHelper = workValue30(tableHelper)
          stringHelper2(workValue30, tableHelper)
        end
      end
      arg12 = modelHash
      if "/" == arg12 then
        arg12 = workValue34
        arg22 = workValue18
        arg12(arg22)
        arg12 = arg1._call
        arg12 = arg12.closeElement
        if arg12 then
          arg12 = arg1._call
          arg12 = arg12.closeElement
          arg22 = numberValue5
          arg32 = workValue12
          arg22, arg32, workValue29, stringHelper2, workValue30, tableHelper = arg22(arg32)
          arg12(arg22, arg32, workValue29, stringHelper2, workValue30, tableHelper)
        end
      end
      arg12 = true
      return arg12
    end
  end

  -- === HELPER FUNCTION (decompiler name: workValue27; parameters: none) ===
  function workValue27()
    local arg12, arg22, arg32, workValue29, stringHelper2
    arg12 = flag3
    arg22 = arg2
    arg32 = "^</([%a_][%w_.-]*)%s*>"
    workValue29 = numberValue6
    arg12, arg22, arg32, workValue29 = arg12(arg22, arg32, workValue29)
    textValue2 = workValue29
    modelHash = arg32
    textValue = arg22
    numberValue3 = arg12
    arg12 = numberValue3
    if arg12 then
      arg12 = nil
      flag2 = arg12
      arg12 = workValue18
      arg12 = #arg12
      arg22 = 1
      arg32 = -1
      for workValue29 = arg12, arg22, arg32 do
        stringHelper2 = workValue18
        stringHelper2 = stringHelper2[workValue29]
        stringHelper2 = stringHelper2["!"]
        if stringHelper2 then
          stringHelper2 = workValue18
          stringHelper2 = stringHelper2[workValue29]
          stringHelper2 = stringHelper2["!"]
          flag2 = stringHelper2
          break
        end
      end
    else
      arg12 = flag3
      arg22 = arg2
      arg32 = "^</([%a_][%w_.-]*):([%a_][%w_.-]*)%s*>"
      workValue29 = numberValue6
      arg12, arg22, arg32, workValue29 = arg12(arg22, arg32, workValue29)
      modelHash = workValue29
      textValue2 = arg32
      textValue = arg22
      numberValue3 = arg12
      arg12 = numberValue3
      if arg12 then
        arg12 = numberValue12
        arg22 = textValue2
        arg12 = arg12(arg22)
        flag2 = arg12
      end
    end
    arg12 = numberValue3
    if arg12 then
      arg12 = numberValue9
      arg12()
      arg12 = arg1._call
      arg12 = arg12.closeElement
      if arg12 then
        arg12 = arg1._call
        arg12 = arg12.closeElement
        arg22 = modelHash
        arg32 = flag2
        arg12(arg22, arg32)
      end
      arg12 = textValue
      arg12 = arg12 + 1
      numberValue6 = arg12
      arg12 = numberValue6
      workValue10 = arg12
      arg12 = workValue34
      arg22 = workValue18
      arg12(arg22)
      arg12 = true
      return arg12
    end
  end
  while true do
    workValue28 = #arg2
    if not (numberValue6 < workValue28) then
      break
    end
    if "text" == numberValue7 then
      workValue28 = numberValue10
      workValue28 = workValue28()
      if not workValue28 then
        workValue28 = numberValue11
        workValue28 = workValue28()
        if not workValue28 then
          workValue28 = numberValue15
          workValue28 = workValue28()
          if not workValue28 then
            workValue28 = workValue27
            workValue28 = workValue28()
            if not workValue28 then
              workValue28 = numberValue13
              workValue28 = workValue28()
              if workValue28 then
                numberValue7 = "attributes"
              else
                workValue28 = flag3
                textValue5 = arg2
                textValue6 = "^[^<]+"
                textValue7 = numberValue6
                workValue28, textValue5 = workValue28(textValue5, textValue6, textValue7)
                textValue = textValue5
                numberValue3 = workValue28
                workValue28 = textValue or workValue28
                if not numberValue3 or not textValue then
                  workValue28 = numberValue6
                end
                numberValue6 = workValue28 + 1
              end
            end
          end
        end
      end
    elseif "attributes" == numberValue7 then
      workValue28 = numberValue14
      workValue28 = workValue28()
      if not workValue28 then
        workValue28 = workValue26
        workValue28 = workValue28()
        if not workValue28 then
          workValue28 = print
          textValue5 = "Unable to load VCF for "
          textValue6 = arg3
          textValue7 = " (XML is broken)"
          textValue5 = textValue5 .. textValue6 .. textValue7
          workValue28(textValue5)
          break
        end
      end
    end
  end
end
dataTable.parse = eventRegistration2

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2, arg3, arg4) ===
function eventRegistration2(arg1, arg2, arg3, arg4)
  local flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue, modelHash, textValue2, stringHelper
  if not arg4 then
    flag3 = {}
    arg4 = flag3
  end
  flag3 = arg4.simple
  flag3 = not flag3
  flag4 = table
  flag4 = flag4.insert
  flag5 = table
  flag5 = flag5.remove
  workValue31 = {}
  workValue32 = {}
  workValue32.type = "document"
  workValue32.name = "#doc"
  workValue34 = {}
  workValue32.kids = workValue34
  workValue34 = workValue32
  flag = dataTable
  numberValue3 = flag
  flag = flag.parser
  textValue = {}

  -- === HELPER FUNCTION: modelHash(arg12, arg22) ===
  function modelHash(arg12, arg22)
    local arg32, workValue29, stringHelper2, workValue30, tableHelper, nameValue
    arg32 = {}
    arg32.type = "element"
    arg32.name = arg12
    workValue29 = {}
    arg32.kids = workValue29
    workValue29 = flag3
    if workValue29 then
      workValue29 = {}
      if workValue29 then
        goto flow_label_16
      end
    end
    workValue29 = nil
    ::flow_label_16::
    arg32.el = workValue29
    workValue29 = {}
    arg32.attr = workValue29
    arg32.nsURI = arg22
    workValue29 = flag3
    if workValue29 then
      workValue29 = workValue34
      if workValue29 then
        goto flow_label_28
      end
    end
    workValue29 = nil
    ::flow_label_28::
    arg32.parent = workValue29
    workValue29 = workValue34
    stringHelper2 = workValue32
    if workValue29 == stringHelper2 then
      workValue29 = workValue32.root
      if workValue29 then
        workValue29 = error
        stringHelper2 = string
        stringHelper2 = stringHelper2.format
        workValue30 = "Encountered element '%s' when the document already has a root '%s' element"
        tableHelper = arg12
        nameValue = workValue32.root
        nameValue = nameValue.name
        stringHelper2, workValue30, tableHelper, nameValue = stringHelper2(workValue30, tableHelper, nameValue)
        workValue29(stringHelper2, workValue30, tableHelper, nameValue)
      end
      workValue32.root = arg32
    end
    workValue29 = flag4
    stringHelper2 = workValue34.kids
    workValue30 = arg32
    workValue29(stringHelper2, workValue30)
    workValue29 = workValue34.el
    if workValue29 then
      workValue29 = flag4
      stringHelper2 = workValue34.el
      workValue30 = arg32
      workValue29(stringHelper2, workValue30)
    end
    workValue34 = arg32
    workValue29 = flag4
    stringHelper2 = workValue31
    workValue30 = arg32
    workValue29(stringHelper2, workValue30)
  end
  textValue.startElement = modelHash

  -- === HELPER FUNCTION: modelHash(arg12, arg22, arg32) ===
  function modelHash(arg12, arg22, arg32)
    local workValue29, stringHelper2, workValue30, tableHelper, nameValue
    workValue29 = workValue34
    if workValue29 then
      workValue29 = workValue34.type
      if "element" == workValue29 then
        goto flow_label_15
      end
    end
    workValue29 = error
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    workValue30 = "Encountered an attribute %s=%s but I wasn't inside an element"
    tableHelper = arg12
    nameValue = arg22
    stringHelper2, workValue30, tableHelper, nameValue = stringHelper2(workValue30, tableHelper, nameValue)
    workValue29(stringHelper2, workValue30, tableHelper, nameValue)
    ::flow_label_15::
    workValue29 = {}
    workValue29.type = "attribute"
    workValue29.name = arg12
    workValue29.nsURI = arg32
    workValue29.value = arg22
    stringHelper2 = flag3
    if stringHelper2 then
      stringHelper2 = workValue34
      if stringHelper2 then
        goto flow_label_28
      end
    end
    stringHelper2 = nil
    ::flow_label_28::
    workValue29.parent = stringHelper2
    stringHelper2 = flag3
    if stringHelper2 then
      stringHelper2 = workValue34.attr
      stringHelper2[arg12] = arg22
    end
    stringHelper2 = flag4
    workValue30 = workValue34.attr
    tableHelper = workValue29
    stringHelper2(workValue30, tableHelper)
  end
  textValue.attribute = modelHash

  -- === HELPER FUNCTION: modelHash(arg12) ===
  function modelHash(arg12)
    local arg22, arg32, workValue29, stringHelper2, workValue30, tableHelper
    arg22 = workValue34.name
    if arg22 == arg12 then
      arg22 = workValue34.type
      if "element" == arg22 then
        goto flow_label_16
      end
    end
    arg22 = error
    arg32 = string
    arg32 = arg32.format
    workValue29 = "Received a close element notification for '%s' but was inside a '%s' %s"
    stringHelper2 = arg12
    workValue30 = workValue34.name
    tableHelper = workValue34.type
    arg32, workValue29, stringHelper2, workValue30, tableHelper = arg32(workValue29, stringHelper2, workValue30, tableHelper)
    arg22(arg32, workValue29, stringHelper2, workValue30, tableHelper)
    ::flow_label_16::
    arg22 = flag5
    arg32 = workValue31
    arg22(arg32)
    arg22 = workValue31
    arg32 = #arg22
    arg22 = workValue31
    arg22 = arg22[arg32]
    workValue34 = arg22
  end
  textValue.closeElement = modelHash

  -- === HELPER FUNCTION: modelHash(arg12) ===
  function modelHash(arg12)
    local arg22, arg32, workValue29, stringHelper2, workValue30
    arg22 = workValue34.type
    if "document" ~= arg22 then
      arg22 = workValue34.type
      if "element" ~= arg22 then
        arg22 = error
        arg32 = string
        arg32 = arg32.format
        workValue29 = "Received a text notification '%s' but was inside a %s"
        stringHelper2 = arg12
        workValue30 = workValue34.type
        arg32, workValue29, stringHelper2, workValue30 = arg32(workValue29, stringHelper2, workValue30)
        arg22(arg32, workValue29, stringHelper2, workValue30)
      end
      arg22 = flag4
      arg32 = workValue34.kids
      workValue29 = {}
      workValue29.type = "text"
      workValue29.name = "#text"
      workValue29.value = arg12
      stringHelper2 = flag3
      if stringHelper2 then
        stringHelper2 = workValue34
        if stringHelper2 then
          goto flow_label_29
        end
      end
      stringHelper2 = nil
      ::flow_label_29::
      workValue29.parent = stringHelper2
      arg22(arg32, workValue29)
    end
  end
  textValue.text = modelHash

  -- === HELPER FUNCTION: modelHash(arg12) ===
  function modelHash(arg12)
    local arg22, arg32, workValue29, stringHelper2
    arg22 = flag4
    arg32 = workValue34.kids
    workValue29 = {}
    workValue29.type = "comment"
    workValue29.name = "#comment"
    workValue29.value = arg12
    stringHelper2 = flag3
    if stringHelper2 then
      stringHelper2 = workValue34
      if stringHelper2 then
        goto flow_label_15
      end
    end
    stringHelper2 = nil
    ::flow_label_15::
    workValue29.parent = stringHelper2
    arg22(arg32, workValue29)
  end
  textValue.comment = modelHash

  -- === HELPER FUNCTION: modelHash(arg12, arg22) ===
  function modelHash(arg12, arg22)
    local arg32, workValue29, stringHelper2, workValue30
    arg32 = flag4
    workValue29 = workValue34.kids
    stringHelper2 = {}
    stringHelper2.type = "pi"
    stringHelper2.name = arg12
    stringHelper2.value = arg22
    workValue30 = flag3
    if workValue30 then
      workValue30 = workValue34
      if workValue30 then
        goto flow_label_15
      end
    end
    workValue30 = nil
    ::flow_label_15::
    stringHelper2.parent = workValue30
    arg32(workValue29, stringHelper2)
  end
  textValue.pi = modelHash
  flag = flag(numberValue3, textValue)
  textValue = flag
  numberValue3 = flag.parse
  modelHash = arg2
  textValue2 = arg3
  stringHelper = arg4
  numberValue3(textValue, modelHash, textValue2, stringHelper)
  return workValue32
end
dataTable.dom = eventRegistration2
eventRegistration2 = RegisterNetEvent
cmgCall2 = "c3ca765ee5"
-- Beginner: this function handles network event "c3ca765ee5".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5, workValue31, workValue32, workValue34, flag, numberValue3, textValue
  if arg1 then
    arg2 = CMG
    arg2 = arg2.isDevMode
    arg2 = arg2()
    if not arg2 then
      arg2 = ""
      arg3 = pairs
      arg4 = dataTable2
      arg3, arg4, flag3, flag4 = arg3(arg4)
      for flag5, workValue31 in arg3, arg4, flag3, flag4 do
        workValue32 = arg2
        workValue34 = flag5
        flag = ": "
        numberValue3 = workValue31
        textValue = "\n"
        workValue32 = workValue32 .. workValue34 .. flag .. numberValue3 .. textValue
        arg2 = workValue32
      end
      if "" ~= arg2 then
        arg3 = CMG
        arg3 = arg3.showWarningMessage
        arg4 = "CARDEV WARNINGS"
        flag3 = arg2
        arg3(arg4, flag3)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c3ca765ee5".
eventRegistration2(cmgCall2, textValue3)

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1) ===
function eventRegistration2(arg1)
  local arg2, arg3, arg4, flag3, flag4, flag5
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = dataTable5
  if arg3 then
    arg3 = dataTable5
    arg3 = arg3[arg2]
    if arg3 then
      goto flow_label_13
    end
  end
  arg3 = ""
  return arg3
  ::flow_label_13::
  arg3 = string
  arg3 = arg3.format
  arg4 = "ELS Setup: %s"
  flag3 = DecorGetBool
  flag4 = arg1
  flag5 = "c102c26beb"
  flag3 = flag3(flag4, flag5)
  if flag3 then
    flag3 = "Yes"
    if flag3 then
      goto flow_label_26
    end
  end
  flag3 = "No"
  ::flow_label_26::
  return arg3(arg4, flag3)
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerDevMenuEntityEditor
textValue3 = "Fuel"
textValue4 = "vehicle"
workValue24 = eventRegistration2

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: none) ===
function workValue25()
  local arg1, arg2
end
cmgCall2(textValue3, textValue4, workValue24, workValue25)
