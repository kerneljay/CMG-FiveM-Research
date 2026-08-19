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
local workingValue, dataCollection3, dataCollection4, dataCollection5, number16, number17, createVector3, number18, dataCollection6, dataCollection7, dataCollection, number2, dataCollection2, workingValue4, workingValue6, backgroundThread, eventHandler, cmgOperation, workingValue7, workingValue8, workingValue9, workingValue11, workingValue13, workingValue15, workingValue17, workingValue19, eventHandler2, cmgOperation2, text3, text4, workingValue24, workingValue25
workingValue = require
dataCollection3 = "glm"
workingValue = workingValue(dataCollection3)
dataCollection3 = {}
dataCollection4 = {}
dataCollection5 = {}
number16 = 0
number17 = 0
createVector3 = vector3
number18 = 0.0
dataCollection6 = 0.0
dataCollection7 = 0.0
createVector3 = createVector3(number18, dataCollection6, dataCollection7)
number18 = 0
dataCollection6 = {}
dataCollection7 = {}
dataCollection = {}
number2 = 0
dataCollection2 = {}

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = number2
  localValue3 = localValue2 - localValue3
  localValue4 = 2500
  if localValue3 > localValue4 then
    localValue3 = print
    localValue4 = "[CMG ELS] "
    stateFlag3 = localValue1
    localValue4 = localValue4 .. stateFlag3
    localValue3(localValue4)
    number2 = localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2
  localValue2 = false
  localValue3 = localValue1.accurateLights
  if localValue3 then
    localValue3 = pairs
    localValue4 = localValue1.config
    localValue4 = localValue4.extras
    localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
    for stateFlag5 in localValue3, localValue4, stateFlag3, stateFlag4 do
      workingValue31 = SetVehicleExtra
      workingValue32 = localValue1.entity
      workingValue34 = stateFlag5
      stateFlag = true
      workingValue31(workingValue32, workingValue34, stateFlag)
    end
  end
  localValue3 = pairs
  localValue4 = localValue1.pattern
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = workingValue31.enabled
    if workingValue32 then
      localValue2 = true
      workingValue32 = workingValue31.stages
      workingValue34 = workingValue31.current
      workingValue32 = workingValue32[workingValue34]
      workingValue34 = localValue1.accurateLights
      if workingValue34 then
        workingValue34 = 1
        stateFlag = workingValue32.Extras
        stateFlag = #stateFlag
        number3 = 1
        for text = workingValue34, stateFlag, number3 do
          modelHash = SetVehicleExtra
          text2 = localValue1.entity
          stringHelper = workingValue32.Extras
          stringHelper = stringHelper[text]
          stateFlag2 = false
          modelHash(text2, stringHelper, stateFlag2)
        end
      end
      workingValue34 = number16
      stateFlag = workingValue31.updated
      workingValue34 = workingValue34 - stateFlag
      stateFlag = workingValue32.Milliseconds
      if workingValue34 > stateFlag then
        workingValue34 = workingValue31.current
        workingValue34 = workingValue34 + 1
        workingValue31.current = workingValue34
        workingValue34 = workingValue31.current
        stateFlag = workingValue31.stages
        stateFlag = #stateFlag
        if workingValue34 > stateFlag then
          workingValue31.current = 1
        end
        workingValue34 = workingValue31.stages
        stateFlag = workingValue31.current
        workingValue34 = workingValue34[stateFlag]
        stateFlag = dataCollection3.MoveToPattern
        number3 = localValue1.entity
        text = workingValue32
        modelHash = workingValue34
        stateFlag(number3, text, modelHash)
        workingValue32 = workingValue34
        stateFlag = number16
        workingValue31.updated = stateFlag
      end
      workingValue34 = localValue1.config
      workingValue34 = workingValue34.version
      if 1 == workingValue34 then
        workingValue34 = dataCollection3.DrawGlobalLighting
        stateFlag = localValue1
        number3 = workingValue32
        workingValue34(stateFlag, number3)
      else
        workingValue34 = dataCollection3.DrawDirectionalLighting
        stateFlag = localValue1
        number3 = workingValue32
        workingValue34(stateFlag, number3)
      end
    end
  end
  if localValue2 then
    localValue3 = SetVehicleEngineOn
    localValue4 = localValue1.entity
    stateFlag3 = true
    stateFlag4 = true
    stateFlag5 = false
    localValue3(localValue4, stateFlag3, stateFlag4, stateFlag5)
  end
end
dataCollection3.CheckPatterns = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2, localValue3) ===
function workingValue6(localValue1, localValue2, localValue3)
  local localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag
  localValue4 = 1
  stateFlag3 = localValue2.Extras
  stateFlag3 = #stateFlag3
  stateFlag4 = 1
  for stateFlag5 = localValue4, stateFlag3, stateFlag4 do
    workingValue31 = SetVehicleExtra
    workingValue32 = localValue1
    workingValue34 = localValue2.Extras
    workingValue34 = workingValue34[stateFlag5]
    stateFlag = true
    workingValue31(workingValue32, workingValue34, stateFlag)
  end
  localValue4 = 1
  stateFlag3 = localValue3.Extras
  stateFlag3 = #stateFlag3
  stateFlag4 = 1
  for stateFlag5 = localValue4, stateFlag3, stateFlag4 do
    workingValue31 = SetVehicleExtra
    workingValue32 = localValue1
    workingValue34 = localValue3.Extras
    workingValue34 = workingValue34[stateFlag5]
    stateFlag = false
    workingValue31(workingValue32, workingValue34, stateFlag)
  end
end
dataCollection3.MoveToPattern = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7
  localValue3 = ipairs
  localValue4 = localValue2.Extras
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = localValue1.config
    workingValue32 = workingValue32.extras
    workingValue32 = workingValue32[workingValue31]
    if not workingValue32 then
      workingValue34 = workingValue4
      stateFlag = "Entity "
      number3 = tostring
      text = localValue1.entity
      number3 = number3(text)
      text = " with model "
      modelHash = GetEntityModel
      text2 = localValue1.entity
      -- Beginner: result below is modelHash.
      modelHash = modelHash(text2)
      text2 = " has a NULL config for extra "
      stringHelper = tostring
      stateFlag2 = workingValue31
      stringHelper = stringHelper(stateFlag2)
      stateFlag = stateFlag .. number3 .. text .. modelHash .. text2 .. stringHelper
      workingValue34(stateFlag)
      break
    end
    workingValue34 = GetOffsetFromEntityInWorldCoords
    stateFlag = localValue1.entity
    number3 = workingValue32.offset
    number3 = number3.x
    text = workingValue32.offset
    text = text.y
    modelHash = workingValue32.offset
    modelHash = modelHash.z
    workingValue34 = workingValue34(stateFlag, number3, text, modelHash)
    stateFlag = workingValue32.colour
    if "red" == stateFlag then
      stateFlag = DrawLightWithRangeAndShadow
      number3 = workingValue34.x
      text = workingValue34.y
      modelHash = workingValue34.z
      text2 = 255
      stringHelper = 0
      stateFlag2 = 0
      number5 = 50.0
      number6 = 0.26
      number7 = 1.0
      stateFlag(number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7)
    else
      stateFlag = workingValue32.colour
      if "blue" == stateFlag then
        stateFlag = DrawLightWithRangeAndShadow
        number3 = workingValue34.x
        text = workingValue34.y
        modelHash = workingValue34.z
        text2 = 0
        stringHelper = 15
        stateFlag2 = 255
        number5 = 50.0
        number6 = 0.26
        number7 = 1.0
        stateFlag(number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7)
      else
        stateFlag = workingValue32.colour
        if "green" == stateFlag then
          stateFlag = DrawLightWithRangeAndShadow
          number3 = workingValue34.x
          text = workingValue34.y
          modelHash = workingValue34.z
          text2 = 0
          stringHelper = 255
          stateFlag2 = 0
          number5 = 50.0
          number6 = 0.26
          number7 = 1.0
          stateFlag(number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7)
        else
          stateFlag = workingValue32.colour
          if "amber" == stateFlag then
            stateFlag = DrawLightWithRangeAndShadow
            number3 = workingValue34.x
            text = workingValue34.y
            modelHash = workingValue34.z
            text2 = 255
            stringHelper = 194
            stateFlag2 = 0
            number5 = 50.0
            number6 = 0.26
            number7 = 1.0
            stateFlag(number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7)
          else
            stateFlag = workingValue32.colour
            if "white" == stateFlag then
              stateFlag = DrawLightWithRangeAndShadow
              number3 = workingValue34.x
              text = workingValue34.y
              modelHash = workingValue34.z
              text2 = 255
              stringHelper = 255
              stateFlag2 = 255
              number5 = 50.0
              number6 = 0.26
              number7 = 1.0
              stateFlag(number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7)
            end
          end
        end
      end
    end
  end
end
dataCollection3.DrawGlobalLighting = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10, workingValue12, workingValue14, workingValue16, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, number8, number9, number10, number11, number12, number13, number14, number15
  localValue3 = GetEntityMatrix
  localValue4 = localValue1.entity
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  stateFlag5 = mat3x3
  workingValue31 = localValue3
  workingValue32 = localValue4
  workingValue34 = stateFlag3
  stateFlag5 = stateFlag5(workingValue31, workingValue32, workingValue34)
  workingValue31 = ipairs
  workingValue32 = localValue2.Extras
  workingValue31, workingValue32, workingValue34, stateFlag = workingValue31(workingValue32)
  for number3, text in workingValue31, workingValue32, workingValue34, stateFlag do
    modelHash = localValue1.config
    modelHash = modelHash.extras
    modelHash = modelHash[text]
    text2 = ipairs
    stringHelper = modelHash
    text2, stringHelper, stateFlag2, number5 = text2(stringHelper)
    for number6, number7 in text2, stringHelper, stateFlag2, number5 do
      workingValue10 = number7.offset
      workingValue10 = workingValue10.x
      workingValue10 = localValue4 * workingValue10
      workingValue10 = stateFlag4 + workingValue10
      workingValue12 = number7.offset
      workingValue12 = workingValue12.y
      workingValue12 = localValue3 * workingValue12
      workingValue10 = workingValue10 + workingValue12
      workingValue12 = number7.offset
      workingValue12 = workingValue12.z
      workingValue12 = stateFlag3 * workingValue12
      workingValue10 = workingValue10 + workingValue12
      workingValue12 = workingValue.rotate
      workingValue14 = stateFlag5
      workingValue16 = number7.direction
      workingValue18 = stateFlag3
      workingValue12 = workingValue12(workingValue14, workingValue16, workingValue18)
      workingValue12 = workingValue12[1]
      workingValue14 = number7.colour
      if "red" == workingValue14 then
        workingValue14 = DrawSpotLight
        workingValue16 = workingValue10.x
        workingValue18 = workingValue10.y
        workingValue20 = workingValue10.z
        workingValue21 = workingValue12.x
        workingValue22 = workingValue12.y
        workingValue23 = workingValue12.z
        number8 = 255
        number9 = 0
        number10 = 0
        number11 = 60.0
        number12 = 1.0
        number13 = 0.0
        number14 = 45.0
        number15 = 100.0
        workingValue14(workingValue16, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, number8, number9, number10, number11, number12, number13, number14, number15)
      else
        workingValue14 = number7.colour
        if "blue" == workingValue14 then
          workingValue14 = DrawSpotLight
          workingValue16 = workingValue10.x
          workingValue18 = workingValue10.y
          workingValue20 = workingValue10.z
          workingValue21 = workingValue12.x
          workingValue22 = workingValue12.y
          workingValue23 = workingValue12.z
          number8 = 0
          number9 = 15
          number10 = 255
          number11 = 60.0
          number12 = 1.0
          number13 = 0.0
          number14 = 45.0
          number15 = 100.0
          workingValue14(workingValue16, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, number8, number9, number10, number11, number12, number13, number14, number15)
        else
          workingValue14 = number7.colour
          if "green" == workingValue14 then
            workingValue14 = DrawSpotLight
            workingValue16 = workingValue10.x
            workingValue18 = workingValue10.y
            workingValue20 = workingValue10.z
            workingValue21 = workingValue12.x
            workingValue22 = workingValue12.y
            workingValue23 = workingValue12.z
            number8 = 0
            number9 = 255
            number10 = 0
            number11 = 60.0
            number12 = 1.0
            number13 = 0.0
            number14 = 45.0
            number15 = 100.0
            workingValue14(workingValue16, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, number8, number9, number10, number11, number12, number13, number14, number15)
          else
            workingValue14 = number7.colour
            if "amber" == workingValue14 then
              workingValue14 = DrawSpotLight
              workingValue16 = workingValue10.x
              workingValue18 = workingValue10.y
              workingValue20 = workingValue10.z
              workingValue21 = workingValue12.x
              workingValue22 = workingValue12.y
              workingValue23 = workingValue12.z
              number8 = 255
              number9 = 194
              number10 = 0
              number11 = 60.0
              number12 = 1.0
              number13 = 0.0
              number14 = 45.0
              number15 = 100.0
              workingValue14(workingValue16, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, number8, number9, number10, number11, number12, number13, number14, number15)
            else
              workingValue14 = number7.colour
              if "white" == workingValue14 then
                workingValue14 = DrawSpotLight
                workingValue16 = workingValue10.x
                workingValue18 = workingValue10.y
                workingValue20 = workingValue10.z
                workingValue21 = workingValue12.x
                workingValue22 = workingValue12.y
                workingValue23 = workingValue12.z
                number8 = 255
                number9 = 255
                number10 = 255
                number11 = 60.0
                number12 = 1.0
                number13 = 0.0
                number14 = 45.0
                number15 = 100.0
                workingValue14(workingValue16, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, number8, number9, number10, number11, number12, number13, number14, number15)
              end
            end
          end
        end
      end
    end
  end
end
dataCollection3.DrawDirectionalLighting = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1.stage
  if 0 == localValue2 then
    localValue2 = localValue1.pattern
    localValue3 = 303108068
    localValue2 = localValue2[localValue3]
    localValue2.enabled = false
    localValue2 = dataCollection3.OnPatternDisable
    localValue3 = localValue1
    localValue4 = 303108068
    localValue2(localValue3, localValue4)
    localValue2 = localValue1.pattern
    localValue3 = -910931556
    localValue2 = localValue2[localValue3]
    localValue2.enabled = false
    localValue2 = dataCollection3.OnPatternDisable
    localValue3 = localValue1
    localValue4 = -910931556
    localValue2(localValue3, localValue4)
    localValue2 = localValue1.pattern
    localValue3 = -383838148
    localValue2 = localValue2[localValue3]
    localValue2.enabled = false
    localValue2 = dataCollection3.OnPatternDisable
    localValue3 = localValue1
    localValue4 = -383838148
    localValue2(localValue3, localValue4)
    localValue2 = localValue1.siren
    localValue2.tone = 0
    localValue2 = dataCollection3.OnSirenChange
    localValue3 = localValue1
    localValue2(localValue3)
    localValue2 = SetVehicleSiren
    localValue3 = localValue1.entity
    localValue4 = false
    localValue2(localValue3, localValue4)
  else
    localValue2 = localValue1.stage
    if 1 == localValue2 then
      localValue2 = localValue1.pattern
      localValue3 = 303108068
      localValue2 = localValue2[localValue3]
      localValue2.enabled = true
      localValue2 = SetVehicleSiren
      localValue3 = localValue1.entity
      localValue4 = true
      localValue2(localValue3, localValue4)
    end
  end
