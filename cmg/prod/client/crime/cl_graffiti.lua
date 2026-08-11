--[[
    LEVEL 1 BEGINNER GUIDE — Graffiti
    ======================================

    File: cmg/prod/client/crime/cl_graffiti.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Graffiti feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 46
      * Background threads: 0
      * Always-running loops: 1
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
local cmgCall, cmgCall2, textValue4, flag7, flag8, dataTable4, numberValue15, dataTable6, numberValue17, dataTable7, dataTable, flag, flag2, numberValue3, numberValue5, workValue9, workValue12, workValue13, workValue14, workValue15, workValue17, workValue18, threadCall, workValue19, workValue20, workValue21, workValue22, cmgCall3, textValue3, eventRegistration, textValue5, textValue6, rageUiCall, textValue7, textValue8, rageUiCall2, rageUiCall3, textValue9, textValue10
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall2 = "cfg/cfg_graffiti"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall2)
cmgCall2 = CMG
cmgCall2 = cmgCall2.loadModule
textValue4 = "cfg/cfg_gang"
-- Beginner: result below is config.
cmgCall2 = cmgCall2(textValue4)
textValue4 = CreateCam
flag7 = "DEFAULT_SCRIPTED_CAMERA"
flag8 = false
-- Beginner: result below is cameraHandle.
textValue4 = textValue4(flag7, flag8)
flag7 = false
flag8 = nil
dataTable4 = {}
numberValue15 = 1
dataTable6 = {}
numberValue17 = 1
dataTable7 = {}
dataTable = {}
flag = false
flag2 = false
numberValue3 = 0
numberValue5 = 5000

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3
  arg2 = arg1.handle
  if not arg2 then
    arg2 = RequestScaleformMovie
    arg3 = arg1.name
    -- Beginner: result below is scaleformHandle.
    arg2 = arg2(arg3)
    arg1.handle = arg2
  end
  arg2 = arg1.loaded
  if arg2 then
    arg2 = arg1.handle
    return arg2
  else
    arg2 = HasScaleformMovieLoaded
    arg3 = arg1.handle
    arg2 = arg2(arg3)
    arg1.loaded = arg2
    arg2 = nil
    return arg2
  end
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2, arg3
  arg2 = numberValue15
  arg1 = dataTable4
  arg1 = arg1[arg2]
  if not arg1 then
    return
  end
  arg2 = numberValue15
  arg2 = arg2 + 1
  numberValue15 = arg2
  arg2 = numberValue15
  arg3 = dataTable4
  arg3 = #arg3
  if arg2 > arg3 then
    arg2 = 1
    numberValue15 = arg2
  end
  arg2 = workValue9
  arg3 = arg1
  return arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2, arg3
  arg2 = numberValue17
  arg1 = dataTable6
  arg1 = arg1[arg2]
  if not arg1 then
    return
  end
  arg2 = numberValue17
  arg2 = arg2 + 1
  numberValue17 = arg2
  arg2 = numberValue17
  arg3 = dataTable6
  arg3 = #arg3
  if arg2 > arg3 then
    arg2 = 1
    numberValue17 = arg2
  end
  arg2 = workValue9
  arg3 = arg1
  return arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
function workValue14()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg1 = flag2
  if not arg1 then
    return
  end
  arg1 = ipairs
  arg2 = dataTable4
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.handle
    if arg7 then
      arg7 = SetScaleformMovieAsNoLongerNeeded
      arg8 = arg6.handle
      arg7(arg8)
      arg6.handle = nil
      arg6.loaded = false
    end
  end
  arg1 = ipairs
  arg2 = dataTable6
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.handle
    if arg7 then
      arg7 = SetScaleformMovieAsNoLongerNeeded
      arg8 = arg6.handle
      arg7(arg8)
      arg6.handle = nil
      arg6.loaded = false
    end
  end
  arg1 = HasStreamedTextureDictLoaded
  arg2 = cmgCall.gangTextureDictionaryName
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = SetStreamedTextureDictAsNoLongerNeeded
    arg2 = cmgCall.gangTextureDictionaryName
    arg1(arg2)
  end
  arg1 = print
  arg2 = "[CMG] Unloaded all graffiti"
  arg1(arg2)
  arg1 = false
  flag2 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2, arg3) ===