end
dataCollection3.OnStageChange = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6
  localValue3 = localValue1.pattern
  localValue3 = localValue3[localValue2]
  localValue4 = localValue3.enabled
  if not localValue4 then
    localValue4 = {}
    stateFlag3 = pairs
    stateFlag4 = localValue3.stages
    stateFlag3, stateFlag4, stateFlag5, workingValue31 = stateFlag3(stateFlag4)
    for workingValue32, workingValue34 in stateFlag3, stateFlag4, stateFlag5, workingValue31 do
      stateFlag = 1
      number3 = workingValue34.Extras
      number3 = #number3
      text = 1
      for modelHash = stateFlag, number3, text do
        text2 = workingValue34.Extras
        text2 = text2[modelHash]
        stringHelper = localValue4[text2]
        if not stringHelper then
          stringHelper = SetVehicleExtra
          stateFlag2 = localValue1.entity
          number5 = text2
          number6 = true
          stringHelper(stateFlag2, number5, number6)
          localValue4[text2] = true
        end
      end
    end
  end
end
dataCollection3.OnPatternDisable = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32
  localValue2 = localValue1.entity
  if not localValue2 then
    return
  end
  localValue2 = localValue1.bullhorn
  localValue2 = localValue2.enabled
  if localValue2 then
    localValue2 = localValue1.bullhorn
    localValue2 = localValue2.handle
    if nil == localValue2 then
      localValue2 = localValue1.config
      localValue2 = localValue2.sounds
      localValue2 = localValue2.mainHorn
      localValue2 = localValue2.audioString
      localValue3 = localValue1.bullhorn
      localValue4 = GetSoundId
      -- Beginner: result below is soundHandle.
      localValue4 = localValue4()
      localValue3.handle = localValue4
      localValue3 = IsCustomSound
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        localValue3 = PlaySoundFromEntity
        localValue4 = localValue1.bullhorn
        localValue4 = localValue4.handle
        stateFlag3 = localValue2
        stateFlag4 = localValue1.entity
        stateFlag5 = "DLC_XSIRENS_SOUNDSET"
        workingValue31 = false
        workingValue32 = 0
        localValue3(localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32)
      else
        localValue3 = PlaySoundFromEntity
        localValue4 = localValue1.bullhorn
        localValue4 = localValue4.handle
        stateFlag3 = localValue2
        stateFlag4 = localValue1.entity
        stateFlag5 = nil
        workingValue31 = false
        workingValue32 = 0
        localValue3(localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32)
      end
    end
  else
    localValue2 = localValue1.bullhorn
    localValue2 = localValue2.handle
    if nil ~= localValue2 then
      localValue2 = StopSound
      localValue3 = localValue1.bullhorn
      localValue3 = localValue3.handle
      localValue2(localValue3)
      localValue2 = ReleaseSoundId
      localValue3 = localValue1.bullhorn
      localValue3 = localValue3.handle
      localValue2(localValue3)
      localValue2 = localValue1.bullhorn
      localValue2.handle = nil
    end
  end
end
dataCollection3.OnBullhornChange = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32
  localValue2 = localValue1.entity
  if not localValue2 then
    return
  end
  localValue2 = localValue1.siren
  localValue2 = localValue2.tone
  if 0 ~= localValue2 then
    localValue2 = localValue1.siren
    localValue2 = localValue2.selected
    localValue3 = localValue1.siren
    localValue3 = localValue3.tone
    if localValue2 ~= localValue3 then
      localValue2 = localValue1.siren
      localValue2 = localValue2.handle
      if nil ~= localValue2 then
        localValue2 = StopSound
        localValue3 = localValue1.siren
        localValue3 = localValue3.handle
        localValue2(localValue3)
        localValue2 = ReleaseSoundId
        localValue3 = localValue1.siren
        localValue3 = localValue3.handle
        localValue2(localValue3)
      end
      localValue2 = GetSirenNameFromIndex
      localValue3 = localValue1
      localValue4 = localValue1.siren
      localValue4 = localValue4.tone
      localValue2 = localValue2(localValue3, localValue4)
      localValue3 = localValue1.siren
      localValue4 = GetSoundId
      -- Beginner: result below is soundHandle.
      localValue4 = localValue4()
      localValue3.handle = localValue4
      localValue3 = IsCustomSound
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        localValue3 = PlaySoundFromEntity
        localValue4 = localValue1.siren
        localValue4 = localValue4.handle
        stateFlag3 = localValue2
        stateFlag4 = localValue1.entity
        stateFlag5 = "DLC_XSIRENS_SOUNDSET"
        workingValue31 = false
        workingValue32 = 0
        localValue3(localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32)
      else
        localValue3 = PlaySoundFromEntity
        localValue4 = localValue1.siren
        localValue4 = localValue4.handle
        stateFlag3 = localValue2
        stateFlag4 = localValue1.entity
        stateFlag5 = nil
        workingValue31 = false
        workingValue32 = 0
        localValue3(localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32)
      end
    end
  else
    localValue2 = localValue1.siren
    localValue2 = localValue2.handle
    if nil ~= localValue2 then
      localValue2 = StopSound
      localValue3 = localValue1.siren
      localValue3 = localValue3.handle
      localValue2(localValue3)
      localValue2 = ReleaseSoundId
      localValue3 = localValue1.siren
      localValue3 = localValue3.handle
      localValue2(localValue3)
      localValue2 = localValue1.siren
      localValue2.handle = nil
    end
  end
  localValue2 = localValue1.siren
  localValue3 = localValue1.siren
  localValue3 = localValue3.tone
  localValue2.selected = localValue3
end
dataCollection3.OnSirenChange = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10, workingValue12, workingValue14, workingValue16
  localValue2 = {}
  localValue3 = pairs
  localValue4 = localValue1.pattern
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = pairs
    workingValue34 = workingValue31.stages
    workingValue32, workingValue34, stateFlag, number3 = workingValue32(workingValue34)
    for text, modelHash in workingValue32, workingValue34, stateFlag, number3 do
      text2 = pairs
      stringHelper = modelHash.Extras
      text2, stringHelper, stateFlag2, number5 = text2(stringHelper)
      for number6, number7 in text2, stringHelper, stateFlag2, number5 do
        workingValue10 = localValue2[number7]
        if not workingValue10 then
          workingValue10 = SetVehicleExtra
          workingValue12 = localValue1.entity
          workingValue14 = number7
          workingValue16 = true
          workingValue10(workingValue12, workingValue14, workingValue16)
          localValue2[number7] = true
        end
      end
    end
  end
end
dataCollection3.InitLights = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3
  if 1 == localValue2 then
    localValue3 = localValue1.config
    localValue3 = localValue3.sounds
    localValue3 = localValue3.srnTone1
    localValue3 = localValue3.audioString
    return localValue3
  elseif 2 == localValue2 then
    localValue3 = localValue1.config
    localValue3 = localValue3.sounds
    localValue3 = localValue3.srnTone2
    localValue3 = localValue3.audioString
    return localValue3
  elseif 3 == localValue2 then
    localValue3 = localValue1.config
    localValue3 = localValue3.sounds
    localValue3 = localValue3.srnTone3
    localValue3 = localValue3.audioString
    return localValue3
  elseif 4 == localValue2 then
    localValue3 = localValue1.config
    localValue3 = localValue3.sounds
    localValue3 = localValue3.srnTone4
    localValue3 = localValue3.audioString
    return localValue3
  end
  localValue3 = nil
  return localValue3
end
GetSirenNameFromIndex = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = string
  localValue2 = localValue2.match
  localValue3 = localValue1
  localValue4 = "siren_met"
  localValue2 = localValue2(localValue3, localValue4)
  if not localValue2 then
    localValue2 = IsAmbulanceSound
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
  end
  return localValue2
end
IsCustomSound = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = string
  localValue2 = localValue2.match
  localValue3 = localValue1
  localValue4 = "siren_nhs"
  return localValue2(localValue3, localValue4)
end
IsAmbulanceSound = workingValue6

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  number16 = localValue1
  localValue1 = ProcessCurrentVehicle
  localValue1()
  localValue1 = CheckVehicleStates
  localValue1()
  localValue1 = ProcessVehicleLights
  localValue1()
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3
  localValue1 = PerformInitialisation
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.createThreadOnTick
  localValue2 = workingValue6
  localValue3 = "ELS"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue1(localValue2, localValue3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(eventHandler)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10
  localValue1 = GetCurrentResourceName
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.loadResourceFile
  localValue3 = localValue1
  localValue4 = "cfg/els/config.json"
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = json
  localValue3 = localValue3.decode
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  dataCollection4 = localValue3
  localValue4 = {}
  dataCollection4.Pattern = localValue4
  localValue4 = CMG
  localValue4 = localValue4.loadResourceFile
  stateFlag3 = localValue1
  stateFlag4 = "cfg/els/primary.json"
  localValue4 = localValue4(stateFlag3, stateFlag4)
  stateFlag3 = dataCollection4.Pattern
  stateFlag4 = 303108068
  stateFlag5 = json
  stateFlag5 = stateFlag5.decode
  workingValue31 = localValue4
  stateFlag5 = stateFlag5(workingValue31)
  stateFlag3[stateFlag4] = stateFlag5
  stateFlag3 = CMG
  stateFlag3 = stateFlag3.loadResourceFile
  stateFlag4 = localValue1
  stateFlag5 = "cfg/els/secondary.json"
  stateFlag3 = stateFlag3(stateFlag4, stateFlag5)
  stateFlag4 = dataCollection4.Pattern
  stateFlag5 = -910931556
  workingValue31 = json
  workingValue31 = workingValue31.decode
  workingValue32 = stateFlag3
  workingValue31 = workingValue31(workingValue32)
  stateFlag4[stateFlag5] = workingValue31
  stateFlag4 = CMG
  stateFlag4 = stateFlag4.loadResourceFile
  stateFlag5 = localValue1
  workingValue31 = "cfg/els/warning.json"
  stateFlag4 = stateFlag4(stateFlag5, workingValue31)
  stateFlag5 = dataCollection4.Pattern
  workingValue31 = -383838148
  workingValue32 = json
  workingValue32 = workingValue32.decode
  workingValue34 = stateFlag4
  workingValue32 = workingValue32(workingValue34)
  stateFlag5[workingValue31] = workingValue32
  stateFlag5 = CMG
  stateFlag5 = stateFlag5.loadResourceFile
  workingValue31 = localValue1
  workingValue32 = "cfg/els/vcfs.json"
  stateFlag5 = stateFlag5(workingValue31, workingValue32)
  workingValue31 = json
  workingValue31 = workingValue31.decode
  workingValue32 = stateFlag5
  workingValue31 = workingValue31(workingValue32)
  if not workingValue31 then
    return
  end
  workingValue32 = ipairs
  workingValue34 = workingValue31
  workingValue32, workingValue34, stateFlag, number3 = workingValue32(workingValue34)
  for text, modelHash in workingValue32, workingValue34, stateFlag, number3 do
    text2 = CMG
    text2 = text2.loadResourceFile
    stringHelper = localValue1
    stateFlag2 = "cfg/els/vcf/"
    number5 = modelHash
    number6 = ".xml"
    stateFlag2 = stateFlag2 .. number5 .. number6
    text2 = text2(stringHelper, stateFlag2)
    if text2 then
      stringHelper = GetHashKey
      stateFlag2 = modelHash
      -- Beginner: result below is hash.
      stringHelper = stringHelper(stateFlag2)
      stateFlag2 = IsModelInCdimage
      number5 = stringHelper
      stateFlag2 = stateFlag2(number5)
      if stateFlag2 then
        stateFlag2 = pcall

        -- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
        function number5()
          local localValue12, localValue22, localValue32, workingValue29, stringHelper2
          localValue12 = GetVehicleFromXML
          localValue22 = text2
          localValue32 = modelHash
          localValue12, localValue22 = localValue12(localValue22, localValue32)
          if localValue12 then
            workingValue29 = stringHelper
            localValue32 = dataCollection5
            localValue32[workingValue29] = localValue12
          else
            localValue32 = WriteLoadError
            workingValue29 = modelHash
            stringHelper2 = localValue22
            localValue32(workingValue29, stringHelper2)
          end
        end
        stateFlag2, number5 = stateFlag2(number5)
        if not stateFlag2 then
          number6 = WriteLoadError
          number7 = modelHash
          workingValue10 = number5
          number6(number7, workingValue10)
        end
      else
        stateFlag2 = CMG
        stateFlag2 = stateFlag2.getVehicleIdFromModel
        number5 = stringHelper
        stateFlag2 = stateFlag2(number5)
        if not stateFlag2 then
          stateFlag2 = WriteLoadError
          number5 = modelHash
          number6 = "Vehicle model does not exist in the game or in garages config"
          stateFlag2(number5, number6)
        end
      end
    else
      stringHelper = WriteLoadError
      stateFlag2 = modelHash
      number5 = "File does not exist"
      stringHelper(stateFlag2, number5)
    end
  end
  workingValue32 = collectgarbage
  workingValue34 = "collect"
  workingValue32(workingValue34)
  workingValue32 = RequestScriptAudioBank
  workingValue34 = "DLC_XSIRENS\\XSIRENS_ONE"
  stateFlag = false
  workingValue32(workingValue34, stateFlag)
  workingValue32 = DecorRegister
  workingValue34 = "c102c26beb"
  stateFlag = 2
  workingValue32(workingValue34, stateFlag)
end
PerformInitialisation = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection2
  localValue3[localValue1] = localValue2
end
WriteLoadError = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  number17 = localValue1
  localValue1 = GetEntityCoords
  localValue2 = number17
  localValue3 = true
  -- Beginner: result below is entityCoords.
  localValue1 = localValue1(localValue2, localValue3)
  createVector3 = localValue1
  localValue1 = GetVehiclePedIsIn
  localValue2 = number17
  localValue3 = false
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1(localValue2, localValue3)
  number18 = localValue1
  localValue1 = number18
  if 0 == localValue1 then
    return
  end
  localValue1 = NetworkGetEntityIsNetworked
  localValue2 = number18
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue1 = GetPedInVehicleSeat
  localValue2 = number18
  localValue3 = -1
  localValue1 = localValue1(localValue2, localValue3)
  localValue2 = number17
  localValue1 = localValue1 == localValue2
  localValue2 = ProcessCivilianVehicle
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = GetEntityModel
  localValue3 = number18
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = dataCollection5
  if localValue3 then
    localValue3 = dataCollection5
    localValue3 = localValue3[localValue2]
    if localValue3 then
      goto continueAtStep47
    end
  end
  return
  ::continueAtStep47::
  if localValue1 then
    localValue3 = IsEntityInWater
    localValue4 = number18
    localValue3 = localValue3(localValue4)
    if localValue3 then
      localValue3 = IsThisModelABoat
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if not localValue3 then
        localValue3 = DisableCurrentVehicle
        localValue3()
        return
    end
    else
      localValue3 = DecorGetBool
      localValue4 = number18
      stateFlag3 = "c102c26beb"
      localValue3 = localValue3(localValue4, stateFlag3)
      if not localValue3 then
        localValue3 = GetSavedVehicleStateUsingEntity
        localValue4 = number18
        localValue3 = localValue3(localValue4)
        if localValue3 then
          localValue4 = dataCollection3.InitLights
          stateFlag3 = localValue3
          localValue4(stateFlag3)
          localValue4 = DecorSetBool
          stateFlag3 = number18
          stateFlag4 = "c102c26beb"
          stateFlag5 = true
          localValue4(stateFlag3, stateFlag4, stateFlag5)
        end
      end
    end
  else
    localValue3 = GetPedInVehicleSeat
    localValue4 = number18
    stateFlag3 = 0
    localValue3 = localValue3(localValue4, stateFlag3)
    localValue4 = number17
    if localValue3 ~= localValue4 then
      return
    end
  end
  localValue3 = DisableControlAction
  localValue4 = 0
  stateFlag3 = 81
  stateFlag4 = true
  localValue3(localValue4, stateFlag3, stateFlag4)
  localValue3 = DisableControlAction
  localValue4 = 0
  stateFlag3 = 82
  stateFlag4 = true
  localValue3(localValue4, stateFlag3, stateFlag4)
  localValue3 = DisableControlAction
  localValue4 = 0
  stateFlag3 = 83
  stateFlag4 = true
  localValue3(localValue4, stateFlag3, stateFlag4)
  localValue3 = DisableControlAction
  localValue4 = 0
  stateFlag3 = 84
  stateFlag4 = true
  localValue3(localValue4, stateFlag3, stateFlag4)
  localValue3 = DisableControlAction
  localValue4 = 0
  stateFlag3 = 85
  stateFlag4 = true
  localValue3(localValue4, stateFlag3, stateFlag4)
  localValue3 = SetVehRadioStation
  localValue4 = number18
  stateFlag3 = "OFF"
  localValue3(localValue4, stateFlag3)
  localValue3 = SetVehicleRadioEnabled
  localValue4 = number18
  stateFlag3 = false
  localValue3(localValue4, stateFlag3)
  localValue3 = SetVehicleHasMutedSirens
  localValue4 = number18
  stateFlag3 = true
  localValue3(localValue4, stateFlag3)
  localValue3 = GetLastInputMethod
  localValue4 = 0
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.StageChange
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Bullhorn
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneOne
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneTwo
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneThree
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Pattern
    stateFlag3 = stateFlag3.Primary
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Pattern
    stateFlag3 = stateFlag3.Secondary
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Pattern
    stateFlag3 = stateFlag3.Warning
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.StageChange
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeyStageChange
      localValue3()
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Bullhorn
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 and localValue1 then
      localValue3 = OnKeyBullhorn
      localValue4 = true
      localValue3(localValue4)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Bullhorn
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 and localValue1 then
      localValue3 = OnKeyBullhorn
      localValue4 = false
      localValue3(localValue4)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneOne
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 1
      stateFlag3 = true
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneOne
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 0
      stateFlag3 = false
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneTwo
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 2
      stateFlag3 = true
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneTwo
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 0
      stateFlag3 = false
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneThree
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 3
      stateFlag3 = true
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneThree
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 0
      stateFlag3 = false
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneFour
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 4
      stateFlag3 = true
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneFour
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 0
      stateFlag3 = false
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Pattern
    stateFlag3 = stateFlag3.Primary
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeyPattern
      localValue4 = 303108068
      localValue3(localValue4)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Pattern
    stateFlag3 = stateFlag3.Secondary
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeyPattern
      localValue4 = -910931556
      localValue3(localValue4)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Keyboard
    stateFlag3 = stateFlag3.Pattern
    stateFlag3 = stateFlag3.Warning
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeyPattern
      localValue4 = -383838148
      localValue3(localValue4)
    end
  else
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.StageChange
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Bullhorn
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneOne
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneTwo
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = DisableControlAction
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneThree
    stateFlag4 = true
    localValue3(localValue4, stateFlag3, stateFlag4)
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.StageChange
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeyStageChange
      localValue3()
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Bullhorn
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 and localValue1 then
      localValue3 = OnKeyBullhorn
      localValue4 = true
      localValue3(localValue4)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Bullhorn
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 and localValue1 then
      localValue3 = OnKeyBullhorn
      localValue4 = false
      localValue3(localValue4)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneOne
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 1
      stateFlag3 = true
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneOne
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 0
      stateFlag3 = false
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneTwo
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 2
      stateFlag3 = true
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneTwo
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 0
      stateFlag3 = false
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustPressed
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneThree
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 3
      stateFlag3 = true
      localValue3(localValue4, stateFlag3)
    end
    localValue3 = IsDisabledControlJustReleased
    localValue4 = 0
    stateFlag3 = dataCollection4.Controller
    stateFlag3 = stateFlag3.Siren
    stateFlag3 = stateFlag3.ToneThree
    localValue3 = localValue3(localValue4, stateFlag3)
    if localValue3 then
      localValue3 = OnKeySiren
      localValue4 = 0
      stateFlag3 = false
      localValue3(localValue4, stateFlag3)
    end
  end
end
ProcessCurrentVehicle = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5
  localValue2 = GetLastInputMethod
  localValue3 = 0
  localValue2 = localValue2(localValue3)
  if not localValue2 or not localValue1 then
    return
  end
  localValue2 = IsControlJustPressed
  localValue3 = 0
  localValue4 = dataCollection4.Keyboard
  localValue4 = localValue4.IndicatorLeft
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = GetVehicleIndicatorLights
    localValue3 = number18
    localValue2 = localValue2(localValue3)
    localValue3 = 1 ~= localValue2
    localValue4 = TriggerServerEvent
    stateFlag3 = "CMGELS:indicatorChange"
    stateFlag4 = 1
    stateFlag5 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:indicatorChange".
    localValue4(stateFlag3, stateFlag4, stateFlag5)
  end
  localValue2 = IsControlJustPressed
  localValue3 = 0
  localValue4 = dataCollection4.Keyboard
  localValue4 = localValue4.IndicatorRight
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = GetVehicleIndicatorLights
    localValue3 = number18
    localValue2 = localValue2(localValue3)
    localValue3 = 2 ~= localValue2
    localValue4 = TriggerServerEvent
    stateFlag3 = "CMGELS:indicatorChange"
    stateFlag4 = 2
    stateFlag5 = localValue3
    localValue4(stateFlag3, stateFlag4, stateFlag5)
  end
end
ProcessCivilianVehicle = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32
  localValue1 = pairs
  localValue2 = dataCollection7
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for stateFlag3 in localValue1, localValue2, localValue3, localValue4 do
    stateFlag4 = dataCollection6
    stateFlag4 = stateFlag4[stateFlag3]
    stateFlag5 = GetEntityCoords
    workingValue31 = stateFlag4.entity
    workingValue32 = true
    -- Beginner: result below is entityCoords.
    stateFlag5 = stateFlag5(workingValue31, workingValue32)
    workingValue31 = createVector3
    stateFlag5 = stateFlag5 - workingValue31
    stateFlag5 = #stateFlag5
    if stateFlag5 < 50.0 then
      stateFlag4.accurateLights = true
    else
      stateFlag4.accurateLights = false
    end
    stateFlag5 = SetVehicleAutoRepairDisabled
    workingValue31 = stateFlag4.entity
    workingValue32 = true
    stateFlag5(workingValue31, workingValue32)
    stateFlag5 = SetVehicleHasMutedSirens
    workingValue31 = stateFlag4.entity
    workingValue32 = true
    stateFlag5(workingValue31, workingValue32)
    stateFlag5 = dataCollection3.CheckPatterns
    workingValue31 = stateFlag4
    stateFlag5(workingValue31)
  end
end
ProcessVehicleLights = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, stateFlag3, stateFlag4
  localValue1 = GetSavedVehicleStateUsingEntity
  localValue2 = number18
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue2 = localValue1.stage
  localValue2 = localValue2 + 1
  localValue1.stage = localValue2
  localValue2 = localValue1.stage
  if 3 == localValue2 then
    localValue1.stage = 0
  end
  localValue2 = dataCollection3.OnStageChange
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = PlaySoundFrontend
  localValue3 = -1
  localValue4 = "NAV_UP_DOWN"
  stateFlag3 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  stateFlag4 = true
  localValue2(localValue3, localValue4, stateFlag3, stateFlag4)
  localValue2 = TriggerServerEvent
  localValue3 = "CMGELS:changeStage"
  localValue4 = localValue1.stage
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:changeStage".
  localValue2(localValue3, localValue4)
  localValue2 = localValue1.stage
  if 1 == localValue2 then
    localValue2 = IsAmbulanceSound
    localValue3 = localValue1.config
    localValue3 = localValue3.sounds
    localValue3 = localValue3.srnTone1
    localValue3 = localValue3.audioString
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = Citizen
      localValue2 = localValue2.CreateThreadNow
      localValue3 = PlayNineNineModeSound
      localValue2(localValue3)
    end
  end
end
OnKeyStageChange = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3
  localValue2 = GetSavedVehicleStateUsingEntity
  localValue3 = number18
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = localValue2.config
  localValue3 = localValue3.sounds
  localValue3 = localValue3.mainHorn
  if localValue3 then
    localValue3 = localValue2.config
    localValue3 = localValue3.sounds
    localValue3 = localValue3.mainHorn
    localValue3 = localValue3.audioString
    if "" ~= localValue3 then
      goto continueAtStep19
    end
  end
  return
  ::continueAtStep19::
  localValue3 = localValue2.bullhorn
  localValue3 = localValue3.enabled
  if localValue3 == localValue1 then
    return
  end
  localValue3 = localValue2.bullhorn
  localValue3.enabled = localValue1
  localValue3 = dataCollection3.OnBullhornChange
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = TriggerServerEvent
  localValue4 = "CMGELS:toggleBullhorn"
  stateFlag3 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:toggleBullhorn".
  localValue3(localValue4, stateFlag3)
end
OnKeyBullhorn = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4
  localValue3 = GetSavedVehicleStateUsingEntity
  localValue4 = number18
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue4 = localValue3.stage
  if 0 == localValue4 then
    return
  end
  localValue4 = GetSirenNameFromIndex
  stateFlag3 = localValue3
  stateFlag4 = localValue1
  localValue4 = localValue4(stateFlag3, stateFlag4)
  if "UNUSED" == localValue4 then
    return
  end
  if not localValue2 then
    localValue4 = localValue3.stage
    if 2 ~= localValue4 then
      return
    end
  end
  localValue4 = localValue3.siren
  localValue4 = localValue4.tone
  if localValue4 == localValue1 then
    localValue1 = 0
  end
  localValue4 = localValue3.siren
  localValue4.tone = localValue1
  localValue4 = dataCollection3.OnSirenChange
  stateFlag3 = localValue3
  localValue4(stateFlag3)
  localValue4 = TriggerServerEvent
  stateFlag3 = "CMGELS:toggleSiren"
  stateFlag4 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:toggleSiren".
  localValue4(stateFlag3, stateFlag4)
  localValue4 = localValue3.siren
  localValue4 = localValue4.tone
  if 0 ~= localValue4 then
    localValue4 = Citizen
    localValue4 = localValue4.CreateThreadNow
    stateFlag3 = PlaySirenSwitchSound
    localValue4(stateFlag3)
  end
end
OnKeySiren = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1) ===
function backgroundThread(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31
  localValue2 = GetSavedVehicleStateUsingEntity
  localValue3 = number18
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    return
  end
  localValue3 = localValue2.pattern
  localValue3 = localValue3[localValue1]
  localValue4 = localValue3.enabled
  localValue4 = not localValue4
  localValue3.enabled = localValue4
  localValue4 = localValue3.enabled
  if not localValue4 then
    localValue4 = dataCollection3.OnPatternDisable
    stateFlag3 = localValue2
    stateFlag4 = localValue1
    localValue4(stateFlag3, stateFlag4)
  end
  localValue4 = PlaySoundFrontend
  stateFlag3 = -1
  stateFlag4 = "NAV_UP_DOWN"
  stateFlag5 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
  workingValue31 = true
  localValue4(stateFlag3, stateFlag4, stateFlag5, workingValue31)
  localValue4 = GetIndexFromPattern
  stateFlag3 = localValue1
  localValue4 = localValue4(stateFlag3)
  stateFlag3 = TriggerServerEvent
  stateFlag4 = "CMGELS:patternChange"
  stateFlag5 = localValue4
  workingValue31 = localValue3.enabled
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:patternChange".
  stateFlag3(stateFlag4, stateFlag5, workingValue31)
end
OnKeyPattern = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = GetSavedVehicleStateUsingEntity
  localValue2 = number18
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue2 = localValue1.bullhorn
  localValue2 = localValue2.enabled
  if localValue2 then
    localValue2 = localValue1.bullhorn
    localValue2.enabled = false
    localValue2 = dataCollection3.OnBullhornChange
    localValue3 = localValue1
    localValue2(localValue3)
    localValue2 = TriggerServerEvent
    localValue3 = "CMGELS:toggleBullhorn"
    localValue4 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:toggleBullhorn".
    localValue2(localValue3, localValue4)
  end
  localValue2 = localValue1.siren
  localValue2 = localValue2.tone
  if 0 == localValue2 then
    localValue2 = localValue1.stage
    if 0 == localValue2 then
      goto continueAtStep35
    end
  end
  localValue1.stage = 0
  localValue2 = dataCollection3.OnStageChange
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = TriggerServerEvent
  localValue3 = "CMGELS:changeStage"
  localValue4 = 0
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "CMGELS:changeStage".
  localValue2(localValue3, localValue4)
  ::continueAtStep35::
end
DisableCurrentVehicle = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, stateFlag3
  while true do
    localValue1 = RequestScriptAudioBank
    localValue2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
    localValue3 = false
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "999sound"
  localValue4 = "dlc_elsaudio_sounds"
  stateFlag3 = false
  localValue1(localValue2, localValue3, localValue4, stateFlag3)
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 1000
  localValue1(localValue2)
  localValue1 = ReleaseNamedScriptAudioBank
  localValue2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
  localValue1(localValue2)
end
PlayNineNineModeSound = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, stateFlag3
  while true do
    localValue1 = RequestScriptAudioBank
    localValue2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
    localValue3 = false
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "sirenswitch"
  localValue4 = "dlc_elsaudio_sounds"
  stateFlag3 = false
  localValue1(localValue2, localValue3, localValue4, stateFlag3)
  localValue1 = Citizen
  localValue1 = localValue1.Wait
  localValue2 = 500
  localValue1(localValue2)
  localValue1 = ReleaseNamedScriptAudioBank
  localValue2 = "DLC_ELSAUDIO\\ELSAUDIO_ONE"
  localValue1(localValue2)
end
PlaySirenSwitchSound = backgroundThread

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2) ===
function backgroundThread(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "els_%s"
  stateFlag3 = localValue1
  localValue3 = localValue3(localValue4, stateFlag3)
  localValue4 = AddStateBagChangeHandler
  stateFlag3 = localValue3
  stateFlag4 = nil

  -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue12, localValue22, localValue32) ===
  function stateFlag5(localValue12, localValue22, localValue32)
    local workingValue29, stringHelper2, workingValue30, tableHelper, nameValue
    workingValue29 = tonumber
    stringHelper2 = stringsplit
    workingValue30 = localValue12
    tableHelper = ":"
    stringHelper2 = stringHelper2(workingValue30, tableHelper)
    stringHelper2 = stringHelper2[2]
    workingValue29 = workingValue29(stringHelper2)
    stringHelper2 = type
    workingValue30 = localValue32
    stringHelper2 = stringHelper2(workingValue30)
    if "table" == stringHelper2 then
      stringHelper2 = localValue2
      workingValue30 = workingValue29
      tableHelper = table
      tableHelper = tableHelper.unpack
      nameValue = localValue32
      tableHelper, nameValue = tableHelper(nameValue)
      stringHelper2(workingValue30, tableHelper, nameValue)
    else
      stringHelper2 = localValue2
      workingValue30 = workingValue29
      tableHelper = localValue32
      stringHelper2(workingValue30, tableHelper)
    end
  end
  localValue4(stateFlag3, stateFlag4, stateFlag5)