function workValue15(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2
  arg4 = arg3 * 1000.0
  arg4 = arg2 + arg4
  arg5 = StartShapeTestRay
  arg6 = arg2.x
  arg7 = arg2.y
  arg8 = arg2.z
  stringHelper2 = arg4.x
  textValue13 = arg4.y
  vector3Builder = arg4.z
  numberValue = 1
  numberValue2 = arg1
  vector3Builder2 = 0
  arg5 = arg5(arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2)
  arg6 = GetShapeTestResultEx
  arg7 = arg5
  arg6, arg7, arg8, stringHelper2, textValue13 = arg6(arg7)
  vector3Builder = 1 == arg7
  numberValue = arg8
  numberValue2 = stringHelper2
  vector3Builder2 = textValue13
  return vector3Builder, numberValue, numberValue2, vector3Builder2
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1, arg2) ===
function workValue17(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = math
  arg3 = arg3.abs
  arg4 = arg1.x
  arg5 = arg2.x
  arg4 = arg4 - arg5
  arg3 = arg3(arg4)
  arg4 = math
  arg4 = arg4.abs
  arg5 = arg1.y
  arg6 = arg2.y
  arg5 = arg5 - arg6
  arg4 = arg4(arg5)
  arg5 = math
  arg5 = arg5.abs
  arg6 = arg1.z
  arg7 = arg2.z
  arg6 = arg6 - arg7
  arg5 = arg5(arg6)
  arg6 = 0.01
  arg6 = arg3 < arg6
  return arg6
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1, arg2, arg3, arg4) ===
function workValue18(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11, vector3Builder4, numberValue12, numberValue13, vector3Builder5, numberValue14, flag6, textValue, workValue23, textValue2, workValue24, workValue25, workValue27
  arg5 = workValue15
  arg6 = arg1
  arg7 = arg3
  arg8 = arg4
  arg5, arg6, arg7, arg8 = arg5(arg6, arg7, arg8)
  stringHelper2 = workValue15
  textValue13 = arg1
  vector3Builder = vector3
  numberValue = 0.0
  numberValue2 = 0.0
  vector3Builder2 = 0.2
  vector3Builder = vector3Builder(numberValue, numberValue2, vector3Builder2)
  vector3Builder = arg3 + vector3Builder
  numberValue = arg4
  stringHelper2, textValue13, vector3Builder = stringHelper2(textValue13, vector3Builder, numberValue)
  numberValue = workValue15
  numberValue2 = arg1
  vector3Builder2 = vector3
  numberValue6 = 1.0
  numberValue8 = 0.0
  vector3Builder3 = 0.0
  vector3Builder2 = vector3Builder2(numberValue6, numberValue8, vector3Builder3)
  vector3Builder2 = arg3 + vector3Builder2
  numberValue6 = arg4
  numberValue, numberValue2, vector3Builder2 = numberValue(numberValue2, vector3Builder2, numberValue6)
  numberValue6 = workValue15
  numberValue8 = arg1
  vector3Builder3 = vector3
  numberValue10 = -1.0
  numberValue11 = 0.0
  vector3Builder4 = 0.0
  vector3Builder3 = vector3Builder3(numberValue10, numberValue11, vector3Builder4)
  vector3Builder3 = arg3 + vector3Builder3
  numberValue10 = arg4
  numberValue6, numberValue8, vector3Builder3 = numberValue6(numberValue8, vector3Builder3, numberValue10)
  numberValue10 = workValue15
  numberValue11 = arg1
  vector3Builder4 = vector3
  numberValue12 = 0.0
  numberValue13 = 1.0
  vector3Builder5 = 0.0
  vector3Builder4 = vector3Builder4(numberValue12, numberValue13, vector3Builder5)
  vector3Builder4 = arg3 + vector3Builder4
  numberValue12 = arg4
  numberValue10, numberValue11, vector3Builder4 = numberValue10(numberValue11, vector3Builder4, numberValue12)
  numberValue12 = workValue15
  numberValue13 = arg1
  vector3Builder5 = vector3
  numberValue14 = 0.0
  flag6 = -1.0
  textValue = 0.0
  vector3Builder5 = vector3Builder5(numberValue14, flag6, textValue)
  vector3Builder5 = arg3 + vector3Builder5
  numberValue14 = arg4
  numberValue12, numberValue13, vector3Builder5 = numberValue12(numberValue13, vector3Builder5, numberValue14)
  numberValue14 = vector3Builder.z
  flag6 = 0.9
  numberValue14 = numberValue14 > flag6
  if not (not numberValue14 and arg5 and stringHelper2 and numberValue and numberValue6 and numberValue10) or not numberValue12 then
    flag6 = false
    textValue = "Point the spray at a flat wall"
    return flag6, textValue
  end
  flag6 = cmgCall.disallowedMaterials
  flag6 = flag6[arg8]
  if flag6 then
    flag6 = false
    textValue = "You cannot use the spray on this surface"
    return flag6, textValue
  end
  flag6 = arg2 - arg6
  flag6 = #flag6
  textValue = cmgCall.maxSurfaceDistance
  if flag6 > textValue then
    flag6 = false
    textValue = "The surface is too far away"
    return flag6, textValue
  end
  flag6 = workValue17
  textValue = arg7
  workValue23 = vector3Builder
  flag6 = flag6(textValue, workValue23)
  if flag6 then
    flag6 = workValue17
    textValue = arg7
    workValue23 = vector3Builder2
    flag6 = flag6(textValue, workValue23)
    if flag6 then
      flag6 = workValue17
      textValue = arg7
      workValue23 = vector3Builder3
      flag6 = flag6(textValue, workValue23)
      if flag6 then
        flag6 = workValue17
        textValue = arg7
        workValue23 = vector3Builder4
        flag6 = flag6(textValue, workValue23)
        if flag6 then
          flag6 = workValue17
          textValue = arg7
          workValue23 = vector3Builder5
          flag6 = flag6(textValue, workValue23)
          if flag6 then
            flag6 = CMG
            flag6 = flag6.isOnPlane
            textValue = arg6
            workValue23 = textValue13
            textValue2 = numberValue2
            workValue24 = numberValue8
            workValue25 = numberValue11
            workValue27 = numberValue13
            flag6 = flag6(textValue, workValue23, textValue2, workValue24, workValue25, workValue27)
            if flag6 then
              goto flow_label_144
            end
          end
        end
      end
    end
  end
  flag6 = false
  textValue = "The surface is not flat enough"
  return flag6, textValue
  ::flow_label_144::
  flag6 = 0.02
  textValue = -flag6
  textValue = arg7 * textValue
  textValue = arg6 + textValue
  workValue23 = true
  textValue2 = ""
  workValue24 = textValue
  workValue25 = arg7
  workValue27 = arg7
  return workValue23, textValue2, workValue24, workValue25, workValue27
end
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
function workValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder
  arg1 = 1
  arg2 = 10
  arg3 = 1
  for arg4 = arg1, arg2, arg3 do
    arg5 = "PLAYER_NAME_"
    if arg4 < 10 then
      arg6 = arg5
      arg7 = "0"
      arg6 = arg6 .. arg7
      arg5 = arg6
    end
    arg6 = arg5
    arg7 = tostring
    arg8 = arg4
    arg7 = arg7(arg8)
    arg6 = arg6 .. arg7
    arg5 = arg6
    arg6 = table
    arg6 = arg6.insert
    arg7 = dataTable4
    arg8 = {}
    arg8.name = arg5
    arg8.handle = nil
    arg8.loaded = false
    arg6(arg7, arg8)
    arg6 = table
    arg6 = arg6.insert
    arg7 = dataTable6
    arg8 = {}
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    textValue13 = "graffiti_renderer_%s"
    vector3Builder = arg4
    stringHelper2 = stringHelper2(textValue13, vector3Builder)
    arg8.name = stringHelper2
    arg8.handle = nil
    arg8.loaded = false
    arg6(arg7, arg8)
  end
  arg1 = pairs
  arg2 = cmgCall.fonts
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5 in arg1, arg2, arg3, arg4 do
    arg6 = RegisterFontFile
    arg7 = arg5
    arg6(arg7)
    arg6 = RegisterFontId
    arg7 = arg5
    arg6(arg7)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue19)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function threadCall(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11, vector3Builder4, numberValue12, numberValue13, vector3Builder5, numberValue14, flag6, textValue, workValue23
  arg8 = true
  flag2 = arg8
  arg8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg8 = arg8()
  numberValue3 = arg8
  if arg7 then
    arg8 = workValue13
    arg8 = arg8()
    if not arg8 then
      return
    end
    stringHelper2 = HasStreamedTextureDictLoaded
    textValue13 = cmgCall.gangTextureDictionaryName
    stringHelper2 = stringHelper2(textValue13)
    if not stringHelper2 then
      stringHelper2 = RequestStreamedTextureDict
      textValue13 = cmgCall.gangTextureDictionaryName
      vector3Builder = false
      stringHelper2(textValue13, vector3Builder)
      return
    end
    stringHelper2 = PushScaleformMovieFunction
    textValue13 = arg8
    vector3Builder = "SET_TEXTURE"
    stringHelper2(textValue13, vector3Builder)
    stringHelper2 = PushScaleformMovieMethodParameterString
    textValue13 = cmgCall.gangTextureDictionaryName
    stringHelper2(textValue13)
    stringHelper2 = PushScaleformMovieMethodParameterString
    textValue13 = arg7
    stringHelper2(textValue13)
    stringHelper2 = PushScaleformMovieFunctionParameterInt
    textValue13 = 0
    stringHelper2(textValue13)
    stringHelper2 = PushScaleformMovieFunctionParameterInt
    textValue13 = 0
    stringHelper2(textValue13)
    stringHelper2 = PushScaleformMovieFunctionParameterInt
    textValue13 = 1280
    stringHelper2(textValue13)
    stringHelper2 = PushScaleformMovieFunctionParameterInt
    textValue13 = 720
    stringHelper2(textValue13)
    stringHelper2 = PopScaleformMovieFunctionVoid
    stringHelper2()
    stringHelper2 = DrawScaleformMovie_3d
    textValue13 = arg8
    vector3Builder = arg1.x
    numberValue = arg1.y
    numberValue2 = arg1.z
    vector3Builder2 = 180.0
    numberValue6 = arg2.y
    numberValue8 = arg2.z
    vector3Builder3 = 0.1
    numberValue10 = 0.1
    numberValue11 = 0.1
    vector3Builder4 = 0.05
    numberValue12 = 0.05
    numberValue13 = 0.05
    vector3Builder5 = 2
    stringHelper2(textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11, vector3Builder4, numberValue12, numberValue13, vector3Builder5)
  else
    arg8 = workValue12
    arg8 = arg8()
    if not arg8 then
      return
    end
    stringHelper2 = cmgCall.colours
    textValue13 = cmgCall.coloursList
    textValue13 = textValue13[arg4]
    stringHelper2 = stringHelper2[textValue13]
    textValue13 = cmgCall.fontDisplayNamesIndexToKey
    textValue13 = textValue13[arg3]
    vector3Builder = PushScaleformMovieFunction
    numberValue = arg8
    numberValue2 = "SET_PLAYER_NAME"
    vector3Builder(numberValue, numberValue2)
    vector3Builder = PushScaleformMovieMethodParameterString
    numberValue = "<FONT color='#"
    numberValue2 = stringHelper2
    vector3Builder2 = "' FACE='"
    numberValue6 = textValue13
    numberValue8 = "'>"
    vector3Builder3 = arg6
    numberValue = numberValue .. numberValue2 .. vector3Builder2 .. numberValue6 .. numberValue8 .. vector3Builder3
    vector3Builder(numberValue)
    vector3Builder = PopScaleformMovieFunctionVoid
    vector3Builder()
    vector3Builder = cmgCall.fonts
    vector3Builder = vector3Builder[textValue13]
    numberValue = arg5 / 10.0
    numberValue2 = vector3Builder.scaleMultiplier
    numberValue = numberValue * numberValue2
    numberValue2 = DrawScaleformMovie_3dNonAdditive
    vector3Builder2 = arg8
    numberValue6 = arg1.x
    numberValue8 = arg1.y
    vector3Builder3 = arg1.z
    numberValue10 = arg2.x
    numberValue11 = arg2.y
    vector3Builder4 = arg2.z
    numberValue12 = 1.0
    numberValue13 = 1.0
    vector3Builder5 = 1.0
    numberValue14 = numberValue
    flag6 = numberValue
    textValue = 1.0
    workValue23 = 2
    numberValue2(vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11, vector3Builder4, numberValue12, numberValue13, vector3Builder5, numberValue14, flag6, textValue, workValue23)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
function workValue19()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11
  arg1 = 1
  numberValue15 = arg1
  arg1 = 1
  numberValue17 = arg1
  arg1 = dataTable
  arg1 = #arg1
  if 0 == arg1 then
    arg1 = flag2
    if arg1 then
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      arg2 = numberValue3
      arg1 = arg1 - arg2
      arg2 = numberValue5
      if arg1 > arg2 then
        arg1 = workValue14
        arg1()
      end
    end
    return
  end
  arg1 = CMG
  arg1 = arg1.hasClientInventoryItem
  arg2 = "sponge"
  arg1 = arg1(arg2)
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = nil
  arg4 = pairs
  arg5 = dataTable
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, stringHelper2 in arg4, arg5, arg6, arg7 do
    textValue13 = stringHelper2.position
    textValue13 = textValue13 - arg2
    textValue13 = #textValue13
    if textValue13 < 25.0 then
      vector3Builder = nil
      numberValue = stringHelper2.gangId
      if numberValue then
        numberValue = CMG
        numberValue = numberValue.getGangRecognisedTexture
        numberValue2 = stringHelper2.gangId
        numberValue = numberValue(numberValue2)
        vector3Builder = numberValue
      end
      numberValue = threadCall
      numberValue2 = stringHelper2.position
      vector3Builder2 = stringHelper2.rotation
      numberValue6 = stringHelper2.fontIndex
      numberValue8 = stringHelper2.colourIndex
      vector3Builder3 = stringHelper2.scale
      numberValue10 = stringHelper2.content
      numberValue11 = vector3Builder
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      numberValue(numberValue2, vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11)
      if arg1 and not arg3 then
        numberValue = stringHelper2.position
        numberValue = numberValue - arg2
        numberValue = #numberValue
        numberValue2 = cmgCall.maxSurfaceDistance
        if numberValue < numberValue2 then
          arg3 = stringHelper2
        end
      end
    end
  end
  if arg3 then
    arg4 = flag
    if not arg4 then
      arg4 = arg3.gangId
      arg5 = CMG
      arg5 = arg5.getGangId
      arg5 = arg5()
      if arg4 ~= arg5 then
        arg4 = drawNativeNotification
        arg5 = "Press ~INPUT_CONTEXT~ to clean graffiti with a sponge."
        -- Beginner: Show a GTA-style notification/help prompt.
        arg4(arg5)
        arg4 = IsControlJustPressed
        arg5 = 0
        arg6 = 51
        arg4 = arg4(arg5, arg6)
        if arg4 then
          arg4 = TriggerEvent
          arg5 = "10f402facb"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "10f402facb".
          arg4(arg5)
        end
    end
  end
  else
    if arg3 then
      arg4 = drawNativeNotification
      arg5 = "This is your gang graffiti"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg4(arg5)
    else
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1) ===
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetEntityCoords
  arg4 = arg2
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg4 = GetGameplayCamCoord
  arg4 = arg4()
  arg5 = CMG
  arg5 = arg5.rotationToDirection
  arg6 = GetGameplayCamRot
  arg7 = 0
  arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2 = arg6(arg7)
  arg5 = arg5(arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2)
  arg6 = workValue18
  arg7 = arg2
  arg8 = arg3
  stringHelper2 = arg4
  textValue13 = arg5
  arg6, arg7, arg8, stringHelper2 = arg6(arg7, arg8, stringHelper2, textValue13)
  if not arg6 then
    if arg1 then
      textValue13 = drawNativeText
      vector3Builder = arg7
      -- Beginner: Draw GTA-style text on screen.
      textValue13(vector3Builder)
    end
    textValue13 = false
    return textValue13
  end
  if arg8 and stringHelper2 then
    if not arg1 then
      textValue13 = true
      return textValue13
    end
    textValue13 = cmgCall.sprayForwardOffset
    textValue13 = stringHelper2 * textValue13
    textValue13 = arg8 + textValue13
    flag8.foundPosition = textValue13
    textValue13 = vector3
    vector3Builder = stringHelper2.x
    numberValue = stringHelper2.y
    numberValue2 = stringHelper2.z
    numberValue2 = numberValue2 + 0.03
    textValue13 = textValue13(vector3Builder, numberValue, numberValue2)
    flag8.foundNormal = textValue13
    textValue13 = flag8
    if textValue13 then
      textValue13 = flag8.useGangTexture
      if textValue13 then
        textValue13 = flag8.foundPosition
        vector3Builder = vector3
        numberValue = 0.0
        numberValue2 = 0.0
        vector3Builder2 = 0.6
        vector3Builder = vector3Builder(numberValue, numberValue2, vector3Builder2)
        textValue13 = textValue13 + vector3Builder
        flag8.foundPosition = textValue13
      end
    end
    flag8.isValidPosition = true
    textValue13 = true
    return textValue13
  else
    textValue13 = flag8
    if textValue13 then
      flag8.isValidPosition = false
    end
  end
  textValue13 = false
  return textValue13