end
eventHandler = backgroundThread
cmgOperation = "stage"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3
  localValue3 = dataCollection5
  if not localValue3 then
    return
  end
  localValue3 = GetSavedVehicleState
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue3.stage = localValue2
  localValue4 = dataCollection3.OnStageChange
  stateFlag3 = localValue3
  localValue4(stateFlag3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(cmgOperation, workingValue7)
eventHandler = backgroundThread
cmgOperation = "siren"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = dataCollection5
  if not localValue3 then
    return
  end
  localValue3 = GetSavedVehicleState
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue4 = localValue3.siren
  localValue4.tone = localValue2
  localValue4 = dataCollection3.OnSirenChange
  stateFlag3 = localValue3
  localValue4(stateFlag3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(cmgOperation, workingValue7)
eventHandler = RegisterNetEvent
cmgOperation = "CMGELS:toggleBullhorn"
-- Beginner: this function handles network event "CMGELS:toggleBullhorn".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4
  localValue3 = dataCollection5
  if not localValue3 then
    return
  end
  localValue3 = GetSavedVehicleState
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue4 = localValue3.entity
  if localValue4 then
    localValue4 = GetPedInVehicleSeat
    stateFlag3 = localValue3.entity
    stateFlag4 = -1
    localValue4 = localValue4(stateFlag3, stateFlag4)
    stateFlag3 = number17
    if localValue4 ~= stateFlag3 then
      goto continueAtStep22
    end
  end
  return
  ::continueAtStep22::
  localValue4 = localValue3.bullhorn
  localValue4.enabled = localValue2
  localValue4 = dataCollection3.OnBullhornChange
  stateFlag3 = localValue3
  localValue4(stateFlag3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMGELS:toggleBullhorn".
eventHandler(cmgOperation, workingValue7)
eventHandler = backgroundThread
cmgOperation = "primary"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = dataCollection5
  if not localValue3 then
    return
  end
  localValue3 = GetSavedVehicleState
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue4 = GetPatternFromIndex
  stateFlag3 = 1
  localValue4 = localValue4(stateFlag3)
  stateFlag3 = localValue3.pattern
  stateFlag3 = stateFlag3[localValue4]
  stateFlag3.enabled = localValue2
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(cmgOperation, workingValue7)
eventHandler = backgroundThread
cmgOperation = "secondary"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = dataCollection5
  if not localValue3 then
    return
  end
  localValue3 = GetSavedVehicleState
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue4 = GetPatternFromIndex
  stateFlag3 = 2
  localValue4 = localValue4(stateFlag3)
  stateFlag3 = localValue3.pattern
  stateFlag3 = stateFlag3[localValue4]
  stateFlag3.enabled = localValue2
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(cmgOperation, workingValue7)
eventHandler = backgroundThread
cmgOperation = "warning"

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3
  localValue3 = Citizen
  localValue3 = localValue3.Wait
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = dataCollection5
  if not localValue3 then
    return
  end
  localValue3 = GetSavedVehicleState
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue4 = GetPatternFromIndex
  stateFlag3 = 3
  localValue4 = localValue4(stateFlag3)
  stateFlag3 = localValue3.pattern
  stateFlag3 = stateFlag3[localValue4]
  stateFlag3.enabled = localValue2
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventHandler(cmgOperation, workingValue7)
eventHandler = RegisterNetEvent
cmgOperation = "CMGELS:indicatorChange"
-- Beginner: this function handles network event "CMGELS:indicatorChange".

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2, localValue3) ===
function workingValue7(localValue1, localValue2, localValue3)
  local localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31
  localValue4 = NetworkDoesNetworkIdExist
  stateFlag3 = localValue1
  localValue4 = localValue4(stateFlag3)
  if not localValue4 then
    return
  end
  localValue4 = NetworkGetEntityFromNetworkId
  stateFlag3 = localValue1
  localValue4 = localValue4(stateFlag3)
  if 0 == localValue4 then
    return
  end
  if 1 == localValue2 then
    stateFlag3 = SetVehicleIndicatorLights
    stateFlag4 = localValue4
    stateFlag5 = 0
    workingValue31 = false
    stateFlag3(stateFlag4, stateFlag5, workingValue31)
    stateFlag3 = SetVehicleIndicatorLights
    stateFlag4 = localValue4
    stateFlag5 = 1
    workingValue31 = localValue3
    stateFlag3(stateFlag4, stateFlag5, workingValue31)
  elseif 2 == localValue2 then
    stateFlag3 = SetVehicleIndicatorLights
    stateFlag4 = localValue4
    stateFlag5 = 0
    workingValue31 = localValue3
    stateFlag3(stateFlag4, stateFlag5, workingValue31)
    stateFlag3 = SetVehicleIndicatorLights
    stateFlag4 = localValue4
    stateFlag5 = 1
    workingValue31 = false
    stateFlag3(stateFlag4, stateFlag5, workingValue31)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "CMGELS:indicatorChange".
eventHandler(cmgOperation, workingValue7)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4
  localValue2 = dataCollection6
  localValue2 = localValue2[localValue1]
  if localValue2 then
    return localValue2
  end
  localValue3 = {}
  localValue2 = localValue3
  localValue2.stage = 0
  localValue2.accurateLights = false
  localValue3 = {}
  localValue2.siren = localValue3
  localValue3 = localValue2.siren
  localValue3.tone = 0
  localValue3 = {}
  localValue2.bullhorn = localValue3
  localValue3 = localValue2.bullhorn
  localValue3.enabled = false
  localValue3 = {}
  localValue2.pattern = localValue3
  localValue3 = localValue2.pattern
  localValue4 = 303108068
  stateFlag3 = {}
  localValue3[localValue4] = stateFlag3
  localValue3 = localValue2.pattern
  localValue4 = 303108068
  localValue3 = localValue3[localValue4]
  localValue3.enabled = false
  localValue3 = localValue2.pattern
  localValue4 = 303108068
  localValue3 = localValue3[localValue4]
  localValue3.current = 1
  localValue3 = localValue2.pattern
  localValue4 = 303108068
  localValue3 = localValue3[localValue4]
  localValue3.updated = 0
  localValue3 = localValue2.pattern
  localValue4 = 303108068
  localValue3 = localValue3[localValue4]
  localValue4 = dataCollection4.Pattern
  stateFlag3 = 303108068
  localValue4 = localValue4[stateFlag3]
  localValue3.stages = localValue4
  localValue3 = localValue2.pattern
  localValue4 = -910931556
  stateFlag3 = {}
  localValue3[localValue4] = stateFlag3
  localValue3 = localValue2.pattern
  localValue4 = -910931556
  localValue3 = localValue3[localValue4]
  localValue3.enabled = false
  localValue3 = localValue2.pattern
  localValue4 = -910931556
  localValue3 = localValue3[localValue4]
  localValue3.current = 1
  localValue3 = localValue2.pattern
  localValue4 = -910931556
  localValue3 = localValue3[localValue4]
  localValue3.updated = 0
  localValue3 = localValue2.pattern
  localValue4 = -910931556
  localValue3 = localValue3[localValue4]
  localValue4 = dataCollection4.Pattern
  stateFlag3 = -910931556
  localValue4 = localValue4[stateFlag3]
  localValue3.stages = localValue4
  localValue3 = localValue2.pattern
  localValue4 = -383838148
  stateFlag3 = {}
  localValue3[localValue4] = stateFlag3
  localValue3 = localValue2.pattern
  localValue4 = -383838148
  localValue3 = localValue3[localValue4]
  localValue3.enabled = false
  localValue3 = localValue2.pattern
  localValue4 = -383838148
  localValue3 = localValue3[localValue4]
  localValue3.current = 1
  localValue3 = localValue2.pattern
  localValue4 = -383838148
  localValue3 = localValue3[localValue4]
  localValue3.updated = 0
  localValue3 = localValue2.pattern
  localValue4 = -383838148
  localValue3 = localValue3[localValue4]
  localValue4 = dataCollection4.Pattern
  stateFlag3 = -383838148
  localValue4 = localValue4[stateFlag3]
  localValue3.stages = localValue4
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue2.createTime = localValue3
  localValue3 = NetworkDoesEntityExistWithNetworkId
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = NetworkGetEntityFromNetworkId
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    localValue4 = LoadConfigurationIntoState
    stateFlag3 = localValue2
    stateFlag4 = localValue3
    localValue4 = localValue4(stateFlag3, stateFlag4)
    if not localValue4 then
      localValue4 = nil
      return localValue4
    end
    localValue2.entity = localValue3
  end
  localValue3 = dataCollection6
  localValue3[localValue1] = localValue2
  return localValue2
end
GetSavedVehicleState = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    localValue3 = nil
    return localValue3
  end
  localValue3 = GetSavedVehicleState
  localValue4 = localValue2
  return localValue3(localValue4)
end
GetSavedVehicleStateUsingEntity = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2
  localValue2 = dataCollection6
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = true
    return localValue2
  else
    localValue2 = false
    return localValue2
  end
end
DoesVehicleStateExist = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = NetworkGetNetworkIdFromEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 0 == localValue2 then
    localValue3 = false
    return localValue3
  end
  localValue3 = DoesVehicleStateExist
  localValue4 = localValue2
  return localValue3(localValue4)
end
DoesVehicleStateExistUsingEntity = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32
  localValue1 = pairs
  localValue2 = dataCollection7
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for stateFlag3, stateFlag4 in localValue1, localValue2, localValue3, localValue4 do
    stateFlag5 = DoesEntityExist
    workingValue31 = stateFlag4
    stateFlag5 = stateFlag5(workingValue31)
    if not stateFlag5 then
      stateFlag5 = VehicleLeftScope
      workingValue31 = stateFlag3
      workingValue32 = dataCollection6
      workingValue32 = workingValue32[stateFlag3]
      stateFlag5(workingValue31, workingValue32)
      stateFlag5 = dataCollection6
      stateFlag5[stateFlag3] = nil
    end
  end
  localValue1 = pairs
  localValue2 = dataCollection6
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for stateFlag3, stateFlag4 in localValue1, localValue2, localValue3, localValue4 do
    stateFlag5 = dataCollection7
    stateFlag5 = stateFlag5[stateFlag3]
    if not stateFlag5 then
      stateFlag5 = NetworkDoesEntityExistWithNetworkId
      workingValue31 = stateFlag3
      stateFlag5 = stateFlag5(workingValue31)
      if stateFlag5 then
        stateFlag5 = VehicleEnteredScope
        workingValue31 = stateFlag3
        workingValue32 = stateFlag4
        stateFlag5(workingValue31, workingValue32)
      else
        stateFlag5 = stateFlag4.createTime
        if stateFlag5 then
          stateFlag5 = number16
          workingValue31 = stateFlag4.createTime
          stateFlag5 = stateFlag5 - workingValue31
          workingValue31 = 10000
          if stateFlag5 > workingValue31 then
            stateFlag5 = dataCollection6
            stateFlag5[stateFlag3] = nil
          end
        end
      end
    end
  end
end
CheckVehicleStates = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3
  localValue3 = NetworkGetEntityFromNetworkId
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    return
  end
  localValue4 = DoesEntityExist
  stateFlag3 = localValue3
  localValue4 = localValue4(stateFlag3)
  if not localValue4 then
    localValue4 = workingValue4
    stateFlag3 = "Invalid entity "
    stateFlag4 = tostring
    stateFlag5 = localValue3
    stateFlag4 = stateFlag4(stateFlag5)
    stateFlag5 = " returned from the network id"
    stateFlag3 = stateFlag3 .. stateFlag4 .. stateFlag5
    localValue4(stateFlag3)
    return
  end
  localValue4 = localValue2.config
  if not localValue4 then
    localValue4 = LoadConfigurationIntoState
    stateFlag3 = localValue2
    stateFlag4 = localValue3
    localValue4 = localValue4(stateFlag3, stateFlag4)
    if not localValue4 then
      return
    end
  end
  localValue4 = dataCollection7
  localValue4[localValue1] = localValue3
  localValue2.entity = localValue3
  localValue4 = SetVehicleAutoRepairDisabled
  stateFlag3 = localValue3
  stateFlag4 = true
  localValue4(stateFlag3, stateFlag4)
  localValue4 = SetVehicleHasMutedSirens
  stateFlag3 = localValue3
  stateFlag4 = true
  localValue4(stateFlag3, stateFlag4)
  localValue4 = pairs
  stateFlag3 = dataCollection4.Pattern
  localValue4, stateFlag3, stateFlag4, stateFlag5 = localValue4(stateFlag3)
  for workingValue31, workingValue32 in localValue4, stateFlag3, stateFlag4, stateFlag5 do
    workingValue34 = localValue2.pattern
    workingValue34 = workingValue34[workingValue31]
    workingValue34 = workingValue34.enabled
    if workingValue34 then
      workingValue34 = SetVehicleSiren
      stateFlag = localValue3
      number3 = true
      workingValue34(stateFlag, number3)
    end
  end
  localValue4 = localValue2.siren
  localValue4 = localValue4.tone
  if 0 ~= localValue4 then
    localValue4 = localValue2.siren
    localValue4 = localValue4.handle
    if not localValue4 then
      localValue4 = dataCollection3.OnSirenChange
      stateFlag3 = localValue2
      localValue4(stateFlag3)
    end
  end
end
VehicleEnteredScope = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = dataCollection7
  localValue3[localValue1] = nil
  localValue3 = localValue2.siren
  localValue3 = localValue3.tone
  if 0 ~= localValue3 then
    localValue3 = localValue2.siren
    localValue3 = localValue3.handle
    if localValue3 then
      localValue3 = StopSound
      localValue4 = localValue2.siren
      localValue4 = localValue4.handle
      localValue3(localValue4)
      localValue3 = ReleaseSoundId
      localValue4 = localValue2.siren
      localValue4 = localValue4.handle
      localValue3(localValue4)
      localValue3 = localValue2.siren
      localValue3.handle = nil
      localValue3 = localValue2.siren
      localValue3.selected = nil
    end
  end
  localValue3 = localValue2.bullhorn
  localValue3 = localValue3.enabled
  if localValue3 then
    localValue3 = localValue2.bullhorn
    localValue3 = localValue3.handle
    if localValue3 then
      localValue3 = StopSound
      localValue4 = localValue2.bullhorn
      localValue4 = localValue4.handle
      localValue3(localValue4)
      localValue3 = ReleaseSoundId
      localValue4 = localValue2.bullhorn
      localValue4 = localValue4.handle
      localValue3(localValue4)
      localValue3 = localValue2.bullhorn
      localValue3.handle = nil
      localValue3 = localValue2.bullhorn
      localValue3.enabled = false
    end
  end
  localValue2.entity = nil
end
VehicleLeftScope = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34
  localValue3 = GetEntityModel
  localValue4 = localValue2
  -- Beginner: result below is modelHash.
  localValue3 = localValue3(localValue4)
  if 0 == localValue3 then
    localValue4 = workingValue4
    stateFlag3 = "Entity "
    stateFlag4 = tostring
    stateFlag5 = localValue2
    stateFlag4 = stateFlag4(stateFlag5)
    stateFlag5 = " has a invalid model (0)"
    stateFlag3 = stateFlag3 .. stateFlag4 .. stateFlag5
    localValue4(stateFlag3)
    localValue4 = false
    return localValue4
  end
  localValue4 = dataCollection5
  localValue4 = localValue4[localValue3]
  if not localValue4 then
    stateFlag3 = workingValue4
    stateFlag4 = "Entity "
    stateFlag5 = tostring
    workingValue31 = localValue2
    stateFlag5 = stateFlag5(workingValue31)
    workingValue31 = " with model "
    workingValue32 = tostring
    workingValue34 = localValue3
    workingValue32 = workingValue32(workingValue34)
    workingValue34 = " does not have an VCF defined."
    stateFlag4 = stateFlag4 .. stateFlag5 .. workingValue31 .. workingValue32 .. workingValue34
    stateFlag3(stateFlag4)
    stateFlag3 = false
    return stateFlag3
  end
  localValue1.config = localValue4
  stateFlag3 = localValue1.config
  stateFlag3 = stateFlag3.pattern
  stateFlag4 = 303108068
  stateFlag3 = stateFlag3[stateFlag4]
  if stateFlag3 then
    stateFlag4 = localValue1.pattern
    stateFlag5 = 303108068
    stateFlag4 = stateFlag4[stateFlag5]
    stateFlag4.stages = stateFlag3
  end
  stateFlag4 = localValue1.config
  stateFlag4 = stateFlag4.pattern
  stateFlag5 = -910931556
  stateFlag4 = stateFlag4[stateFlag5]
  if stateFlag4 then
    stateFlag5 = localValue1.pattern
    workingValue31 = -910931556
    stateFlag5 = stateFlag5[workingValue31]
    stateFlag5.stages = stateFlag4
  end
  stateFlag5 = localValue1.config
  stateFlag5 = stateFlag5.pattern
  workingValue31 = -383838148
  stateFlag5 = stateFlag5[workingValue31]
  if stateFlag5 then
    workingValue31 = localValue1.pattern
    workingValue32 = -383838148
    workingValue31 = workingValue31[workingValue32]
    workingValue31.stages = stateFlag5
  end
  workingValue31 = true
  return workingValue31
end
LoadConfigurationIntoState = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2
  if 303108068 == localValue1 then
    localValue2 = 1
    return localValue2
  elseif -910931556 == localValue1 then
    localValue2 = 2
    return localValue2
  elseif -383838148 == localValue1 then
    localValue2 = 3
    return localValue2
  end
end
GetIndexFromPattern = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2
  if 1 == localValue1 then
    localValue2 = 303108068
    return localValue2
  elseif 2 == localValue1 then
    localValue2 = -910931556
    return localValue2
  elseif 3 == localValue1 then
    localValue2 = -383838148
    return localValue2
  end
end
GetPatternFromIndex = eventHandler

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2
  if 303108068 == localValue1 then
    localValue2 = "PRIMARY"
    return localValue2
  elseif -910931556 == localValue1 then
    localValue2 = "SECONDARY"
    return localValue2
  elseif -383838148 == localValue1 then
    localValue2 = "WARNING"
    return localValue2
  end
end
GetPatternNameFromPattern = eventHandler
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1) ===
function cmgOperation(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32
  localValue2 = DoesVehicleStateExistUsingEntity
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = GetSavedVehicleStateUsingEntity
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue3 = pairs
      localValue4 = localValue2.pattern
      localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
      for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
        workingValue32 = workingValue31.enabled
        if workingValue32 then
          workingValue32 = true
          return workingValue32
        end
      end
    end
  end
  localValue2 = false
  return localValue2
end
eventHandler.elsDoesVehicleHaveLightsEnabled = cmgOperation
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1) ===
function cmgOperation(localValue1)
  local localValue2, localValue3
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = dataCollection5
  localValue3 = localValue3[localValue2]
  if localValue3 then
    localValue3 = true
    return localValue3
  else
    localValue3 = false
    return localValue3
  end
end
eventHandler.elsDoesVehicleHaveConfig = cmgOperation

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash
  localValue3 = ipairs
  localValue4 = localValue2.kids
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = string
    workingValue32 = workingValue32.upper
    workingValue34 = string
    workingValue34 = workingValue34.sub
    stateFlag = workingValue31.name
    number3 = 1
    text = -3
    workingValue34, stateFlag, number3, text, modelHash = workingValue34(stateFlag, number3, text)
    workingValue32 = workingValue32(workingValue34, stateFlag, number3, text, modelHash)
    if "EXTRA" == workingValue32 then
      workingValue32 = workingValue31.attr
      workingValue32 = workingValue32.AllowEnvLight
      if "true" == workingValue32 then
        workingValue32 = {}
        workingValue34 = vector3
        stateFlag = tonumber
        number3 = workingValue31.attr
        number3 = number3.OffsetX
        stateFlag = stateFlag(number3)
        if not stateFlag then
          stateFlag = 0.0
        end
        number3 = tonumber
        text = workingValue31.attr
        text = text.OffsetY
        number3 = number3(text)
        if not number3 then
          number3 = 0.0
        end
        text = tonumber
        modelHash = workingValue31.attr
        modelHash = modelHash.OffsetZ
        text = text(modelHash)
        if not text then
          text = 0.0
        end
        workingValue34 = workingValue34(stateFlag, number3, text)
        workingValue32.offset = workingValue34
        workingValue34 = string
        workingValue34 = workingValue34.lower
        stateFlag = workingValue31.attr
        stateFlag = stateFlag.Color
        workingValue34 = workingValue34(stateFlag)
        workingValue32.colour = workingValue34
        workingValue34 = tonumber
        stateFlag = string
        stateFlag = stateFlag.sub
        number3 = workingValue31.name
        text = -2
        stateFlag, number3, text, modelHash = stateFlag(number3, text)
        workingValue34 = workingValue34(stateFlag, number3, text, modelHash)
        if workingValue34 then
          stateFlag = localValue1.extras
          stateFlag[workingValue34] = workingValue32
        end
      end
    end
  end
  localValue3 = localValue1.version
  if localValue3 then
    localValue3 = error
    localValue4 = "A VCF version has already been specified"
    localValue3(localValue4)
  else
    localValue1.version = 1
  end
end

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1) ===
function cmgOperation(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash
  localValue2 = {}
  localValue3 = ipairs
  localValue4 = localValue1.kids
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = workingValue31.name
    if "Light" == workingValue32 then
      workingValue32 = {}
      workingValue34 = vector3
      stateFlag = tonumber
      number3 = workingValue31.attr
      number3 = number3.OffsetX
      stateFlag = stateFlag(number3)
      if not stateFlag then
        stateFlag = 0.0
      end
      number3 = tonumber
      text = workingValue31.attr
      text = text.OffsetY
      number3 = number3(text)
      if not number3 then
        number3 = 0.0
      end
      text = tonumber
      modelHash = workingValue31.attr
      modelHash = modelHash.OffsetZ
      text = text(modelHash)
      if not text then
        text = 0.0
      end
      workingValue34 = workingValue34(stateFlag, number3, text)
      workingValue32.offset = workingValue34
      workingValue34 = workingValue32.offset
      if not workingValue34 then
        workingValue34 = error
        stateFlag = "Failed to get offset for extra light"
        workingValue34(stateFlag)
      end
      workingValue34 = tonumber
      stateFlag = workingValue31.attr
      stateFlag = stateFlag.Direction
      workingValue34 = workingValue34(stateFlag)
      workingValue32.direction = workingValue34
      workingValue34 = workingValue32.direction
      if not workingValue34 then
        workingValue34 = error
        stateFlag = "Failed to get direction for extra light"
        workingValue34(stateFlag)
      else
        workingValue34 = workingValue.rad
        stateFlag = workingValue32.direction
        workingValue34 = workingValue34(stateFlag)
        workingValue32.direction = workingValue34
      end
      workingValue34 = workingValue31.attr
      workingValue34 = workingValue34.Colour
      workingValue32.colour = workingValue34
      workingValue34 = workingValue32.colour
      if not workingValue34 then
        workingValue34 = error
        stateFlag = "Failed to get colour for extra light"
        workingValue34(stateFlag)
      end
      workingValue34 = table
      workingValue34 = workingValue34.insert
      stateFlag = localValue2
      number3 = workingValue32
      workingValue34(stateFlag, number3)
    end
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3
  localValue3 = ipairs
  localValue4 = localValue2.kids
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = workingValue31.name
    if "Extra" == workingValue32 then
      workingValue32 = tonumber
      workingValue34 = workingValue31.attr
      workingValue34 = workingValue34.Number
      workingValue32 = workingValue32(workingValue34)
      if workingValue32 then
        workingValue34 = localValue1.extras
        stateFlag = cmgOperation
        number3 = workingValue31
        stateFlag = stateFlag(number3)
        workingValue34[workingValue32] = stateFlag
      end
    end
  end
  localValue3 = localValue1.version
  if localValue3 then
    localValue3 = error
    localValue4 = "A VCF version has already been specified"
    localValue3(localValue4)
  else
    localValue1.version = 2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2) ===
function workingValue8(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag
  localValue3 = ipairs
  localValue4 = localValue2.kids
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = workingValue31.name
    if "MainHorn" == workingValue32 then
      workingValue32 = localValue1.sounds
      workingValue34 = {}
      stateFlag = workingValue31.attr
      stateFlag = stateFlag.AudioString
      workingValue34.audioString = stateFlag
      workingValue32.mainHorn = workingValue34
    else
      workingValue32 = workingValue31.name
      if "SrnTone1" == workingValue32 then
        workingValue32 = localValue1.sounds
        workingValue34 = {}
        stateFlag = workingValue31.attr
        stateFlag = stateFlag.AudioString
        workingValue34.audioString = stateFlag
        workingValue32.srnTone1 = workingValue34
      else
        workingValue32 = workingValue31.name
        if "SrnTone2" == workingValue32 then
          workingValue32 = localValue1.sounds
          workingValue34 = {}
          stateFlag = workingValue31.attr
          stateFlag = stateFlag.AudioString
          workingValue34.audioString = stateFlag
          workingValue32.srnTone2 = workingValue34
        else
          workingValue32 = workingValue31.name
          if "SrnTone3" == workingValue32 then
            workingValue32 = localValue1.sounds
            workingValue34 = {}
            stateFlag = workingValue31.attr
            stateFlag = stateFlag.AudioString
            workingValue34.audioString = stateFlag
            workingValue32.srnTone3 = workingValue34
          else
            workingValue32 = workingValue31.name
            if "SrnTone4" == workingValue32 then
              workingValue32 = localValue1.sounds
              workingValue34 = {}
              stateFlag = workingValue31.attr
              stateFlag = stateFlag.AudioString
              workingValue34.audioString = stateFlag
              workingValue32.srnTone4 = workingValue34
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag
  localValue3 = {}
  localValue4 = localValue1
  stateFlag3 = localValue2
  localValue4 = localValue4 .. stateFlag3
  stateFlag3 = localValue4
  localValue4 = localValue4.gmatch
  stateFlag4 = "(.-)"
  stateFlag5 = localValue2
  stateFlag4 = stateFlag4 .. stateFlag5
  localValue4, stateFlag3, stateFlag4, stateFlag5 = localValue4(stateFlag3, stateFlag4)
  for workingValue31 in localValue4, stateFlag3, stateFlag4, stateFlag5 do
    workingValue32 = table
    workingValue32 = workingValue32.insert
    workingValue34 = localValue3
    stateFlag = workingValue31
    workingValue32(workingValue34, stateFlag)
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text
  localValue2 = workingValue9
  localValue3 = localValue1
  localValue4 = ","
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = {}
  localValue4 = ipairs
  stateFlag3 = localValue2
  localValue4, stateFlag3, stateFlag4, stateFlag5 = localValue4(stateFlag3)
  for workingValue31, workingValue32 in localValue4, stateFlag3, stateFlag4, stateFlag5 do
    workingValue34 = tonumber
    stateFlag = workingValue32
    workingValue34 = workingValue34(stateFlag)
    if workingValue34 then
      stateFlag = table
      stateFlag = stateFlag.insert
      number3 = localValue3
      text = workingValue34
      stateFlag(number3, text)
    end
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag
  localValue2 = {}
  localValue3 = ipairs
  localValue4 = localValue1.el
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = {}
    workingValue34 = tonumber
    stateFlag = workingValue31.attr
    stateFlag = stateFlag.Duration
    workingValue34 = workingValue34(stateFlag)
    workingValue32.Milliseconds = workingValue34
    workingValue34 = workingValue11
    stateFlag = workingValue31.attr
    stateFlag = stateFlag.Extras
    workingValue34 = workingValue34(stateFlag)
    workingValue32.Extras = workingValue34
    workingValue34 = #localValue2
    workingValue34 = workingValue34 + 1
    localValue2[workingValue34] = workingValue32
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2) ===
function workingValue15(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3
  localValue3 = ipairs
  localValue4 = localValue2.kids
  localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
  for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
    workingValue32 = workingValue31.name
    if "Primary" == workingValue32 then
      workingValue32 = localValue1.pattern
      workingValue34 = 303108068
      stateFlag = workingValue13
      number3 = workingValue31
      stateFlag = stateFlag(number3)
      workingValue32[workingValue34] = stateFlag
    else
      workingValue32 = workingValue31.name
      if "Secondary" == workingValue32 then
        workingValue32 = localValue1.pattern
        workingValue34 = -910931556
        stateFlag = workingValue13
        number3 = workingValue31
        stateFlag = stateFlag(number3)
        workingValue32[workingValue34] = stateFlag
      else
        workingValue32 = workingValue31.name
        if "Warning" == workingValue32 then
          workingValue32 = localValue1.pattern
          workingValue34 = -383838148
          stateFlag = workingValue13
          number3 = workingValue31
          stateFlag = stateFlag(number3)
          workingValue32[workingValue34] = stateFlag
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1, localValue2) ===
function workingValue17(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6
  if not localValue1 then
    localValue3 = nil
    return localValue3
  end
  localValue3 = {}
  localValue4 = ipairs
  stateFlag3 = localValue1
  localValue4, stateFlag3, stateFlag4, stateFlag5 = localValue4(stateFlag3)
  for workingValue31, workingValue32 in localValue4, stateFlag3, stateFlag4, stateFlag5 do
    workingValue34 = {}
    stateFlag = ipairs
    number3 = workingValue32.Extras
    if not number3 then
      number3 = {}
    end
    stateFlag, number3, text, modelHash = stateFlag(number3)
    for text2, stringHelper in stateFlag, number3, text, modelHash do
      stateFlag2 = localValue2[stringHelper]
      if stateFlag2 then
        stateFlag2 = table
        stateFlag2 = stateFlag2.insert
        number5 = workingValue34
        number6 = stringHelper
        stateFlag2(number5, number6)
      end
    end
    stateFlag = #localValue3
    stateFlag = stateFlag + 1
    number3 = {}
    text = workingValue32.Milliseconds
    number3.Milliseconds = text
    number3.Extras = workingValue34
    localValue3[stateFlag] = number3
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1) ===
function workingValue19(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10, workingValue12, workingValue14, workingValue16
  localValue2 = pairs
  localValue3 = localValue1.pattern
  localValue2, localValue3, localValue4, stateFlag3 = localValue2(localValue3)
  for stateFlag4, stateFlag5 in localValue2, localValue3, localValue4, stateFlag3 do
    workingValue31 = ipairs
    workingValue32 = stateFlag5
    workingValue31, workingValue32, workingValue34, stateFlag = workingValue31(workingValue32)
    for number3, text in workingValue31, workingValue32, workingValue34, stateFlag do
      modelHash = text.Milliseconds
      if not modelHash then
        modelHash = false
        text2 = string
        text2 = text2.format
        stringHelper = "Unable to convert milliseconds in custom pattern %s"
        stateFlag2 = stateFlag4
        text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10, workingValue12, workingValue14, workingValue16 = text2(stringHelper, stateFlag2)
        return modelHash, text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10, workingValue12, workingValue14, workingValue16
      end
      modelHash = text.Extras
      if not modelHash then
        modelHash = false
        text2 = string
        text2 = text2.format
        stringHelper = "Unable to convert extras in custom pattern %s"
        stateFlag2 = stateFlag4
        text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10, workingValue12, workingValue14, workingValue16 = text2(stringHelper, stateFlag2)
        return modelHash, text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10, workingValue12, workingValue14, workingValue16
      end
      modelHash = ipairs
      text2 = text.Extras
      modelHash, text2, stringHelper, stateFlag2 = modelHash(text2)
      for number5, number6 in modelHash, text2, stringHelper, stateFlag2 do
        if number6 < 1 or number6 > 12 then
          number7 = false
          workingValue10 = string
          workingValue10 = workingValue10.format
          workingValue12 = "Extra %d out of the range 1 to 12 in custom pattern %s"
          workingValue14 = number6
          workingValue16 = stateFlag4
          workingValue10, workingValue12, workingValue14, workingValue16 = workingValue10(workingValue12, workingValue14, workingValue16)
          return number7, workingValue10, workingValue12, workingValue14, workingValue16
        end
      end
    end
  end
  localValue2 = localValue1.sounds
  if not localValue2 then
    localValue2 = false
    localValue3 = "Sounds section does not exist"
    return localValue2, localValue3
  end
  localValue2 = {}
  localValue3 = localValue1.sounds
  localValue3 = localValue3.srnTone1
  if localValue3 then
    localValue3 = localValue1.sounds
    localValue3 = localValue3.srnTone1
    localValue3 = localValue3.audioString
  end
  localValue4 = localValue1.sounds
  localValue4 = localValue4.srnTone2
  if localValue4 then
    localValue4 = localValue1.sounds
    localValue4 = localValue4.srnTone2
    localValue4 = localValue4.audioString
  end
  stateFlag3 = localValue1.sounds
  stateFlag3 = stateFlag3.srnTone3
  if stateFlag3 then
    stateFlag3 = localValue1.sounds
    stateFlag3 = stateFlag3.srnTone3
    stateFlag3 = stateFlag3.audioString
  end
  stateFlag4 = localValue1.sounds
  stateFlag4 = stateFlag4.srnTone4
  if stateFlag4 then
    stateFlag4 = localValue1.sounds
    stateFlag4 = stateFlag4.srnTone4
    stateFlag4 = stateFlag4.audioString
  end
  localValue2[1] = localValue3
  localValue2[2] = localValue4
  localValue2[3] = stateFlag3
  localValue2[4] = stateFlag4
  localValue3 = #localValue2
  if 4 ~= localValue3 then
    localValue3 = false
    localValue4 = "Unable to find SrnTone1 to SrnTone4"
    return localValue3, localValue4
  end
  localValue3 = 1
  localValue4 = #localValue2
  stateFlag3 = 1
  for stateFlag4 = localValue3, localValue4, stateFlag3 do
    stateFlag5 = string
    stateFlag5 = stateFlag5.match
    workingValue31 = localValue2[stateFlag4]
    workingValue32 = "xsiren"
    stateFlag5 = stateFlag5(workingValue31, workingValue32)
    if stateFlag5 then
      stateFlag5 = false
      workingValue31 = "Sirens of type 'xsiren' unsupported"
      return stateFlag5, workingValue31
    end
  end
  localValue3 = true
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2) ===
function eventHandler2(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper
  localValue3 = dataCollection
  localValue4 = localValue3
  localValue3 = localValue3.dom
  stateFlag3 = localValue1
  stateFlag4 = localValue2
  localValue3 = localValue3(localValue4, stateFlag3, stateFlag4)
  localValue4 = {}
  stateFlag3 = {}
  localValue4.extras = stateFlag3
  stateFlag3 = {}
  localValue4.sounds = stateFlag3
  stateFlag3 = {}
  localValue4.pattern = stateFlag3
  stateFlag3 = ipairs
  stateFlag4 = localValue3.root
  stateFlag4 = stateFlag4.el
  stateFlag3, stateFlag4, stateFlag5, workingValue31 = stateFlag3(stateFlag4)
  for workingValue32, workingValue34 in stateFlag3, stateFlag4, stateFlag5, workingValue31 do
    stateFlag = workingValue34.name
    if "EOVERRIDE" == stateFlag then
      stateFlag = eventHandler
      number3 = localValue4
      text = workingValue34
      stateFlag(number3, text)
    else
      stateFlag = workingValue34.name
      if "EXTRAS" == stateFlag then
        stateFlag = workingValue7
        number3 = localValue4
        text = workingValue34
        stateFlag(number3, text)
      else
        stateFlag = workingValue34.name
        if "SOUNDS" == stateFlag then
          stateFlag = workingValue8
          number3 = localValue4
          text = workingValue34
          stateFlag(number3, text)
        else
          stateFlag = workingValue34.name
          if "PATTERNS" == stateFlag then
            stateFlag = workingValue15
            number3 = localValue4
            text = workingValue34
            stateFlag(number3, text)
          end
        end
      end
    end
  end
  stateFlag3 = {}
  stateFlag4 = 303108068
  stateFlag5 = -910931556
  workingValue31 = -383838148
  stateFlag3[1] = stateFlag4
  stateFlag3[2] = stateFlag5
  stateFlag3[3] = workingValue31
  stateFlag4 = ipairs
  stateFlag5 = stateFlag3
  stateFlag4, stateFlag5, workingValue31, workingValue32 = stateFlag4(stateFlag5)
  for workingValue34, stateFlag in stateFlag4, stateFlag5, workingValue31, workingValue32 do
    number3 = localValue4.pattern
    number3 = number3[stateFlag]
    if not number3 then
      number3 = dataCollection4.Pattern
      number3 = number3[stateFlag]
    end
    if not number3 then
      text = false
      modelHash = "ELS default pattern missing for "
      text2 = tostring
      stringHelper = stateFlag
      text2 = text2(stringHelper)
      modelHash = modelHash .. text2
      return text, modelHash
    end
    text = localValue4.pattern
    modelHash = workingValue17
    text2 = number3
    stringHelper = localValue4.extras
    modelHash = modelHash(text2, stringHelper)
    text[stateFlag] = modelHash
  end
  stateFlag4 = workingValue19
  stateFlag5 = localValue4
  stateFlag4, stateFlag5 = stateFlag4(stateFlag5)
  if stateFlag4 then
    workingValue31 = localValue4
    workingValue32 = false
    return workingValue31, workingValue32
  else
    workingValue31 = false
    workingValue32 = stateFlag5
    return workingValue31, workingValue32
  end
end
GetVehicleFromXML = eventHandler2
eventHandler2 = {}
eventHandler2.VERSION = "0.7"
cmgOperation2 = {}

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5
  localValue3 = print
  localValue4 = string
  localValue4 = localValue4.format
  stateFlag3 = "<?%s %s?>"
  stateFlag4 = localValue1
  stateFlag5 = localValue2
  localValue4, stateFlag3, stateFlag4, stateFlag5 = localValue4(stateFlag3, stateFlag4, stateFlag5)
  localValue3(localValue4, stateFlag3, stateFlag4, stateFlag5)
end
cmgOperation2.pi = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3
  localValue2 = print
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "<!-- %s -->"
  stateFlag3 = localValue1
  localValue3, localValue4, stateFlag3 = localValue3(localValue4, stateFlag3)
  localValue2(localValue3, localValue4, stateFlag3)
end
cmgOperation2.comment = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2, localValue3) ===
function text3(localValue1, localValue2, localValue3)
  local localValue4, stateFlag3, stateFlag4, stateFlag5
  localValue4 = io
  localValue4 = localValue4.write
  stateFlag3 = "<"
  localValue4(stateFlag3)
  if localValue3 then
    localValue4 = io
    localValue4 = localValue4.write
    stateFlag3 = localValue3
    stateFlag4 = ":"
    localValue4(stateFlag3, stateFlag4)
  end
  localValue4 = io
  localValue4 = localValue4.write
  stateFlag3 = localValue1
  localValue4(stateFlag3)
  if localValue2 then
    localValue4 = io
    localValue4 = localValue4.write
    stateFlag3 = " (ns='"
    stateFlag4 = localValue2
    stateFlag5 = "')"
    localValue4(stateFlag3, stateFlag4, stateFlag5)
  end
  localValue4 = print
  stateFlag3 = ">"
  localValue4(stateFlag3)