end

-- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg1) ===
function workValue21(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = flag7
  if arg2 then
    arg2 = GetCamRot
    arg3 = textValue4
    arg4 = 2
    arg2 = arg2(arg3, arg4)
    flag8.calculatedRotation = arg2
    arg2 = SetCamActive
    arg3 = textValue4
    arg4 = false
    arg2(arg3, arg4)
    arg2 = false
    flag7 = arg2
  else
    arg2 = arg1.foundPosition
    arg3 = arg1.foundNormal
    arg3 = arg3 * 10.0
    arg2 = arg2 - arg3
    arg3 = SetCamCoord
    arg4 = textValue4
    arg5 = arg1.foundPosition
    arg5 = arg5.x
    arg6 = arg1.foundPosition
    arg6 = arg6.y
    arg7 = arg1.foundPosition
    arg7 = arg7.z
    arg3(arg4, arg5, arg6, arg7)
    arg3 = PointCamAtCoord
    arg4 = textValue4
    arg5 = arg2.x
    arg6 = arg2.y
    arg7 = arg2.z
    arg3(arg4, arg5, arg6, arg7)
    arg3 = SetCamActive
    arg4 = textValue4
    arg5 = true
    arg3(arg4, arg5)
    arg3 = true
    flag7 = arg3
  end
end

-- === HELPER FUNCTION (decompiler name: workValue22; parameters: none) ===
function workValue22()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2
  arg1 = assert
  arg2 = flag8
  arg1(arg2)
  arg1 = flag8
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.IsAnyMenuOfTypeVisible
    arg2 = "graffiti"
    arg1 = arg1(arg2)
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.deleteThreadOnTick
      arg2 = workValue22
      arg1(arg2)
      arg1 = nil
      flag8 = arg1
      return
    end
  end
  arg1 = workValue20
  arg2 = true
  arg1(arg2)
  arg1 = workValue21
  arg2 = flag8
  arg1(arg2)
  arg1 = nil
  arg2 = flag8.useGangTexture
  if arg2 then
    arg2 = CMG
    arg2 = arg2.getGangRecognisedTexture
    arg2 = arg2()
    arg1 = arg2
  end
  arg2 = threadCall
  arg3 = flag8.foundPosition
  arg4 = flag8.calculatedRotation
  arg5 = flag8.fontIndex
  arg6 = flag8.colourIndex
  arg7 = cmgCall.sprayScales
  arg8 = flag8.scaleIndex
  arg7 = arg7[arg8]
  arg8 = flag8.content
  stringHelper2 = arg1
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2)
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
textValue3 = workValue19
eventRegistration = "Graffiti Render"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(textValue3, eventRegistration)
cmgCall3 = RegisterNetEvent
textValue3 = "2fa07a16b3"
-- Beginner: this function handles network event "2fa07a16b3".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1) ===
function eventRegistration(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = flag8
  if not arg2 then
    arg2 = flag
    if not arg2 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg2 = table
  arg2 = arg2.count
  arg3 = CMG
  arg3 = arg3.getNearbyGraffitis
  arg3, arg4, arg5, arg6 = arg3()
  -- Beginner: result below is count.
  arg2 = arg2(arg3, arg4, arg5, arg6)
  if arg2 > 6 then
    arg2 = notify
    arg3 = "~r~Too many graffiti's nearby, please clean them to spray more."
    -- Beginner: Show a notification to the player.
    arg2(arg3)
    return
  end
  arg2 = {}
  arg3 = vector3
  arg4 = 0.0
  arg5 = 0.0
  arg6 = 0.0
  arg3 = arg3(arg4, arg5, arg6)
  arg2.foundPosition = arg3
  arg3 = vector3
  arg4 = 0.0
  arg5 = 0.0
  arg6 = 0.0
  arg3 = arg3(arg4, arg5, arg6)
  arg2.foundNormal = arg3
  arg3 = vector3
  arg4 = 0.0
  arg5 = 0.0
  arg6 = 0.0
  arg3 = arg3(arg4, arg5, arg6)
  arg2.calculatedRotation = arg3
  arg2.content = "GANG"
  arg2.fontIndex = 1
  arg2.colourIndex = 1
  arg2.scaleIndex = 1
  arg2.useGangTexture = arg1
  arg2.isValidPosition = false
  flag8 = arg2
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "graffiti"
  arg6 = "mainmenu"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = true
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.createThreadOnTick
  arg3 = workValue22
  arg4 = "Graffiti Selector"
  -- Beginner: Run a helper every game frame while this script is active.
  arg2(arg3, arg4)
  arg2 = TriggerServerEvent
  arg3 = "72490db2b8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "72490db2b8".
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2fa07a16b3".
cmgCall3(textValue3, eventRegistration)

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3, arg4, arg5
  arg3 = arg1.id
  arg2 = dataTable7
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = table
    arg3 = arg3.insert
    arg4 = dataTable
    arg5 = arg2
    arg3(arg4, arg5)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg3 = arg1.id
  arg2 = dataTable7
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = table
    arg3 = arg3.find
    arg4 = dataTable
    arg5 = arg2
    arg3 = arg3(arg4, arg5)
    if arg3 then
      arg4 = table
      arg4 = arg4.remove
      arg5 = dataTable
      arg6 = arg3
      arg4(arg5, arg6)
    end
  end
end
eventRegistration = RegisterNetEvent
textValue5 = "5ce26fe2dd"
-- Beginner: this function handles network event "5ce26fe2dd".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2, numberValue6, numberValue8
  dataTable7 = arg1
  arg2 = pairs
  arg3 = dataTable7
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = CMG
    arg8 = arg8.createArea
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    textValue13 = "graffiti_%s"
    vector3Builder = arg6
    stringHelper2 = stringHelper2(textValue13, vector3Builder)
    textValue13 = arg7.position
    vector3Builder = 50.0
    numberValue = 50.0
    numberValue2 = cmgCall3
    vector3Builder2 = textValue3

    -- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
    function numberValue6()
      local arg12, arg22
    end
    numberValue8 = {}
    numberValue8.id = arg6
    -- Beginner: Create an interaction area around a world position.
    arg8(stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2, numberValue6, numberValue8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5ce26fe2dd".
eventRegistration(textValue5, textValue6)
eventRegistration = RegisterNetEvent
textValue5 = "1190721772"
-- Beginner: this function handles network event "1190721772".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1, arg2) ===
function textValue6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder
  arg3 = dataTable7
  arg3[arg1] = arg2
  arg3 = CMG
  arg3 = arg3.createArea
  arg4 = string
  arg4 = arg4.format
  arg5 = "graffiti_%s"
  arg6 = arg1
  arg4 = arg4(arg5, arg6)
  arg5 = arg2.position
  arg6 = 50.0
  arg7 = 50.0
  arg8 = cmgCall3
  stringHelper2 = textValue3

  -- === HELPER FUNCTION (decompiler name: textValue13; parameters: none) ===
  function textValue13()
    local arg12, arg22
  end
  vector3Builder = {}
  vector3Builder.id = arg1
  -- Beginner: Create an interaction area around a world position.
  arg3(arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1190721772".
eventRegistration(textValue5, textValue6)
eventRegistration = RegisterNetEvent
textValue5 = "5b60cbfbdd"
-- Beginner: this function handles network event "5b60cbfbdd".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = dataTable7
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  arg3 = table
  arg3 = arg3.find
  arg4 = dataTable
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  if arg3 then
    arg4 = table
    arg4 = arg4.remove
    arg5 = dataTable
    arg6 = arg3
    arg4(arg5, arg6)
  end
  arg4 = tCMG
  arg4 = arg4.removeArea
  arg5 = string
  arg5 = arg5.format
  arg6 = "graffiti_%s"
  arg7 = arg1
  arg5, arg6, arg7 = arg5(arg6, arg7)
  arg4(arg5, arg6, arg7)
  arg4 = dataTable7
  arg4[arg1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b60cbfbdd".
eventRegistration(textValue5, textValue6)
eventRegistration = RMenu
eventRegistration = eventRegistration.Add
textValue5 = "graffiti"
textValue6 = "mainmenu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue7 = ""
textValue8 = "Main Menu"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue9 = "cmg_graffiti"
textValue10 = "menu"
rageUiCall, textValue7, textValue8, rageUiCall2, rageUiCall3, textValue9, textValue10 = rageUiCall(textValue7, textValue8, rageUiCall2, rageUiCall3, textValue9, textValue10)
eventRegistration(textValue5, textValue6, rageUiCall, textValue7, textValue8, rageUiCall2, rageUiCall3, textValue9, textValue10)
eventRegistration = RageUI
eventRegistration = eventRegistration.CreateWhile
textValue5 = 1.0
textValue6 = RMenu
rageUiCall = textValue6
textValue6 = textValue6.Get
textValue7 = "graffiti"
textValue8 = "mainmenu"
-- Beginner: result below is menu.
textValue6 = textValue6(rageUiCall, textValue7, textValue8)
rageUiCall = nil

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "graffiti"
  arg5 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local arg12, arg22, arg32, dataTable2, dataTable3, dataTable5, coords, numberValue16
    arg12 = assert
    arg22 = flag8
    arg12(arg22)
    arg12 = CMG
    arg12 = arg12.getGangRecognisedTexture
    arg12 = arg12()
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.Checkbox
      arg22 = "Show Gang Texture"
      arg32 = ""
      dataTable2 = flag8.useGangTexture
      dataTable3 = {}

      -- === HELPER FUNCTION (decompiler name: dataTable5; parameters: arg13, arg23, arg33, arg42) ===
      function dataTable5(arg13, arg23, arg33, arg42)
        flag8.useGangTexture = arg42
      end
      -- Beginner: Draw a RageUI checkbox.
      arg12(arg22, arg32, dataTable2, dataTable3, dataTable5)
    end
    arg12 = flag8.useGangTexture
    if not arg12 then
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "Text"
      arg32 = "The text that should display on the graffiti."
      dataTable2 = {}
      dataTable3 = flag8.content
      dataTable2.RightLabel = dataTable3
      dataTable3 = true

      -- === HELPER FUNCTION (decompiler name: dataTable5; parameters: arg13, arg23, arg33) ===
      function dataTable5(arg13, arg23, arg33)
        local arg42, cmgCall4, serverEventCall, textValue11
        if arg33 then
          arg42 = CMG
          arg42 = arg42.clientPrompt
          cmgCall4 = "Enter Text"
          serverEventCall = ""

          -- === HELPER FUNCTION (decompiler name: textValue11; parameters: arg14) ===
          function textValue11(arg14)
            local workValue16, workValue26, stringHelper, workValue28, workValue29, textValue12
            workValue16 = #arg14
            workValue26 = cmgCall.minTextLength
            if workValue16 >= workValue26 then
              workValue16 = #arg14
              workValue26 = cmgCall.maxTextLength
              if workValue16 <= workValue26 then
                workValue16 = cmgCall.fontDisplayNamesIndexToKey
                workValue26 = flag8.fontIndex
                workValue16 = workValue16[workValue26]
                workValue26 = cmgCall.fonts
                workValue26 = workValue26[workValue16]
                stringHelper = workValue26.forceUppercase
                if stringHelper then
                  stringHelper = string
                  stringHelper = stringHelper.upper
                  workValue28 = arg14
                  stringHelper = stringHelper(workValue28)
                  arg14 = stringHelper
                end
                stringHelper = string
                stringHelper = stringHelper.gsub
                workValue28 = arg14
                workValue29 = workValue26.allowedInverse
                textValue12 = ""
                stringHelper = stringHelper(workValue28, workValue29, textValue12)
                arg14 = stringHelper
                flag8.content = arg14
            end
            else
              workValue16 = notify
              workValue26 = "~r~Text must be between 1 and 10 characters in length."
              -- Beginner: Show a notification to the player.
              workValue16(workValue26)
            end
          end
          arg42(cmgCall4, serverEventCall, textValue11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, arg32, dataTable2, dataTable3, dataTable5)
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Font"
      arg32 = cmgCall.fontDisplayNames
      dataTable2 = flag8.fontIndex
      dataTable3 = ""
      dataTable5 = {}
      coords = true

      -- === HELPER FUNCTION (decompiler name: numberValue16; parameters: arg13, arg23, arg33, arg42) ===
      function numberValue16(arg13, arg23, arg33, arg42)
        flag8.fontIndex = arg42
      end
      -- Beginner: Draw a RageUI list selector.
      arg12(arg22, arg32, dataTable2, dataTable3, dataTable5, coords, numberValue16)
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Colour"
      arg32 = cmgCall.coloursList
      dataTable2 = flag8.colourIndex
      dataTable3 = ""
      dataTable5 = {}
      coords = true

      -- === HELPER FUNCTION (decompiler name: numberValue16; parameters: arg13, arg23, arg33, arg42) ===
      function numberValue16(arg13, arg23, arg33, arg42)
        flag8.colourIndex = arg42
      end
      arg12(arg22, arg32, dataTable2, dataTable3, dataTable5, coords, numberValue16)
      arg12 = RageUI
      arg12 = arg12.List
      arg22 = "Scale"
      arg32 = cmgCall.sprayScalesText
      dataTable2 = flag8.scaleIndex
      dataTable3 = ""
      dataTable5 = {}
      coords = true

      -- === HELPER FUNCTION (decompiler name: numberValue16; parameters: arg13, arg23, arg33, arg42) ===
      function numberValue16(arg13, arg23, arg33, arg42)
        flag8.scaleIndex = arg42
      end
      -- Beginner: Draw a RageUI list selector.
      arg12(arg22, arg32, dataTable2, dataTable3, dataTable5, coords, numberValue16)
    end
    arg12 = RageUI
    arg12 = arg12.Button
    arg22 = "~b~Place Graffiti"
    arg32 = "Places the graffiti as is currently previewed."
    dataTable2 = true

    -- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg13, arg23, arg33) ===
    function dataTable3(arg13, arg23, arg33)
      local arg42, cmgCall4, serverEventCall, textValue11, workValue30, workValue31, workValue33, workValue2, workValue4, workValue6, workValue7, workValue8, workValue11
      if arg33 then
        arg42 = GetStreetNameFromHashKey
        cmgCall4 = GetStreetNameAtCoord
        serverEventCall = flag8.foundPosition
        serverEventCall = serverEventCall.x
        textValue11 = flag8.foundPosition
        textValue11 = textValue11.y
        workValue30 = flag8.foundPosition
        workValue30 = workValue30.z
        cmgCall4, serverEventCall, textValue11, workValue30, workValue31, workValue33, workValue2, workValue4, workValue6, workValue7, workValue8, workValue11 = cmgCall4(serverEventCall, textValue11, workValue30)
        arg42 = arg42(cmgCall4, serverEventCall, textValue11, workValue30, workValue31, workValue33, workValue2, workValue4, workValue6, workValue7, workValue8, workValue11)
        cmgCall4 = CMG
        cmgCall4 = cmgCall4.getModelGender
        cmgCall4 = cmgCall4()
        serverEventCall = TriggerServerEvent
        textValue11 = "e7f30e33d9"
        workValue30 = flag8.foundPosition
        workValue31 = flag8.calculatedRotation
        workValue33 = flag8.content
        workValue2 = flag8.fontIndex
        workValue4 = flag8.colourIndex
        workValue6 = flag8.scaleIndex
        workValue7 = flag8.useGangTexture
        workValue8 = arg42
        workValue11 = cmgCall4
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7f30e33d9".
        serverEventCall(textValue11, workValue30, workValue31, workValue33, workValue2, workValue4, workValue6, workValue7, workValue8, workValue11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg32, dataTable2, dataTable3)
  end

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
end
eventRegistration(textValue5, textValue6, rageUiCall, textValue7)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function eventRegistration(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local stringHelper2, textValue13, vector3Builder, numberValue, numberValue2, vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11, vector3Builder4, numberValue12, numberValue13, vector3Builder5, numberValue14, flag6, textValue, workValue23
  stringHelper2 = true
  flag = stringHelper2
  stringHelper2 = tCMG
  stringHelper2 = stringHelper2.setCanAnim
  textValue13 = false
  stringHelper2(textValue13)
  stringHelper2 = CMG
  stringHelper2 = stringHelper2.loadAnimDict
  textValue13 = arg1
  -- Beginner: Load a GTA animation dictionary before using it.
  stringHelper2(textValue13)
  stringHelper2 = CMG
  stringHelper2 = stringHelper2.loadModel
  textValue13 = arg3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  stringHelper2(textValue13)
  stringHelper2 = CMG
  stringHelper2 = stringHelper2.requestEntitySpawn
  textValue13 = arg8
  stringHelper2(textValue13)
  stringHelper2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stringHelper2 = stringHelper2()
  textValue13 = CMG
  textValue13 = textValue13.getPlayerCoords
  -- Beginner: result below is playerCoords.
  textValue13 = textValue13()
  vector3Builder = CreateObject
  numberValue = arg3
  numberValue2 = textValue13.x
  vector3Builder2 = textValue13.y
  numberValue6 = textValue13.z
  numberValue8 = true
  vector3Builder3 = true
  numberValue10 = false
  -- Beginner: result below is objectEntity.
  vector3Builder = vector3Builder(numberValue, numberValue2, vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10)
  numberValue = AttachEntityToEntity
  numberValue2 = vector3Builder
  vector3Builder2 = stringHelper2
  numberValue6 = GetPedBoneIndex
  numberValue8 = stringHelper2
  vector3Builder3 = arg4
  numberValue6 = numberValue6(numberValue8, vector3Builder3)
  numberValue8 = arg5.x
  vector3Builder3 = arg5.y
  numberValue10 = arg5.z
  numberValue11 = arg6.x
  vector3Builder4 = arg6.y
  numberValue12 = arg6.z
  numberValue13 = true
  vector3Builder5 = true
  numberValue14 = false
  flag6 = false
  textValue = 1
  workValue23 = true
  -- Beginner: Attach one entity to another entity.
  numberValue(numberValue2, vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11, vector3Builder4, numberValue12, numberValue13, vector3Builder5, numberValue14, flag6, textValue, workValue23)
  numberValue = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  numberValue = numberValue()
  while true do
    numberValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue2 = numberValue2()
    numberValue2 = numberValue2 - numberValue
    if arg7 < numberValue2 then
      break
    end
    numberValue2 = IsEntityPlayingAnim
    vector3Builder2 = stringHelper2
    numberValue6 = arg1
    numberValue8 = arg2
    vector3Builder3 = 3
    numberValue2 = numberValue2(vector3Builder2, numberValue6, numberValue8, vector3Builder3)
    if not numberValue2 then
      numberValue2 = TaskPlayAnim
      vector3Builder2 = stringHelper2
      numberValue6 = arg1
      numberValue8 = arg2
      vector3Builder3 = 1.0
      numberValue10 = 1.0
      numberValue11 = -1
      vector3Builder4 = 1
      numberValue12 = 0
      numberValue13 = false
      vector3Builder5 = false
      numberValue14 = false
      -- Beginner: Play an animation on a ped.
      numberValue2(vector3Builder2, numberValue6, numberValue8, vector3Builder3, numberValue10, numberValue11, vector3Builder4, numberValue12, numberValue13, vector3Builder5, numberValue14)
    end
    numberValue2 = Wait
    vector3Builder2 = 0
    numberValue2(vector3Builder2)
  end
  numberValue2 = SetModelAsNoLongerNeeded
  vector3Builder2 = arg3
  numberValue2(vector3Builder2)
  numberValue2 = RemoveAnimDict
  vector3Builder2 = arg1
  numberValue2(vector3Builder2)
  numberValue2 = StopAnimTask
  vector3Builder2 = stringHelper2
  numberValue6 = arg1
  numberValue8 = arg2
  vector3Builder3 = 1.0
  numberValue2(vector3Builder2, numberValue6, numberValue8, vector3Builder3)
  numberValue2 = DeleteEntity
  vector3Builder2 = vector3Builder
  -- Beginner: Delete a GTA entity.
  numberValue2(vector3Builder2)
  numberValue2 = tCMG
  numberValue2 = numberValue2.setCanAnim
  vector3Builder2 = true
  numberValue2(vector3Builder2)
  numberValue2 = false
  flag = numberValue2
end
textValue5 = RegisterNetEvent
textValue6 = "e2e61e9a92"
-- Beginner: this function handles network event "e2e61e9a92".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder
  arg2 = Citizen
  arg2 = arg2.CreateThread
  -- Beginner: this function handles network event "e2e61e9a92".

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, arg22, arg32, dataTable2, dataTable3
    arg12 = CMG
    arg12 = arg12.startCircularProgressBar
    arg22 = ""
    arg32 = cmgCall.sprayGraffitiTimeMsec
    dataTable2 = nil

    -- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
    function dataTable3()
      local arg13, arg23
    end
    arg12(arg22, arg32, dataTable2, dataTable3)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "graffiti"
  arg6 = "mainmenu"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = false
  arg2(arg3, arg4)
  arg2 = TaskGoStraightToCoord
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = arg1.x
  arg5 = arg1.y
  arg6 = arg1.z
  arg7 = 1.0
  arg8 = -1
  stringHelper2 = 0.0
  textValue13 = 0.1
  arg2(arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13)
  arg2 = Wait
  arg3 = 500
  arg2(arg3)
  arg2 = eventRegistration
  arg3 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
  arg4 = "weed_spraybottle_stand_spraying_01_inspector"
  arg5 = -765160883
  arg6 = 57005
  arg7 = vector3
  arg8 = 0.072
  stringHelper2 = 0.041
  textValue13 = -0.06
  arg7 = arg7(arg8, stringHelper2, textValue13)
  arg8 = vector3
  stringHelper2 = 33.0
  textValue13 = 38.0
  vector3Builder = 0.0
  arg8 = arg8(stringHelper2, textValue13, vector3Builder)
  stringHelper2 = cmgCall.sprayGraffitiTimeMsec
  textValue13 = "graffiti_can"
  arg2(arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e2e61e9a92".
textValue5(textValue6, rageUiCall)
textValue5 = RegisterNetEvent
textValue6 = "03a0c4cf0f"
-- Beginner: this function handles network event "03a0c4cf0f".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13
  arg1 = Citizen
  arg1 = arg1.CreateThread
  -- Beginner: this function handles network event "03a0c4cf0f".

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, arg22, arg32, dataTable2, dataTable3
    arg12 = CMG
    arg12 = arg12.startCircularProgressBar
    arg22 = ""
    arg32 = cmgCall.removeGraffitiTimeMsec
    dataTable2 = nil

    -- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
    function dataTable3()
      local arg13, arg23
    end
    arg12(arg22, arg32, dataTable2, dataTable3)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
  arg1 = eventRegistration
  arg2 = "timetable@maid@cleaning_window@idle_a"
  arg3 = "idle_a"
  arg4 = 921993182
  arg5 = 28422
  arg6 = vector3
  arg7 = 0.0
  arg8 = 0.0
  stringHelper2 = 0.0
  arg6 = arg6(arg7, arg8, stringHelper2)
  arg7 = vector3
  arg8 = 0.0
  stringHelper2 = 0.0
  textValue13 = 0.0
  arg7 = arg7(arg8, stringHelper2, textValue13)
  arg8 = cmgCall.removeGraffitiTimeMsec
  stringHelper2 = "graffiti_rag"
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "03a0c4cf0f".
textValue5(textValue6, rageUiCall)
textValue5 = RegisterNetEvent
textValue6 = "266f8c002a"
-- Beginner: this function handles network event "266f8c002a".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1, arg2, arg3) ===
function rageUiCall(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13, vector3Builder
  arg4 = GetPlayerFromServerId
  arg5 = arg1
  -- Beginner: result below is playerIndex.
  arg4 = arg4(arg5)
  if -1 == arg4 then
    return
  end
  arg5 = GetPlayerPed
  arg6 = arg4
  -- Beginner: result below is playerPed.
  arg5 = arg5(arg6)
  if 0 == arg5 then
    return
  end
  arg6 = Wait
  arg7 = 1000
  arg6(arg7)
  arg6 = GetEntityForwardVector
  arg7 = arg5
  arg6 = arg6(arg7)
  arg7 = GetEntityCoords
  arg8 = arg5
  -- Beginner: result below is entityCoords.
  arg7 = arg7(arg8)
  arg8 = arg6 * 0.5
  arg7 = arg7 + arg8
  arg8 = vector3
  stringHelper2 = 0.0
  textValue13 = 0.0
  vector3Builder = -0.5
  arg8 = arg8(stringHelper2, textValue13, vector3Builder)
  arg7 = arg7 + arg8
  arg8 = GetEntityHeading
  stringHelper2 = arg5
  -- Beginner: result below is heading.
  arg8 = arg8(stringHelper2)
  stringHelper2 = CMG
  stringHelper2 = stringHelper2.loadPtfx
  textValue13 = "scr_recartheft"
  stringHelper2(textValue13)
  stringHelper2 = Citizen
  stringHelper2 = stringHelper2.CreateThread

  -- === HELPER FUNCTION (decompiler name: textValue13; parameters: none) ===
  function textValue13()
    local arg12, arg22, arg32, dataTable2, dataTable3, dataTable5, coords, numberValue16, flag9, workValue32, workValue, workValue3, workValue5, numberValue4, numberValue7, workValue10, numberValue9, flag3, flag4, flag5
    arg12 = 1700
    arg22 = 1
    arg32 = math
    arg32 = arg32.floor
    dataTable2 = cmgCall.sprayGraffitiTimeMsec
    dataTable2 = dataTable2 / arg12
    arg32 = arg32(dataTable2)
    dataTable2 = 1
    for dataTable3 = arg22, arg32, dataTable2 do
      dataTable5 = dataTable3 % 3
      if 1 == dataTable5 then
        dataTable5 = CMG
        dataTable5 = dataTable5.getPlayerCoords
        -- Beginner: result below is playerCoords.
        dataTable5 = dataTable5()
        coords = GetEntityCoords
        numberValue16 = arg5
        flag9 = true
        -- Beginner: result below is entityCoords.
        coords = coords(numberValue16, flag9)
        dataTable5 = dataTable5 - coords
        dataTable5 = #dataTable5
        if dataTable5 < 10.0 then
          dataTable5 = SendNUIMessage
          coords = {}
          coords.transactionType = "spray"
          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
          dataTable5(coords)
        end
      end
      dataTable5 = UseParticleFxAssetNextCall
      coords = "scr_recartheft"
      dataTable5(coords)
      dataTable5 = 0
      coords = 0
      numberValue16 = 0
      flag9 = arg3
      if flag9 then
        flag9 = cmgCall.coloursRGB
        workValue32 = arg2
        flag9 = flag9[workValue32]
        workValue32 = flag9.r
        workValue = flag9.g
        numberValue16 = flag9.b
        coords = workValue
        dataTable5 = workValue32
      else
        flag9 = GetHudColour
        workValue32 = cmgCall2.colourLookup
        workValue = arg2
        workValue32 = workValue32[workValue]
        workValue32 = workValue32.hud
        flag9, workValue32, workValue = flag9(workValue32)
        numberValue16 = workValue
        coords = workValue32
        dataTable5 = flag9
      end
      flag9 = SetParticleFxNonLoopedColour
      workValue32 = dataTable5 / 255
      workValue = coords / 255
      workValue3 = numberValue16 / 255
      flag9(workValue32, workValue, workValue3)
      flag9 = SetParticleFxNonLoopedAlpha
      workValue32 = 1.0
      flag9(workValue32)
      flag9 = StartParticleFxNonLoopedAtCoord
      workValue32 = "scr_wheel_burnout"
      workValue = arg7.x
      workValue3 = arg7.y
      workValue5 = arg7.z
      workValue5 = workValue5 + 2.0
      numberValue4 = 0.0
      numberValue7 = 0.0
      workValue10 = arg8
      numberValue9 = 0.7
      flag3 = false
      flag4 = false
      flag5 = false
      flag9(workValue32, workValue, workValue3, workValue5, numberValue4, numberValue7, workValue10, numberValue9, flag3, flag4, flag5)
      flag9 = Wait
      workValue32 = arg12
      flag9(workValue32)
    end
    arg22 = RemoveNamedPtfxAsset
    arg32 = "scr_recartheft"
    arg22(arg32)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stringHelper2(textValue13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "266f8c002a".
textValue5(textValue6, rageUiCall)
textValue5 = CMG

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1, arg2) ===
function textValue6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13
  arg3 = {}
  arg4 = pairs
  arg5 = dataTable
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, stringHelper2 in arg4, arg5, arg6, arg7 do
    textValue13 = stringHelper2.position
    textValue13 = textValue13 - arg1
    textValue13 = #textValue13
    if arg2 > textValue13 then
      textValue13 = stringHelper2.id
      arg3[textValue13] = stringHelper2
    end
  end
  return arg3
end
textValue5.getNearbyGraffitisInRangeClient = textValue6
textValue5 = RegisterNetEvent
textValue6 = "10f402facb"
-- Beginner: this function handles network event "10f402facb".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, stringHelper2, textValue13
  arg1 = flag
  if arg1 then
    return
  end
  arg1 = cmgCall.maxSurfaceDistance
  arg2 = nil
  arg3 = pairs
  arg4 = dataTable
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    stringHelper2 = arg8.position
    textValue13 = CMG
    textValue13 = textValue13.getPlayerCoords
    -- Beginner: result below is playerCoords.
    textValue13 = textValue13()
    stringHelper2 = stringHelper2 - textValue13
    stringHelper2 = #stringHelper2
    if arg1 > stringHelper2 then
      arg2 = arg8.id
      arg1 = stringHelper2
    end
  end
  arg3 = dataTable
  if not arg3 then
    arg3 = notify
    arg4 = "~r~No nearby graffiti to clean."
    -- Beginner: Show a notification to the player.
    arg3(arg4)
    return
  end
  arg3 = TriggerServerEvent
  arg4 = "5b60cbfbdd"
  arg5 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b60cbfbdd".
  arg3(arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "10f402facb".
textValue5(textValue6, rageUiCall)
textValue5 = CMG
textValue5 = textValue5.registerDevMenuItems
textValue6 = "Graffiti"

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Play Local Spray"
  arg3 = ""
  arg4 = true

  -- === HELPER FUNCTION: arg5(arg12, arg22, arg32) ===
  function arg5(arg12, arg22, arg32)
    local dataTable2, dataTable3, dataTable5
    if arg32 then
      dataTable2 = TriggerEvent
      dataTable3 = "e2e61e9a92"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e2e61e9a92".
      dataTable2(dataTable3)
      dataTable2 = TriggerEvent
      dataTable3 = "266f8c002a"
      dataTable5 = CMG
      dataTable5 = dataTable5.getLocalPlayerSrc
      dataTable5 = dataTable5()
      dataTable2(dataTable3, dataTable5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, arg3, arg4, arg5)
end
textValue5(textValue6, rageUiCall)
textValue5 = CMG

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2
  arg1 = dataTable
  return arg1
end
textValue5.getNearbyGraffitis = textValue6
textValue5 = AddEventHandler
textValue6 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 ~= arg2 then
    return
  end
  arg2 = workValue14
  arg2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
textValue5(textValue6, rageUiCall)