end
cmgOperation2.startElement = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text3(localValue1, localValue2, localValue3, localValue4)
  local stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34
  stateFlag3 = io
  stateFlag3 = stateFlag3.write
  stateFlag4 = "  "
  stateFlag3(stateFlag4)
  if localValue4 then
    stateFlag3 = io
    stateFlag3 = stateFlag3.write
    stateFlag4 = localValue4
    stateFlag5 = ":"
    stateFlag3(stateFlag4, stateFlag5)
  end
  stateFlag3 = io
  stateFlag3 = stateFlag3.write
  stateFlag4 = localValue1
  stateFlag5 = "="
  workingValue31 = string
  workingValue31 = workingValue31.format
  workingValue32 = "%q"
  workingValue34 = localValue2
  workingValue31, workingValue32, workingValue34 = workingValue31(workingValue32, workingValue34)
  stateFlag3(stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34)
  if localValue3 then
    stateFlag3 = io
    stateFlag3 = stateFlag3.write
    stateFlag4 = " (ns='"
    stateFlag5 = localValue3
    workingValue31 = "')"
    stateFlag3(stateFlag4, stateFlag5, workingValue31)
  end
  stateFlag3 = io
  stateFlag3 = stateFlag3.write
  stateFlag4 = "\n"
  stateFlag3(stateFlag4)
end
cmgOperation2.attribute = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3
  localValue2 = print
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "  text: %q"
  stateFlag3 = localValue1
  localValue3, localValue4, stateFlag3 = localValue3(localValue4, stateFlag3)
  localValue2(localValue3, localValue4, stateFlag3)
end
cmgOperation2.text = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, localValue4, stateFlag3, stateFlag4
  localValue3 = print
  localValue4 = string
  localValue4 = localValue4.format
  stateFlag3 = "</%s>"
  stateFlag4 = localValue1
  localValue4, stateFlag3, stateFlag4 = localValue4(stateFlag3, stateFlag4)
  localValue3(localValue4, stateFlag3, stateFlag4)
end
cmgOperation2.closeElement = text3
eventHandler2._call = cmgOperation2
dataCollection = eventHandler2

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2) ===
function eventHandler2(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = {}
  localValue4 = localValue2 or localValue4
  if not localValue2 then
    localValue4 = localValue1._call
  end
  localValue3._call = localValue4
  localValue4 = dataCollection.parse
  localValue3.parse = localValue4
  return localValue3
end
dataCollection.parser = eventHandler2

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function eventHandler2(localValue1, localValue2, localValue3, localValue4)
  local stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper, stateFlag2, number5, number6, number7, workingValue10, workingValue12, workingValue14, workingValue16, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, number8, number9, number10, number11, number12, number13, number14, number15, workingValue26, workingValue27, workingValue28, text5, text6, text7
  if not localValue4 then
    stateFlag3 = {}
    stateFlag3.stripWhitespace = false
    localValue4 = stateFlag3
  end
  stateFlag3 = string
  stateFlag3 = stateFlag3.find
  stateFlag4 = string
  stateFlag4 = stateFlag4.sub
  stateFlag5 = string
  stateFlag5 = stateFlag5.gsub
  workingValue31 = string
  workingValue31 = workingValue31.char
  workingValue32 = table
  workingValue32 = workingValue32.insert
  workingValue34 = table
  workingValue34 = workingValue34.remove
  stateFlag = table
  stateFlag = stateFlag.concat
  number3 = nil
  text = nil
  modelHash = nil
  text2 = nil
  stringHelper = nil
  stateFlag2 = nil
  number5 = table
  number5 = number5.unpack
  number6 = 1
  number7 = "text"
  workingValue10 = 1
  workingValue12 = {}
  workingValue14 = {}
  workingValue16 = nil
  workingValue18 = {}
  workingValue20 = {}
  workingValue21 = {}
  workingValue22 = 2047
  workingValue23 = 192
  workingValue21[1] = workingValue22
  workingValue21[2] = workingValue23
  workingValue22 = {}
  workingValue23 = 65535
  number8 = 224
  workingValue22[1] = workingValue23
  workingValue22[2] = number8
  workingValue23 = {}
  number8 = 2097151
  number9 = 240
  workingValue23[1] = number8
  workingValue23[2] = number9
  workingValue20[1] = workingValue21
  workingValue20[2] = workingValue22
  workingValue20[3] = workingValue23

  -- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue12) ===
  function workingValue21(localValue12)
    local localValue22, localValue32, workingValue29, stringHelper2, workingValue30, tableHelper, nameValue, workingValue33, number19, number, workingValue2, workingValue3, workingValue5, number4
    if localValue12 < 128 then
      localValue22 = workingValue31
      localValue32 = localValue12
      return localValue22(localValue32)
    end
    localValue22 = {}
    localValue32 = ipairs
    workingValue29 = workingValue20
    localValue32, workingValue29, stringHelper2, workingValue30 = localValue32(workingValue29)
    for tableHelper, nameValue in localValue32, workingValue29, stringHelper2, workingValue30 do
      workingValue33 = nameValue[1]
      if localValue12 <= workingValue33 then
        workingValue33 = tableHelper + 1
        number19 = 2
        number = -1
        for workingValue2 = workingValue33, number19, number do
          workingValue3 = localValue12 % 64
          workingValue5 = localValue12 - workingValue3
          localValue12 = workingValue5 / 64
          workingValue5 = workingValue31
          number4 = 128 + workingValue3
          workingValue5 = workingValue5(number4)
          localValue22[workingValue2] = workingValue5
        end
        workingValue33 = workingValue31
        number19 = nameValue[2]
        number19 = number19 + localValue12
        workingValue33 = workingValue33(number19)
        localValue22[1] = workingValue33
        workingValue33 = stateFlag
        number19 = localValue22
        workingValue33, number19, number, workingValue2, workingValue3, workingValue5, number4 = workingValue33(number19)
        return workingValue33, number19, number, workingValue2, workingValue3, workingValue5, number4
      end
    end
  end
  workingValue22 = {}
  workingValue22.lt = "<"
  workingValue22.gt = ">"
  workingValue22.amp = "&"
  workingValue22.quot = "\""
  workingValue22.apos = "'"

  -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue12, localValue22, localValue32) ===
  function workingValue23(localValue12, localValue22, localValue32)
    local workingValue29, stringHelper2, workingValue30, tableHelper
    workingValue29 = workingValue22
    workingValue29 = workingValue29[localValue32]
    if not workingValue29 then
      if "#" == localValue22 then
        workingValue29 = workingValue21
        stringHelper2 = tonumber
        workingValue30 = "0"
        tableHelper = localValue32
        workingValue30 = workingValue30 .. tableHelper
        stringHelper2, workingValue30, tableHelper = stringHelper2(workingValue30)
        workingValue29 = workingValue29(stringHelper2, workingValue30, tableHelper)
        if workingValue29 then
          goto continueAtStep17
        end
      end
      workingValue29 = localValue12
    end
    ::continueAtStep17::
    return workingValue29
  end

  -- === HELPER FUNCTION (decompiler name: number8; parameters: localValue12) ===
  function number8(localValue12)
    local localValue22, localValue32, workingValue29, stringHelper2
    localValue22 = stateFlag5
    localValue32 = localValue12
    workingValue29 = "(&(#?)([%d%a]+);)"
    stringHelper2 = workingValue23
    return localValue22(localValue32, workingValue29, stringHelper2)
  end

  -- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
  function number9()
    local localValue12, localValue22, localValue32, workingValue29, stringHelper2
    localValue12 = number3
    localValue22 = workingValue10
    if localValue12 > localValue22 then
      localValue12 = localValue1._call
      localValue12 = localValue12.text
      if localValue12 then
        localValue12 = stateFlag4
        localValue22 = localValue2
        localValue32 = workingValue10
        workingValue29 = number3
        workingValue29 = workingValue29 - 1
        localValue12 = localValue12(localValue22, localValue32, workingValue29)
        localValue22 = localValue4.stripWhitespace
        if localValue22 and localValue12 then
          localValue22 = stateFlag5
          localValue32 = localValue12
          workingValue29 = "^%s+"
          stringHelper2 = ""
          localValue22 = localValue22(localValue32, workingValue29, stringHelper2)
          localValue12 = localValue22
          localValue22 = stateFlag5
          localValue32 = localValue12
          workingValue29 = "%s+$"
          stringHelper2 = ""
          localValue22 = localValue22(localValue32, workingValue29, stringHelper2)
          localValue12 = localValue22
          localValue22 = #localValue12
          if 0 == localValue22 then
            localValue12 = nil
          end
        end
        if localValue12 then
          localValue22 = localValue1._call
          localValue22 = localValue22.text
          localValue32 = number8
          workingValue29 = localValue12
          localValue32, workingValue29, stringHelper2 = localValue32(workingValue29)
          localValue22(localValue32, workingValue29, stringHelper2)
        end
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: number10; parameters: none) ===
  function number10()
    local localValue12, localValue22, localValue32, workingValue29
    localValue12 = stateFlag3
    localValue22 = localValue2
    localValue32 = "^<%?([:%a_][:%w_.-]*) ?(.-)%?>"
    workingValue29 = number6
    localValue12, localValue22, localValue32, workingValue29 = localValue12(localValue22, localValue32, workingValue29)
    text2 = workingValue29
    modelHash = localValue32
    text = localValue22
    number3 = localValue12
    localValue12 = number3
    if localValue12 then
      localValue12 = number9
      localValue12()
      localValue12 = localValue1._call
      localValue12 = localValue12.pi
      if localValue12 then
        localValue12 = localValue1._call
        localValue12 = localValue12.pi
        localValue22 = modelHash
        localValue32 = text2
        localValue12(localValue22, localValue32)
      end
      localValue12 = text
      localValue12 = localValue12 + 1
      number6 = localValue12
      localValue12 = number6
      workingValue10 = localValue12
      localValue12 = true
      return localValue12
    end
  end

  -- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
  function number11()
    local localValue12, localValue22, localValue32, workingValue29
    localValue12 = stateFlag3
    localValue22 = localValue2
    localValue32 = "^<!%-%-(.-)%-%->"
    workingValue29 = number6
    localValue12, localValue22, localValue32 = localValue12(localValue22, localValue32, workingValue29)
    modelHash = localValue32
    text = localValue22
    number3 = localValue12
    localValue12 = number3
    if localValue12 then
      localValue12 = number9
      localValue12()
      localValue12 = localValue1._call
      localValue12 = localValue12.comment
      if localValue12 then
        localValue12 = localValue1._call
        localValue12 = localValue12.comment
        localValue22 = modelHash
        localValue12(localValue22)
      end
      localValue12 = text
      localValue12 = localValue12 + 1
      number6 = localValue12
      localValue12 = number6
      workingValue10 = localValue12
      localValue12 = true
      return localValue12
    end
  end

  -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue12) ===
  function number12(localValue12)
    local localValue22, localValue32, workingValue29, stringHelper2, workingValue30
    if "xml" == localValue12 then
      localValue22 = "http://www.w3.org/XML/1998/namespace"
      return localValue22
    end
    localValue22 = workingValue18
    localValue22 = #localValue22
    localValue32 = 1
    workingValue29 = -1
    for stringHelper2 = localValue22, localValue32, workingValue29 do
      workingValue30 = workingValue18
      workingValue30 = workingValue30[stringHelper2]
      workingValue30 = workingValue30[localValue12]
      if workingValue30 then
        workingValue30 = workingValue18
        workingValue30 = workingValue30[stringHelper2]
        workingValue30 = workingValue30[localValue12]
        return workingValue30
      end
    end
    localValue22 = error
    localValue32 = string
    localValue32 = localValue32.format
    workingValue29 = "Cannot find namespace for prefix %s"
    stringHelper2 = localValue12
    localValue32, workingValue29, stringHelper2, workingValue30 = localValue32(workingValue29, stringHelper2)
    localValue22(localValue32, workingValue29, stringHelper2, workingValue30)
  end

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local localValue12, localValue22, localValue32, workingValue29, stringHelper2, workingValue30
    localValue12 = stateFlag3
    localValue22 = localValue2
    localValue32 = "^<([%a_][%w_.-]*)"
    workingValue29 = number6
    localValue12, localValue22, localValue32 = localValue12(localValue22, localValue32, workingValue29)
    modelHash = localValue32
    text = localValue22
    number3 = localValue12
    localValue12 = number3
    if localValue12 then
      localValue12 = workingValue12
      localValue12[2] = nil
      localValue12 = workingValue12
      localValue12[3] = nil
      localValue12 = number9
      localValue12()
      localValue12 = text
      localValue12 = localValue12 + 1
      number6 = localValue12
      localValue12 = stateFlag3
      localValue22 = localValue2
      localValue32 = "^:([%a_][%w_.-]*)"
      workingValue29 = number6
      localValue12, localValue22, localValue32 = localValue12(localValue22, localValue32, workingValue29)
      text2 = localValue32
      text = localValue22
      number3 = localValue12
      localValue12 = number3
      if localValue12 then
        localValue12 = workingValue12
        localValue22 = text2
        localValue12[1] = localValue22
        localValue12 = workingValue12
        localValue22 = modelHash
        localValue12[3] = localValue22
        localValue12 = text2
        modelHash = localValue12
        localValue12 = text
        localValue12 = localValue12 + 1
        number6 = localValue12
      else
        localValue12 = workingValue12
        localValue22 = modelHash
        localValue12[1] = localValue22
        localValue12 = workingValue18
        localValue12 = #localValue12
        localValue22 = 1
        localValue32 = -1
        for workingValue29 = localValue12, localValue22, localValue32 do
          stringHelper2 = workingValue18
          stringHelper2 = stringHelper2[workingValue29]
          stringHelper2 = stringHelper2["!"]
          if stringHelper2 then
            stringHelper2 = workingValue12
            workingValue30 = workingValue18
            workingValue30 = workingValue30[workingValue29]
            workingValue30 = workingValue30["!"]
            stringHelper2[2] = workingValue30
            break
          end
        end
      end
      localValue12 = 0
      workingValue16 = localValue12
      localValue12 = workingValue32
      localValue22 = workingValue18
      localValue32 = {}
      localValue12(localValue22, localValue32)
      localValue12 = true
      return localValue12
    end
  end

  -- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
  function number14()
    local localValue12, localValue22, localValue32, workingValue29, stringHelper2
    localValue12 = stateFlag3
    localValue22 = localValue2
    localValue32 = "^%s+([:%a_][:%w_.-]*)%s*=%s*"
    workingValue29 = number6
    localValue12, localValue22, localValue32 = localValue12(localValue22, localValue32, workingValue29)
    modelHash = localValue32
    text = localValue22
    number3 = localValue12
    localValue12 = number3
    if localValue12 then
      localValue12 = text
      localValue12 = localValue12 + 1
      stringHelper = localValue12
      localValue12 = stateFlag3
      localValue22 = localValue2
      localValue32 = "^\"([^<\"]*)\""
      workingValue29 = stringHelper
      localValue12, localValue22, localValue32 = localValue12(localValue22, localValue32, workingValue29)
      text2 = localValue32
      text = localValue22
      number3 = localValue12
      localValue12 = number3
      if localValue12 then
        localValue12 = text
        localValue12 = localValue12 + 1
        number6 = localValue12
        localValue12 = number8
        localValue22 = text2
        localValue12 = localValue12(localValue22)
        text2 = localValue12
      else
        localValue12 = stateFlag3
        localValue22 = localValue2
        localValue32 = "^'([^<']*)'"
        workingValue29 = stringHelper
        localValue12, localValue22, localValue32 = localValue12(localValue22, localValue32, workingValue29)
        text2 = localValue32
        text = localValue22
        number3 = localValue12
        localValue12 = number3
        if localValue12 then
          localValue12 = text
          localValue12 = localValue12 + 1
          number6 = localValue12
          localValue12 = number8
          localValue22 = text2
          localValue12 = localValue12(localValue22)
          text2 = localValue12
        end
      end
    end
    localValue12 = modelHash
    if localValue12 then
      localValue12 = text2
      if localValue12 then
        localValue12 = {}
        localValue22 = modelHash
        localValue32 = text2
        localValue12[1] = localValue22
        localValue12[2] = localValue32
        localValue22 = string
        localValue22 = localValue22.match
        localValue32 = modelHash
        workingValue29 = "^([^:]+):([^:]+)$"
        localValue22, localValue32 = localValue22(localValue32, workingValue29)
        if localValue22 then
          if "xmlns" == localValue22 then
            workingValue29 = workingValue18
            stringHelper2 = #workingValue29
            workingValue29 = workingValue18
            workingValue29 = workingValue29[stringHelper2]
            stringHelper2 = text2
            workingValue29[localValue32] = stringHelper2
          else
            localValue12[1] = localValue32
            localValue12[4] = localValue22
          end
        else
          workingValue29 = modelHash
          if "xmlns" == workingValue29 then
            workingValue29 = workingValue18
            stringHelper2 = #workingValue29
            workingValue29 = workingValue18
            workingValue29 = workingValue29[stringHelper2]
            stringHelper2 = text2
            workingValue29["!"] = stringHelper2
            workingValue29 = workingValue12
            stringHelper2 = text2
            workingValue29[2] = stringHelper2
          end
        end
        workingValue29 = workingValue16
        workingValue29 = workingValue29 + 1
        workingValue16 = workingValue29
        stringHelper2 = workingValue16
        workingValue29 = workingValue14
        workingValue29[stringHelper2] = localValue12
        workingValue29 = true
        return workingValue29
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
  function number15()
    local localValue12, localValue22, localValue32, workingValue29
    localValue12 = stateFlag3
    localValue22 = localValue2
    localValue32 = "^<!%[CDATA%[(.-)%]%]>"
    workingValue29 = number6
    localValue12, localValue22, localValue32 = localValue12(localValue22, localValue32, workingValue29)
    modelHash = localValue32
    text = localValue22
    number3 = localValue12
    localValue12 = number3
    if localValue12 then
      localValue12 = number9
      localValue12()
      localValue12 = localValue1._call
      localValue12 = localValue12.text
      if localValue12 then
        localValue12 = localValue1._call
        localValue12 = localValue12.text
        localValue22 = modelHash
        localValue12(localValue22)
      end
      localValue12 = text
      localValue12 = localValue12 + 1
      number6 = localValue12
      localValue12 = number6
      workingValue10 = localValue12
      localValue12 = true
      return localValue12
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
  function workingValue26()
    local localValue12, localValue22, localValue32, workingValue29, stringHelper2, workingValue30, tableHelper
    localValue12 = stateFlag3
    localValue22 = localValue2
    localValue32 = "^%s*(/?)>"
    workingValue29 = number6
    localValue12, localValue22, localValue32 = localValue12(localValue22, localValue32, workingValue29)
    modelHash = localValue32
    text = localValue22
    number3 = localValue12
    localValue12 = number3
    if localValue12 then
      localValue12 = "text"
      number7 = localValue12
      localValue12 = text
      localValue12 = localValue12 + 1
      number6 = localValue12
      localValue12 = number6
      workingValue10 = localValue12
      localValue12 = workingValue12
      localValue12 = localValue12[3]
      if localValue12 then
        localValue12 = workingValue12
        localValue22 = number12
        localValue32 = workingValue12
        localValue32 = localValue32[3]
        localValue22 = localValue22(localValue32)
        localValue12[2] = localValue22
      end
      localValue12 = localValue1._call
      localValue12 = localValue12.startElement
      if localValue12 then
        localValue12 = localValue1._call
        localValue12 = localValue12.startElement
        localValue22 = number5
        localValue32 = workingValue12
        localValue22, localValue32, workingValue29, stringHelper2, workingValue30, tableHelper = localValue22(localValue32)
        localValue12(localValue22, localValue32, workingValue29, stringHelper2, workingValue30, tableHelper)
      end
      localValue12 = localValue1._call
      localValue12 = localValue12.attribute
      if localValue12 then
        localValue12 = 1
        localValue22 = workingValue16
        localValue32 = 1
        for workingValue29 = localValue12, localValue22, localValue32 do
          stringHelper2 = workingValue14
          stringHelper2 = stringHelper2[workingValue29]
          stringHelper2 = stringHelper2[4]
          if stringHelper2 then
            stringHelper2 = workingValue14
            stringHelper2 = stringHelper2[workingValue29]
            workingValue30 = number12
            tableHelper = workingValue14
            tableHelper = tableHelper[workingValue29]
            tableHelper = tableHelper[4]
            workingValue30 = workingValue30(tableHelper)
            stringHelper2[3] = workingValue30
          end
          stringHelper2 = localValue1._call
          stringHelper2 = stringHelper2.attribute
          workingValue30 = number5
          tableHelper = workingValue14
          tableHelper = tableHelper[workingValue29]
          workingValue30, tableHelper = workingValue30(tableHelper)
          stringHelper2(workingValue30, tableHelper)
        end
      end
      localValue12 = modelHash
      if "/" == localValue12 then
        localValue12 = workingValue34
        localValue22 = workingValue18
        localValue12(localValue22)
        localValue12 = localValue1._call
        localValue12 = localValue12.closeElement
        if localValue12 then
          localValue12 = localValue1._call
          localValue12 = localValue12.closeElement
          localValue22 = number5
          localValue32 = workingValue12
          localValue22, localValue32, workingValue29, stringHelper2, workingValue30, tableHelper = localValue22(localValue32)
          localValue12(localValue22, localValue32, workingValue29, stringHelper2, workingValue30, tableHelper)
        end
      end
      localValue12 = true
      return localValue12
    end
  end

  -- === HELPER FUNCTION (decompiler name: workingValue27; parameters: none) ===
  function workingValue27()
    local localValue12, localValue22, localValue32, workingValue29, stringHelper2
    localValue12 = stateFlag3
    localValue22 = localValue2
    localValue32 = "^</([%a_][%w_.-]*)%s*>"
    workingValue29 = number6
    localValue12, localValue22, localValue32, workingValue29 = localValue12(localValue22, localValue32, workingValue29)
    text2 = workingValue29
    modelHash = localValue32
    text = localValue22
    number3 = localValue12
    localValue12 = number3
    if localValue12 then
      localValue12 = nil
      stateFlag2 = localValue12
      localValue12 = workingValue18
      localValue12 = #localValue12
      localValue22 = 1
      localValue32 = -1
      for workingValue29 = localValue12, localValue22, localValue32 do
        stringHelper2 = workingValue18
        stringHelper2 = stringHelper2[workingValue29]
        stringHelper2 = stringHelper2["!"]
        if stringHelper2 then
          stringHelper2 = workingValue18
          stringHelper2 = stringHelper2[workingValue29]
          stringHelper2 = stringHelper2["!"]
          stateFlag2 = stringHelper2
          break
        end
      end
    else
      localValue12 = stateFlag3
      localValue22 = localValue2
      localValue32 = "^</([%a_][%w_.-]*):([%a_][%w_.-]*)%s*>"
      workingValue29 = number6
      localValue12, localValue22, localValue32, workingValue29 = localValue12(localValue22, localValue32, workingValue29)
      modelHash = workingValue29
      text2 = localValue32
      text = localValue22
      number3 = localValue12
      localValue12 = number3
      if localValue12 then
        localValue12 = number12
        localValue22 = text2
        localValue12 = localValue12(localValue22)
        stateFlag2 = localValue12
      end
    end
    localValue12 = number3
    if localValue12 then
      localValue12 = number9
      localValue12()
      localValue12 = localValue1._call
      localValue12 = localValue12.closeElement
      if localValue12 then
        localValue12 = localValue1._call
        localValue12 = localValue12.closeElement
        localValue22 = modelHash
        localValue32 = stateFlag2
        localValue12(localValue22, localValue32)
      end
      localValue12 = text
      localValue12 = localValue12 + 1
      number6 = localValue12
      localValue12 = number6
      workingValue10 = localValue12
      localValue12 = workingValue34
      localValue22 = workingValue18
      localValue12(localValue22)
      localValue12 = true
      return localValue12
    end
  end
  while true do
    workingValue28 = #localValue2
    if not (number6 < workingValue28) then
      break
    end
    if "text" == number7 then
      workingValue28 = number10
      workingValue28 = workingValue28()
      if not workingValue28 then
        workingValue28 = number11
        workingValue28 = workingValue28()
        if not workingValue28 then
          workingValue28 = number15
          workingValue28 = workingValue28()
          if not workingValue28 then
            workingValue28 = workingValue27
            workingValue28 = workingValue28()
            if not workingValue28 then
              workingValue28 = number13
              workingValue28 = workingValue28()
              if workingValue28 then
                number7 = "attributes"
              else
                workingValue28 = stateFlag3
                text5 = localValue2
                text6 = "^[^<]+"
                text7 = number6
                workingValue28, text5 = workingValue28(text5, text6, text7)
                text = text5
                number3 = workingValue28
                workingValue28 = text or workingValue28
                if not number3 or not text then
                  workingValue28 = number6
                end
                number6 = workingValue28 + 1
              end
            end
          end
        end
      end
    elseif "attributes" == number7 then
      workingValue28 = number14
      workingValue28 = workingValue28()
      if not workingValue28 then
        workingValue28 = workingValue26
        workingValue28 = workingValue28()
        if not workingValue28 then
          workingValue28 = print
          text5 = "Unable to load VCF for "
          text6 = localValue3
          text7 = " (XML is broken)"
          text5 = text5 .. text6 .. text7
          workingValue28(text5)
          break
        end
      end
    end
  end
end
dataCollection.parse = eventHandler2

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function eventHandler2(localValue1, localValue2, localValue3, localValue4)
  local stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text, modelHash, text2, stringHelper
  if not localValue4 then
    stateFlag3 = {}
    localValue4 = stateFlag3
  end
  stateFlag3 = localValue4.simple
  stateFlag3 = not stateFlag3
  stateFlag4 = table
  stateFlag4 = stateFlag4.insert
  stateFlag5 = table
  stateFlag5 = stateFlag5.remove
  workingValue31 = {}
  workingValue32 = {}
  workingValue32.type = "document"
  workingValue32.name = "#doc"
  workingValue34 = {}
  workingValue32.kids = workingValue34
  workingValue34 = workingValue32
  stateFlag = dataCollection
  number3 = stateFlag
  stateFlag = stateFlag.parser
  text = {}

  -- === HELPER FUNCTION: modelHash(localValue12, localValue22) ===
  function modelHash(localValue12, localValue22)
    local localValue32, workingValue29, stringHelper2, workingValue30, tableHelper, nameValue
    localValue32 = {}
    localValue32.type = "element"
    localValue32.name = localValue12
    workingValue29 = {}
    localValue32.kids = workingValue29
    workingValue29 = stateFlag3
    if workingValue29 then
      workingValue29 = {}
      if workingValue29 then
        goto continueAtStep16
      end
    end
    workingValue29 = nil
    ::continueAtStep16::
    localValue32.el = workingValue29
    workingValue29 = {}
    localValue32.attr = workingValue29
    localValue32.nsURI = localValue22
    workingValue29 = stateFlag3
    if workingValue29 then
      workingValue29 = workingValue34
      if workingValue29 then
        goto continueAtStep28
      end
    end
    workingValue29 = nil
    ::continueAtStep28::
    localValue32.parent = workingValue29
    workingValue29 = workingValue34
    stringHelper2 = workingValue32
    if workingValue29 == stringHelper2 then
      workingValue29 = workingValue32.root
      if workingValue29 then
        workingValue29 = error
        stringHelper2 = string
        stringHelper2 = stringHelper2.format
        workingValue30 = "Encountered element '%s' when the document already has a root '%s' element"
        tableHelper = localValue12
        nameValue = workingValue32.root
        nameValue = nameValue.name
        stringHelper2, workingValue30, tableHelper, nameValue = stringHelper2(workingValue30, tableHelper, nameValue)
        workingValue29(stringHelper2, workingValue30, tableHelper, nameValue)
      end
      workingValue32.root = localValue32
    end
    workingValue29 = stateFlag4
    stringHelper2 = workingValue34.kids
    workingValue30 = localValue32
    workingValue29(stringHelper2, workingValue30)
    workingValue29 = workingValue34.el
    if workingValue29 then
      workingValue29 = stateFlag4
      stringHelper2 = workingValue34.el
      workingValue30 = localValue32
      workingValue29(stringHelper2, workingValue30)
    end
    workingValue34 = localValue32
    workingValue29 = stateFlag4
    stringHelper2 = workingValue31
    workingValue30 = localValue32
    workingValue29(stringHelper2, workingValue30)
  end
  text.startElement = modelHash

  -- === HELPER FUNCTION: modelHash(localValue12, localValue22, localValue32) ===
  function modelHash(localValue12, localValue22, localValue32)
    local workingValue29, stringHelper2, workingValue30, tableHelper, nameValue
    workingValue29 = workingValue34
    if workingValue29 then
      workingValue29 = workingValue34.type
      if "element" == workingValue29 then
        goto continueAtStep15
      end
    end
    workingValue29 = error
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    workingValue30 = "Encountered an attribute %s=%s but I wasn't inside an element"
    tableHelper = localValue12
    nameValue = localValue22
    stringHelper2, workingValue30, tableHelper, nameValue = stringHelper2(workingValue30, tableHelper, nameValue)
    workingValue29(stringHelper2, workingValue30, tableHelper, nameValue)
    ::continueAtStep15::
    workingValue29 = {}
    workingValue29.type = "attribute"
    workingValue29.name = localValue12
    workingValue29.nsURI = localValue32
    workingValue29.value = localValue22
    stringHelper2 = stateFlag3
    if stringHelper2 then
      stringHelper2 = workingValue34
      if stringHelper2 then
        goto continueAtStep28
      end
    end
    stringHelper2 = nil
    ::continueAtStep28::
    workingValue29.parent = stringHelper2
    stringHelper2 = stateFlag3
    if stringHelper2 then
      stringHelper2 = workingValue34.attr
      stringHelper2[localValue12] = localValue22
    end
    stringHelper2 = stateFlag4
    workingValue30 = workingValue34.attr
    tableHelper = workingValue29
    stringHelper2(workingValue30, tableHelper)
  end
  text.attribute = modelHash

  -- === HELPER FUNCTION: modelHash(localValue12) ===
  function modelHash(localValue12)
    local localValue22, localValue32, workingValue29, stringHelper2, workingValue30, tableHelper
    localValue22 = workingValue34.name
    if localValue22 == localValue12 then
      localValue22 = workingValue34.type
      if "element" == localValue22 then
        goto continueAtStep16
      end
    end
    localValue22 = error
    localValue32 = string
    localValue32 = localValue32.format
    workingValue29 = "Received a close element notification for '%s' but was inside a '%s' %s"
    stringHelper2 = localValue12
    workingValue30 = workingValue34.name
    tableHelper = workingValue34.type
    localValue32, workingValue29, stringHelper2, workingValue30, tableHelper = localValue32(workingValue29, stringHelper2, workingValue30, tableHelper)
    localValue22(localValue32, workingValue29, stringHelper2, workingValue30, tableHelper)
    ::continueAtStep16::
    localValue22 = stateFlag5
    localValue32 = workingValue31
    localValue22(localValue32)
    localValue22 = workingValue31
    localValue32 = #localValue22
    localValue22 = workingValue31
    localValue22 = localValue22[localValue32]
    workingValue34 = localValue22
  end
  text.closeElement = modelHash

  -- === HELPER FUNCTION: modelHash(localValue12) ===
  function modelHash(localValue12)
    local localValue22, localValue32, workingValue29, stringHelper2, workingValue30
    localValue22 = workingValue34.type
    if "document" ~= localValue22 then
      localValue22 = workingValue34.type
      if "element" ~= localValue22 then
        localValue22 = error
        localValue32 = string
        localValue32 = localValue32.format
        workingValue29 = "Received a text notification '%s' but was inside a %s"
        stringHelper2 = localValue12
        workingValue30 = workingValue34.type
        localValue32, workingValue29, stringHelper2, workingValue30 = localValue32(workingValue29, stringHelper2, workingValue30)
        localValue22(localValue32, workingValue29, stringHelper2, workingValue30)
      end
      localValue22 = stateFlag4
      localValue32 = workingValue34.kids
      workingValue29 = {}
      workingValue29.type = "text"
      workingValue29.name = "#text"
      workingValue29.value = localValue12
      stringHelper2 = stateFlag3
      if stringHelper2 then
        stringHelper2 = workingValue34
        if stringHelper2 then
          goto continueAtStep29
        end
      end
      stringHelper2 = nil
      ::continueAtStep29::
      workingValue29.parent = stringHelper2
      localValue22(localValue32, workingValue29)
    end
  end
  text.text = modelHash

  -- === HELPER FUNCTION: modelHash(localValue12) ===
  function modelHash(localValue12)
    local localValue22, localValue32, workingValue29, stringHelper2
    localValue22 = stateFlag4
    localValue32 = workingValue34.kids
    workingValue29 = {}
    workingValue29.type = "comment"
    workingValue29.name = "#comment"
    workingValue29.value = localValue12
    stringHelper2 = stateFlag3
    if stringHelper2 then
      stringHelper2 = workingValue34
      if stringHelper2 then
        goto continueAtStep15
      end
    end
    stringHelper2 = nil
    ::continueAtStep15::
    workingValue29.parent = stringHelper2
    localValue22(localValue32, workingValue29)
  end
  text.comment = modelHash

  -- === HELPER FUNCTION: modelHash(localValue12, localValue22) ===
  function modelHash(localValue12, localValue22)
    local localValue32, workingValue29, stringHelper2, workingValue30
    localValue32 = stateFlag4
    workingValue29 = workingValue34.kids
    stringHelper2 = {}
    stringHelper2.type = "pi"
    stringHelper2.name = localValue12
    stringHelper2.value = localValue22
    workingValue30 = stateFlag3
    if workingValue30 then
      workingValue30 = workingValue34
      if workingValue30 then
        goto continueAtStep15
      end
    end
    workingValue30 = nil
    ::continueAtStep15::
    stringHelper2.parent = workingValue30
    localValue32(workingValue29, stringHelper2)
  end
  text.pi = modelHash
  stateFlag = stateFlag(number3, text)
  text = stateFlag
  number3 = stateFlag.parse
  modelHash = localValue2
  text2 = localValue3
  stringHelper = localValue4
  number3(text, modelHash, text2, stringHelper)
  return workingValue32
end
dataCollection.dom = eventHandler2
eventHandler2 = RegisterNetEvent
cmgOperation2 = "c3ca765ee5"
-- Beginner: this function handles network event "c3ca765ee5".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5, workingValue31, workingValue32, workingValue34, stateFlag, number3, text
  if localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.isDevMode
    localValue2 = localValue2()
    if not localValue2 then
      localValue2 = ""
      localValue3 = pairs
      localValue4 = dataCollection2
      localValue3, localValue4, stateFlag3, stateFlag4 = localValue3(localValue4)
      for stateFlag5, workingValue31 in localValue3, localValue4, stateFlag3, stateFlag4 do
        workingValue32 = localValue2
        workingValue34 = stateFlag5
        stateFlag = ": "
        number3 = workingValue31
        text = "\n"
        workingValue32 = workingValue32 .. workingValue34 .. stateFlag .. number3 .. text
        localValue2 = workingValue32
      end
      if "" ~= localValue2 then
        localValue3 = CMG
        localValue3 = localValue3.showWarningMessage
        localValue4 = "CARDEV WARNINGS"
        stateFlag3 = localValue2
        localValue3(localValue4, stateFlag3)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c3ca765ee5".
eventHandler2(cmgOperation2, text3)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, localValue3, localValue4, stateFlag3, stateFlag4, stateFlag5
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = dataCollection5
  if localValue3 then
    localValue3 = dataCollection5
    localValue3 = localValue3[localValue2]
    if localValue3 then
      goto continueAtStep13
    end
  end
  localValue3 = ""
  return localValue3
  ::continueAtStep13::
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "ELS Setup: %s"
  stateFlag3 = DecorGetBool
  stateFlag4 = localValue1
  stateFlag5 = "c102c26beb"
  stateFlag3 = stateFlag3(stateFlag4, stateFlag5)
  if stateFlag3 then
    stateFlag3 = "Yes"
    if stateFlag3 then
      goto continueAtStep26
    end
  end
  stateFlag3 = "No"
  ::continueAtStep26::
  return localValue3(localValue4, stateFlag3)
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerDevMenuEntityEditor
text3 = "Fuel"
text4 = "vehicle"
workingValue24 = eventHandler2

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
function workingValue25()
  local localValue1, localValue2
end
cmgOperation2(text3, text4, workingValue24, workingValue25)
