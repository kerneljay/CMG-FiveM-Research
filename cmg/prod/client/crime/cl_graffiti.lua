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
local cmgOperation, cmgOperation2, text4, stateFlag7, stateFlag8, dataCollection4, number15, dataCollection6, number17, dataCollection7, dataCollection, stateFlag, stateFlag2, number3, number5, workingValue9, workingValue12, workingValue13, workingValue14, workingValue15, workingValue17, workingValue18, backgroundThread, workingValue19, workingValue20, workingValue21, workingValue22, cmgOperation3, text3, eventHandler, text5, text6, rageUiOperation, text7, text8, rageUiOperation2, rageUiOperation3, text9, text10
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation2 = "cfg/cfg_graffiti"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation2)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.loadModule
text4 = "cfg/cfg_gang"
-- Beginner: result below is config.
cmgOperation2 = cmgOperation2(text4)
text4 = CreateCam
stateFlag7 = "DEFAULT_SCRIPTED_CAMERA"
stateFlag8 = false
-- Beginner: result below is cameraHandle.
text4 = text4(stateFlag7, stateFlag8)
stateFlag7 = false
stateFlag8 = nil
dataCollection4 = {}
number15 = 1
dataCollection6 = {}
number17 = 1
dataCollection7 = {}
dataCollection = {}
stateFlag = false
stateFlag2 = false
number3 = 0
number5 = 5000

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1.handle
  if not localValue2 then
    localValue2 = RequestScaleformMovie
    localValue3 = localValue1.name
    -- Beginner: result below is scaleformHandle.
    localValue2 = localValue2(localValue3)
    localValue1.handle = localValue2
  end
  localValue2 = localValue1.loaded
  if localValue2 then
    localValue2 = localValue1.handle
    return localValue2
  else
    localValue2 = HasScaleformMovieLoaded
    localValue3 = localValue1.handle
    localValue2 = localValue2(localValue3)
    localValue1.loaded = localValue2
    localValue2 = nil
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3
  localValue2 = number15
  localValue1 = dataCollection4
  localValue1 = localValue1[localValue2]
  if not localValue1 then
    return
  end
  localValue2 = number15
  localValue2 = localValue2 + 1
  number15 = localValue2
  localValue2 = number15
  localValue3 = dataCollection4
  localValue3 = #localValue3
  if localValue2 > localValue3 then
    localValue2 = 1
    number15 = localValue2
  end
  localValue2 = workingValue9
  localValue3 = localValue1
  return localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3
  localValue2 = number17
  localValue1 = dataCollection6
  localValue1 = localValue1[localValue2]
  if not localValue1 then
    return
  end
  localValue2 = number17
  localValue2 = localValue2 + 1
  number17 = localValue2
  localValue2 = number17
  localValue3 = dataCollection6
  localValue3 = #localValue3
  if localValue2 > localValue3 then
    localValue2 = 1
    number17 = localValue2
  end
  localValue2 = workingValue9
  localValue3 = localValue1
  return localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue1 = stateFlag2
  if not localValue1 then
    return
  end
  localValue1 = ipairs
  localValue2 = dataCollection4
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.handle
    if localValue7 then
      localValue7 = SetScaleformMovieAsNoLongerNeeded
      localValue8 = localValue6.handle
      localValue7(localValue8)
      localValue6.handle = nil
      localValue6.loaded = false
    end
  end
  localValue1 = ipairs
  localValue2 = dataCollection6
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.handle
    if localValue7 then
      localValue7 = SetScaleformMovieAsNoLongerNeeded
      localValue8 = localValue6.handle
      localValue7(localValue8)
      localValue6.handle = nil
      localValue6.loaded = false
    end
  end
  localValue1 = HasStreamedTextureDictLoaded
  localValue2 = cmgOperation.gangTextureDictionaryName
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = SetStreamedTextureDictAsNoLongerNeeded
    localValue2 = cmgOperation.gangTextureDictionaryName
    localValue1(localValue2)
  end
  localValue1 = print
  localValue2 = "[CMG] Unloaded all graffiti"
  localValue1(localValue2)
  localValue1 = false
  stateFlag2 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2, localValue3) ===
function workingValue15(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3, number, number2, createVector32
  localValue4 = localValue3 * 1000.0
  localValue4 = localValue2 + localValue4
  localValue5 = StartShapeTestRay
  localValue6 = localValue2.x
  localValue7 = localValue2.y
  localValue8 = localValue2.z
  stringHelper2 = localValue4.x
  text13 = localValue4.y
  createVector3 = localValue4.z
  number = 1
  number2 = localValue1
  createVector32 = 0
  localValue5 = localValue5(localValue6, localValue7, localValue8, stringHelper2, text13, createVector3, number, number2, createVector32)
  localValue6 = GetShapeTestResultEx
  localValue7 = localValue5
  localValue6, localValue7, localValue8, stringHelper2, text13 = localValue6(localValue7)
  createVector3 = 1 == localValue7
  number = localValue8
  number2 = stringHelper2
  createVector32 = text13
  return createVector3, number, number2, createVector32
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1, localValue2) ===
function workingValue17(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = math
  localValue3 = localValue3.abs
  localValue4 = localValue1.x
  localValue5 = localValue2.x
  localValue4 = localValue4 - localValue5
  localValue3 = localValue3(localValue4)
  localValue4 = math
  localValue4 = localValue4.abs
  localValue5 = localValue1.y
  localValue6 = localValue2.y
  localValue5 = localValue5 - localValue6
  localValue4 = localValue4(localValue5)
  localValue5 = math
  localValue5 = localValue5.abs
  localValue6 = localValue1.z
  localValue7 = localValue2.z
  localValue6 = localValue6 - localValue7
  localValue5 = localValue5(localValue6)
  localValue6 = 0.01
  localValue6 = localValue3 < localValue6
  return localValue6
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue18(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3, number, number2, createVector32, number6, number8, createVector33, number10, number11, createVector34, number12, number13, createVector35, number14, stateFlag6, text, workingValue23, text2, workingValue24, workingValue25, workingValue27
  localValue5 = workingValue15
  localValue6 = localValue1
  localValue7 = localValue3
  localValue8 = localValue4
  localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6, localValue7, localValue8)
  stringHelper2 = workingValue15
  text13 = localValue1
  createVector3 = vector3
  number = 0.0
  number2 = 0.0
  createVector32 = 0.2
  createVector3 = createVector3(number, number2, createVector32)
  createVector3 = localValue3 + createVector3
  number = localValue4
  stringHelper2, text13, createVector3 = stringHelper2(text13, createVector3, number)
  number = workingValue15
  number2 = localValue1
  createVector32 = vector3
  number6 = 1.0
  number8 = 0.0
  createVector33 = 0.0
  createVector32 = createVector32(number6, number8, createVector33)
  createVector32 = localValue3 + createVector32
  number6 = localValue4
  number, number2, createVector32 = number(number2, createVector32, number6)
  number6 = workingValue15
  number8 = localValue1
  createVector33 = vector3
  number10 = -1.0
  number11 = 0.0
  createVector34 = 0.0
  createVector33 = createVector33(number10, number11, createVector34)
  createVector33 = localValue3 + createVector33
  number10 = localValue4
  number6, number8, createVector33 = number6(number8, createVector33, number10)
  number10 = workingValue15
  number11 = localValue1
  createVector34 = vector3
  number12 = 0.0
  number13 = 1.0
  createVector35 = 0.0
  createVector34 = createVector34(number12, number13, createVector35)
  createVector34 = localValue3 + createVector34
  number12 = localValue4
  number10, number11, createVector34 = number10(number11, createVector34, number12)
  number12 = workingValue15
  number13 = localValue1
  createVector35 = vector3
  number14 = 0.0
  stateFlag6 = -1.0
  text = 0.0
  createVector35 = createVector35(number14, stateFlag6, text)
  createVector35 = localValue3 + createVector35
  number14 = localValue4
  number12, number13, createVector35 = number12(number13, createVector35, number14)
  number14 = createVector3.z
  stateFlag6 = 0.9
  number14 = number14 > stateFlag6
  if not (not number14 and localValue5 and stringHelper2 and number and number6 and number10) or not number12 then
    stateFlag6 = false
    text = "Point the spray at a flat wall"
    return stateFlag6, text
  end
  stateFlag6 = cmgOperation.disallowedMaterials
  stateFlag6 = stateFlag6[localValue8]
  if stateFlag6 then
    stateFlag6 = false
    text = "You cannot use the spray on this surface"
    return stateFlag6, text
  end
  stateFlag6 = localValue2 - localValue6
  stateFlag6 = #stateFlag6
  text = cmgOperation.maxSurfaceDistance
  if stateFlag6 > text then
    stateFlag6 = false
    text = "The surface is too far away"
    return stateFlag6, text
  end
  stateFlag6 = workingValue17
  text = localValue7
  workingValue23 = createVector3
  stateFlag6 = stateFlag6(text, workingValue23)
  if stateFlag6 then
    stateFlag6 = workingValue17
    text = localValue7
    workingValue23 = createVector32
    stateFlag6 = stateFlag6(text, workingValue23)
    if stateFlag6 then
      stateFlag6 = workingValue17
      text = localValue7
      workingValue23 = createVector33
      stateFlag6 = stateFlag6(text, workingValue23)
      if stateFlag6 then
        stateFlag6 = workingValue17
        text = localValue7
        workingValue23 = createVector34
        stateFlag6 = stateFlag6(text, workingValue23)
        if stateFlag6 then
          stateFlag6 = workingValue17
          text = localValue7
          workingValue23 = createVector35
          stateFlag6 = stateFlag6(text, workingValue23)
          if stateFlag6 then
            stateFlag6 = CMG
            stateFlag6 = stateFlag6.isOnPlane
            text = localValue6
            workingValue23 = text13
            text2 = number2
            workingValue24 = number8
            workingValue25 = number11
            workingValue27 = number13
            stateFlag6 = stateFlag6(text, workingValue23, text2, workingValue24, workingValue25, workingValue27)
            if stateFlag6 then
              goto continueAtStep144
            end
          end
        end
      end
    end
  end
  stateFlag6 = false
  text = "The surface is not flat enough"
  return stateFlag6, text
  ::continueAtStep144::
  stateFlag6 = 0.02
  text = -stateFlag6
  text = localValue7 * text
  text = localValue6 + text
  workingValue23 = true
  text2 = ""
  workingValue24 = text
  workingValue25 = localValue7
  workingValue27 = localValue7
  return workingValue23, text2, workingValue24, workingValue25, workingValue27
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3
  localValue1 = 1
  localValue2 = 10
  localValue3 = 1
  for localValue4 = localValue1, localValue2, localValue3 do
    localValue5 = "PLAYER_NAME_"
    if localValue4 < 10 then
      localValue6 = localValue5
      localValue7 = "0"
      localValue6 = localValue6 .. localValue7
      localValue5 = localValue6
    end
    localValue6 = localValue5
    localValue7 = tostring
    localValue8 = localValue4
    localValue7 = localValue7(localValue8)
    localValue6 = localValue6 .. localValue7
    localValue5 = localValue6
    localValue6 = table
    localValue6 = localValue6.insert
    localValue7 = dataCollection4
    localValue8 = {}
    localValue8.name = localValue5
    localValue8.handle = nil
    localValue8.loaded = false
    localValue6(localValue7, localValue8)
    localValue6 = table
    localValue6 = localValue6.insert
    localValue7 = dataCollection6
    localValue8 = {}
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    text13 = "graffiti_renderer_%s"
    createVector3 = localValue4
    stringHelper2 = stringHelper2(text13, createVector3)
    localValue8.name = stringHelper2
    localValue8.handle = nil
    localValue8.loaded = false
    localValue6(localValue7, localValue8)
  end
  localValue1 = pairs
  localValue2 = cmgOperation.fonts
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5 in localValue1, localValue2, localValue3, localValue4 do
    localValue6 = RegisterFontFile
    localValue7 = localValue5
    localValue6(localValue7)
    localValue6 = RegisterFontId
    localValue7 = localValue5
    localValue6(localValue7)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue19)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function backgroundThread(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local localValue8, stringHelper2, text13, createVector3, number, number2, createVector32, number6, number8, createVector33, number10, number11, createVector34, number12, number13, createVector35, number14, stateFlag6, text, workingValue23
  localValue8 = true
  stateFlag2 = localValue8
  localValue8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue8 = localValue8()
  number3 = localValue8
  if localValue7 then
    localValue8 = workingValue13
    localValue8 = localValue8()
    if not localValue8 then
      return
    end
    stringHelper2 = HasStreamedTextureDictLoaded
    text13 = cmgOperation.gangTextureDictionaryName
    stringHelper2 = stringHelper2(text13)
    if not stringHelper2 then
      stringHelper2 = RequestStreamedTextureDict
      text13 = cmgOperation.gangTextureDictionaryName
      createVector3 = false
      stringHelper2(text13, createVector3)
      return
    end
    stringHelper2 = PushScaleformMovieFunction
    text13 = localValue8
    createVector3 = "SET_TEXTURE"
    stringHelper2(text13, createVector3)
    stringHelper2 = PushScaleformMovieMethodParameterString
    text13 = cmgOperation.gangTextureDictionaryName
    stringHelper2(text13)
    stringHelper2 = PushScaleformMovieMethodParameterString
    text13 = localValue7
    stringHelper2(text13)
    stringHelper2 = PushScaleformMovieFunctionParameterInt
    text13 = 0
    stringHelper2(text13)
    stringHelper2 = PushScaleformMovieFunctionParameterInt
    text13 = 0
    stringHelper2(text13)
    stringHelper2 = PushScaleformMovieFunctionParameterInt
    text13 = 1280
    stringHelper2(text13)
    stringHelper2 = PushScaleformMovieFunctionParameterInt
    text13 = 720
    stringHelper2(text13)
    stringHelper2 = PopScaleformMovieFunctionVoid
    stringHelper2()
    stringHelper2 = DrawScaleformMovie_3d
    text13 = localValue8
    createVector3 = localValue1.x
    number = localValue1.y
    number2 = localValue1.z
    createVector32 = 180.0
    number6 = localValue2.y
    number8 = localValue2.z
    createVector33 = 0.1
    number10 = 0.1
    number11 = 0.1
    createVector34 = 0.05
    number12 = 0.05
    number13 = 0.05
    createVector35 = 2
    stringHelper2(text13, createVector3, number, number2, createVector32, number6, number8, createVector33, number10, number11, createVector34, number12, number13, createVector35)
  else
    localValue8 = workingValue12
    localValue8 = localValue8()
    if not localValue8 then
      return
    end
    stringHelper2 = cmgOperation.colours
    text13 = cmgOperation.coloursList
    text13 = text13[localValue4]
    stringHelper2 = stringHelper2[text13]
    text13 = cmgOperation.fontDisplayNamesIndexToKey
    text13 = text13[localValue3]
    createVector3 = PushScaleformMovieFunction
    number = localValue8
    number2 = "SET_PLAYER_NAME"
    createVector3(number, number2)
    createVector3 = PushScaleformMovieMethodParameterString
    number = "<FONT color='#"
    number2 = stringHelper2
    createVector32 = "' FACE='"
    number6 = text13
    number8 = "'>"
    createVector33 = localValue6
    number = number .. number2 .. createVector32 .. number6 .. number8 .. createVector33
    createVector3(number)
    createVector3 = PopScaleformMovieFunctionVoid
    createVector3()
    createVector3 = cmgOperation.fonts
    createVector3 = createVector3[text13]
    number = localValue5 / 10.0
    number2 = createVector3.scaleMultiplier
    number = number * number2
    number2 = DrawScaleformMovie_3dNonAdditive
    createVector32 = localValue8
    number6 = localValue1.x
    number8 = localValue1.y
    createVector33 = localValue1.z
    number10 = localValue2.x
    number11 = localValue2.y
    createVector34 = localValue2.z
    number12 = 1.0
    number13 = 1.0
    createVector35 = 1.0
    number14 = number
    stateFlag6 = number
    text = 1.0
    workingValue23 = 2
    number2(createVector32, number6, number8, createVector33, number10, number11, createVector34, number12, number13, createVector35, number14, stateFlag6, text, workingValue23)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3, number, number2, createVector32, number6, number8, createVector33, number10, number11
  localValue1 = 1
  number15 = localValue1
  localValue1 = 1
  number17 = localValue1
  localValue1 = dataCollection
  localValue1 = #localValue1
  if 0 == localValue1 then
    localValue1 = stateFlag2
    if localValue1 then
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      localValue2 = number3
      localValue1 = localValue1 - localValue2
      localValue2 = number5
      if localValue1 > localValue2 then
        localValue1 = workingValue14
        localValue1()
      end
    end
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.hasClientInventoryItem
  localValue2 = "sponge"
  localValue1 = localValue1(localValue2)
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = nil
  localValue4 = pairs
  localValue5 = dataCollection
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, stringHelper2 in localValue4, localValue5, localValue6, localValue7 do
    text13 = stringHelper2.position
    text13 = text13 - localValue2
    text13 = #text13
    if text13 < 25.0 then
      createVector3 = nil
      number = stringHelper2.gangId
      if number then
        number = CMG
        number = number.getGangRecognisedTexture
        number2 = stringHelper2.gangId
        number = number(number2)
        createVector3 = number
      end
      number = backgroundThread
      number2 = stringHelper2.position
      createVector32 = stringHelper2.rotation
      number6 = stringHelper2.fontIndex
      number8 = stringHelper2.colourIndex
      createVector33 = stringHelper2.scale
      number10 = stringHelper2.content
      number11 = createVector3
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      number(number2, createVector32, number6, number8, createVector33, number10, number11)
      if localValue1 and not localValue3 then
        number = stringHelper2.position
        number = number - localValue2
        number = #number
        number2 = cmgOperation.maxSurfaceDistance
        if number < number2 then
          localValue3 = stringHelper2
        end
      end
    end
  end
  if localValue3 then
    localValue4 = stateFlag
    if not localValue4 then
      localValue4 = localValue3.gangId
      localValue5 = CMG
      localValue5 = localValue5.getGangId
      localValue5 = localValue5()
      if localValue4 ~= localValue5 then
        localValue4 = drawNativeNotification
        localValue5 = "Press ~INPUT_CONTEXT~ to clean graffiti with a sponge."
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue4(localValue5)
        localValue4 = IsControlJustPressed
        localValue5 = 0
        localValue6 = 51
        localValue4 = localValue4(localValue5, localValue6)
        if localValue4 then
          localValue4 = TriggerEvent
          localValue5 = "10f402facb"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "10f402facb".
          localValue4(localValue5)
        end
    end
  end
  else
    if localValue3 then
      localValue4 = drawNativeNotification
      localValue5 = "This is your gang graffiti"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue4(localValue5)
    else
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3, number, number2, createVector32
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GetEntityCoords
  localValue4 = localValue2
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  localValue4 = GetGameplayCamCoord
  localValue4 = localValue4()
  localValue5 = CMG
  localValue5 = localValue5.rotationToDirection
  localValue6 = GetGameplayCamRot
  localValue7 = 0
  localValue6, localValue7, localValue8, stringHelper2, text13, createVector3, number, number2, createVector32 = localValue6(localValue7)
  localValue5 = localValue5(localValue6, localValue7, localValue8, stringHelper2, text13, createVector3, number, number2, createVector32)
  localValue6 = workingValue18
  localValue7 = localValue2
  localValue8 = localValue3
  stringHelper2 = localValue4
  text13 = localValue5
  localValue6, localValue7, localValue8, stringHelper2 = localValue6(localValue7, localValue8, stringHelper2, text13)
  if not localValue6 then
    if localValue1 then
      text13 = drawNativeText
      createVector3 = localValue7
      -- Beginner: Draw GTA-style text on screen.
      text13(createVector3)
    end
    text13 = false
    return text13
  end
  if localValue8 and stringHelper2 then
    if not localValue1 then
      text13 = true
      return text13
    end
    text13 = cmgOperation.sprayForwardOffset
    text13 = stringHelper2 * text13
    text13 = localValue8 + text13
    stateFlag8.foundPosition = text13
    text13 = vector3
    createVector3 = stringHelper2.x
    number = stringHelper2.y
    number2 = stringHelper2.z
    number2 = number2 + 0.03
    text13 = text13(createVector3, number, number2)
    stateFlag8.foundNormal = text13
    text13 = stateFlag8
    if text13 then
      text13 = stateFlag8.useGangTexture
      if text13 then
        text13 = stateFlag8.foundPosition
        createVector3 = vector3
        number = 0.0
        number2 = 0.0
        createVector32 = 0.6
        createVector3 = createVector3(number, number2, createVector32)
        text13 = text13 + createVector3
        stateFlag8.foundPosition = text13
      end
    end
    stateFlag8.isValidPosition = true
    text13 = true
    return text13
  else
    text13 = stateFlag8
    if text13 then
      stateFlag8.isValidPosition = false
    end
  end
  text13 = false
  return text13
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1) ===
function workingValue21(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = stateFlag7
  if localValue2 then
    localValue2 = GetCamRot
    localValue3 = text4
    localValue4 = 2
    localValue2 = localValue2(localValue3, localValue4)
    stateFlag8.calculatedRotation = localValue2
    localValue2 = SetCamActive
    localValue3 = text4
    localValue4 = false
    localValue2(localValue3, localValue4)
    localValue2 = false
    stateFlag7 = localValue2
  else
    localValue2 = localValue1.foundPosition
    localValue3 = localValue1.foundNormal
    localValue3 = localValue3 * 10.0
    localValue2 = localValue2 - localValue3
    localValue3 = SetCamCoord
    localValue4 = text4
    localValue5 = localValue1.foundPosition
    localValue5 = localValue5.x
    localValue6 = localValue1.foundPosition
    localValue6 = localValue6.y
    localValue7 = localValue1.foundPosition
    localValue7 = localValue7.z
    localValue3(localValue4, localValue5, localValue6, localValue7)
    localValue3 = PointCamAtCoord
    localValue4 = text4
    localValue5 = localValue2.x
    localValue6 = localValue2.y
    localValue7 = localValue2.z
    localValue3(localValue4, localValue5, localValue6, localValue7)
    localValue3 = SetCamActive
    localValue4 = text4
    localValue5 = true
    localValue3(localValue4, localValue5)
    localValue3 = true
    stateFlag7 = localValue3
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: none) ===
function workingValue22()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2
  localValue1 = assert
  localValue2 = stateFlag8
  localValue1(localValue2)
  localValue1 = stateFlag8
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.IsAnyMenuOfTypeVisible
    localValue2 = "graffiti"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.deleteThreadOnTick
      localValue2 = workingValue22
      localValue1(localValue2)
      localValue1 = nil
      stateFlag8 = localValue1
      return
    end
  end
  localValue1 = workingValue20
  localValue2 = true
  localValue1(localValue2)
  localValue1 = workingValue21
  localValue2 = stateFlag8
  localValue1(localValue2)
  localValue1 = nil
  localValue2 = stateFlag8.useGangTexture
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.getGangRecognisedTexture
    localValue2 = localValue2()
    localValue1 = localValue2
  end
  localValue2 = backgroundThread
  localValue3 = stateFlag8.foundPosition
  localValue4 = stateFlag8.calculatedRotation
  localValue5 = stateFlag8.fontIndex
  localValue6 = stateFlag8.colourIndex
  localValue7 = cmgOperation.sprayScales
  localValue8 = stateFlag8.scaleIndex
  localValue7 = localValue7[localValue8]
  localValue8 = stateFlag8.content
  stringHelper2 = localValue1
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2)
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
text3 = workingValue19
eventHandler = "Graffiti Render"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(text3, eventHandler)
cmgOperation3 = RegisterNetEvent
text3 = "2fa07a16b3"
-- Beginner: this function handles network event "2fa07a16b3".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = stateFlag8
  if not localValue2 then
    localValue2 = stateFlag
    if not localValue2 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue2 = table
  localValue2 = localValue2.count
  localValue3 = CMG
  localValue3 = localValue3.getNearbyGraffitis
  localValue3, localValue4, localValue5, localValue6 = localValue3()
  -- Beginner: result below is count.
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
  if localValue2 > 6 then
    localValue2 = notify
    localValue3 = "~r~Too many graffiti's nearby, please clean them to spray more."
    -- Beginner: Show a notification to the player.
    localValue2(localValue3)
    return
  end
  localValue2 = {}
  localValue3 = vector3
  localValue4 = 0.0
  localValue5 = 0.0
  localValue6 = 0.0
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2.foundPosition = localValue3
  localValue3 = vector3
  localValue4 = 0.0
  localValue5 = 0.0
  localValue6 = 0.0
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2.foundNormal = localValue3
  localValue3 = vector3
  localValue4 = 0.0
  localValue5 = 0.0
  localValue6 = 0.0
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2.calculatedRotation = localValue3
  localValue2.content = "GANG"
  localValue2.fontIndex = 1
  localValue2.colourIndex = 1
  localValue2.scaleIndex = 1
  localValue2.useGangTexture = localValue1
  localValue2.isValidPosition = false
  stateFlag8 = localValue2
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "graffiti"
  localValue6 = "mainmenu"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = true
  localValue2(localValue3, localValue4)
  localValue2 = CMG
  localValue2 = localValue2.createThreadOnTick
  localValue3 = workingValue22
  localValue4 = "Graffiti Selector"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue2(localValue3, localValue4)
  localValue2 = TriggerServerEvent
  localValue3 = "72490db2b8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "72490db2b8".
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2fa07a16b3".
cmgOperation3(text3, eventHandler)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue3 = localValue1.id
  localValue2 = dataCollection7
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = table
    localValue3 = localValue3.insert
    localValue4 = dataCollection
    localValue5 = localValue2
    localValue3(localValue4, localValue5)
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue3 = localValue1.id
  localValue2 = dataCollection7
  localValue2 = localValue2[localValue3]
  if localValue2 then
    localValue3 = table
    localValue3 = localValue3.find
    localValue4 = dataCollection
    localValue5 = localValue2
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 then
      localValue4 = table
      localValue4 = localValue4.remove
      localValue5 = dataCollection
      localValue6 = localValue3
      localValue4(localValue5, localValue6)
    end
  end
end
eventHandler = RegisterNetEvent
text5 = "5ce26fe2dd"
-- Beginner: this function handles network event "5ce26fe2dd".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3, number, number2, createVector32, number6, number8
  dataCollection7 = localValue1
  localValue2 = pairs
  localValue3 = dataCollection7
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = CMG
    localValue8 = localValue8.createArea
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    text13 = "graffiti_%s"
    createVector3 = localValue6
    stringHelper2 = stringHelper2(text13, createVector3)
    text13 = localValue7.position
    createVector3 = 50.0
    number = 50.0
    number2 = cmgOperation3
    createVector32 = text3

    -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
    function number6()
      local localValue12, localValue22
    end
    number8 = {}
    number8.id = localValue6
    -- Beginner: Create an interaction area around a world position.
    localValue8(stringHelper2, text13, createVector3, number, number2, createVector32, number6, number8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5ce26fe2dd".
eventHandler(text5, text6)
eventHandler = RegisterNetEvent
text5 = "1190721772"
-- Beginner: this function handles network event "1190721772".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2) ===
function text6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3
  localValue3 = dataCollection7
  localValue3[localValue1] = localValue2
  localValue3 = CMG
  localValue3 = localValue3.createArea
  localValue4 = string
  localValue4 = localValue4.format
  localValue5 = "graffiti_%s"
  localValue6 = localValue1
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = localValue2.position
  localValue6 = 50.0
  localValue7 = 50.0
  localValue8 = cmgOperation3
  stringHelper2 = text3

  -- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
  function text13()
    local localValue12, localValue22
  end
  createVector3 = {}
  createVector3.id = localValue1
  -- Beginner: Create an interaction area around a world position.
  localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1190721772".
eventHandler(text5, text6)
eventHandler = RegisterNetEvent
text5 = "5b60cbfbdd"
-- Beginner: this function handles network event "5b60cbfbdd".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = dataCollection7
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    return
  end
  localValue3 = table
  localValue3 = localValue3.find
  localValue4 = dataCollection
  localValue5 = localValue2
  localValue3 = localValue3(localValue4, localValue5)
  if localValue3 then
    localValue4 = table
    localValue4 = localValue4.remove
    localValue5 = dataCollection
    localValue6 = localValue3
    localValue4(localValue5, localValue6)
  end
  localValue4 = tCMG
  localValue4 = localValue4.removeArea
  localValue5 = string
  localValue5 = localValue5.format
  localValue6 = "graffiti_%s"
  localValue7 = localValue1
  localValue5, localValue6, localValue7 = localValue5(localValue6, localValue7)
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = dataCollection7
  localValue4[localValue1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b60cbfbdd".
eventHandler(text5, text6)
eventHandler = RMenu
eventHandler = eventHandler.Add
text5 = "graffiti"
text6 = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text7 = ""
text8 = "Main Menu"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text9 = "cmg_graffiti"
text10 = "menu"
rageUiOperation, text7, text8, rageUiOperation2, rageUiOperation3, text9, text10 = rageUiOperation(text7, text8, rageUiOperation2, rageUiOperation3, text9, text10)
eventHandler(text5, text6, rageUiOperation, text7, text8, rageUiOperation2, rageUiOperation3, text9, text10)
eventHandler = RageUI
eventHandler = eventHandler.CreateWhile
text5 = 1.0
text6 = RMenu
rageUiOperation = text6
text6 = text6.Get
text7 = "graffiti"
text8 = "mainmenu"
-- Beginner: result below is menu.
text6 = text6(rageUiOperation, text7, text8)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "graffiti"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, localValue32, dataCollection2, dataCollection3, dataCollection5, coords, number16
    localValue12 = assert
    localValue22 = stateFlag8
    localValue12(localValue22)
    localValue12 = CMG
    localValue12 = localValue12.getGangRecognisedTexture
    localValue12 = localValue12()
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Checkbox
      localValue22 = "Show Gang Texture"
      localValue32 = ""
      dataCollection2 = stateFlag8.useGangTexture
      dataCollection3 = {}

      -- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue13, localValue23, localValue33, localValue42) ===
      function dataCollection5(localValue13, localValue23, localValue33, localValue42)
        stateFlag8.useGangTexture = localValue42
      end
      -- Beginner: Draw a RageUI checkbox.
      localValue12(localValue22, localValue32, dataCollection2, dataCollection3, dataCollection5)
    end
    localValue12 = stateFlag8.useGangTexture
    if not localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "Text"
      localValue32 = "The text that should display on the graffiti."
      dataCollection2 = {}
      dataCollection3 = stateFlag8.content
      dataCollection2.RightLabel = dataCollection3
      dataCollection3 = true

      -- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue13, localValue23, localValue33) ===
      function dataCollection5(localValue13, localValue23, localValue33)
        local localValue42, cmgOperation4, serverEventCall, text11
        if localValue33 then
          localValue42 = CMG
          localValue42 = localValue42.clientPrompt
          cmgOperation4 = "Enter Text"
          serverEventCall = ""

          -- === HELPER FUNCTION (decompiler name: text11; parameters: localValue14) ===
          function text11(localValue14)
            local workingValue16, workingValue26, stringHelper, workingValue28, workingValue29, text12
            workingValue16 = #localValue14
            workingValue26 = cmgOperation.minTextLength
            if workingValue16 >= workingValue26 then
              workingValue16 = #localValue14
              workingValue26 = cmgOperation.maxTextLength
              if workingValue16 <= workingValue26 then
                workingValue16 = cmgOperation.fontDisplayNamesIndexToKey
                workingValue26 = stateFlag8.fontIndex
                workingValue16 = workingValue16[workingValue26]
                workingValue26 = cmgOperation.fonts
                workingValue26 = workingValue26[workingValue16]
                stringHelper = workingValue26.forceUppercase
                if stringHelper then
                  stringHelper = string
                  stringHelper = stringHelper.upper
                  workingValue28 = localValue14
                  stringHelper = stringHelper(workingValue28)
                  localValue14 = stringHelper
                end
                stringHelper = string
                stringHelper = stringHelper.gsub
                workingValue28 = localValue14
                workingValue29 = workingValue26.allowedInverse
                text12 = ""
                stringHelper = stringHelper(workingValue28, workingValue29, text12)
                localValue14 = stringHelper
                stateFlag8.content = localValue14
            end
            else
              workingValue16 = notify
              workingValue26 = "~r~Text must be between 1 and 10 characters in length."
              -- Beginner: Show a notification to the player.
              workingValue16(workingValue26)
            end
          end
          localValue42(cmgOperation4, serverEventCall, text11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, localValue32, dataCollection2, dataCollection3, dataCollection5)
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Font"
      localValue32 = cmgOperation.fontDisplayNames
      dataCollection2 = stateFlag8.fontIndex
      dataCollection3 = ""
      dataCollection5 = {}
      coords = true

      -- === HELPER FUNCTION (decompiler name: number16; parameters: localValue13, localValue23, localValue33, localValue42) ===
      function number16(localValue13, localValue23, localValue33, localValue42)
        stateFlag8.fontIndex = localValue42
      end
      -- Beginner: Draw a RageUI list selector.
      localValue12(localValue22, localValue32, dataCollection2, dataCollection3, dataCollection5, coords, number16)
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Colour"
      localValue32 = cmgOperation.coloursList
      dataCollection2 = stateFlag8.colourIndex
      dataCollection3 = ""
      dataCollection5 = {}
      coords = true

      -- === HELPER FUNCTION (decompiler name: number16; parameters: localValue13, localValue23, localValue33, localValue42) ===
      function number16(localValue13, localValue23, localValue33, localValue42)
        stateFlag8.colourIndex = localValue42
      end
      localValue12(localValue22, localValue32, dataCollection2, dataCollection3, dataCollection5, coords, number16)
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Scale"
      localValue32 = cmgOperation.sprayScalesText
      dataCollection2 = stateFlag8.scaleIndex
      dataCollection3 = ""
      dataCollection5 = {}
      coords = true

      -- === HELPER FUNCTION (decompiler name: number16; parameters: localValue13, localValue23, localValue33, localValue42) ===
      function number16(localValue13, localValue23, localValue33, localValue42)
        stateFlag8.scaleIndex = localValue42
      end
      -- Beginner: Draw a RageUI list selector.
      localValue12(localValue22, localValue32, dataCollection2, dataCollection3, dataCollection5, coords, number16)
    end
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue22 = "~b~Place Graffiti"
    localValue32 = "Places the graffiti as is currently previewed."
    dataCollection2 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue13, localValue23, localValue33) ===
    function dataCollection3(localValue13, localValue23, localValue33)
      local localValue42, cmgOperation4, serverEventCall, text11, workingValue30, workingValue31, workingValue33, workingValue2, workingValue4, workingValue6, workingValue7, workingValue8, workingValue11
      if localValue33 then
        localValue42 = GetStreetNameFromHashKey
        cmgOperation4 = GetStreetNameAtCoord
        serverEventCall = stateFlag8.foundPosition
        serverEventCall = serverEventCall.x
        text11 = stateFlag8.foundPosition
        text11 = text11.y
        workingValue30 = stateFlag8.foundPosition
        workingValue30 = workingValue30.z
        cmgOperation4, serverEventCall, text11, workingValue30, workingValue31, workingValue33, workingValue2, workingValue4, workingValue6, workingValue7, workingValue8, workingValue11 = cmgOperation4(serverEventCall, text11, workingValue30)
        localValue42 = localValue42(cmgOperation4, serverEventCall, text11, workingValue30, workingValue31, workingValue33, workingValue2, workingValue4, workingValue6, workingValue7, workingValue8, workingValue11)
        cmgOperation4 = CMG
        cmgOperation4 = cmgOperation4.getModelGender
        cmgOperation4 = cmgOperation4()
        serverEventCall = TriggerServerEvent
        text11 = "e7f30e33d9"
        workingValue30 = stateFlag8.foundPosition
        workingValue31 = stateFlag8.calculatedRotation
        workingValue33 = stateFlag8.content
        workingValue2 = stateFlag8.fontIndex
        workingValue4 = stateFlag8.colourIndex
        workingValue6 = stateFlag8.scaleIndex
        workingValue7 = stateFlag8.useGangTexture
        workingValue8 = localValue42
        workingValue11 = cmgOperation4
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7f30e33d9".
        serverEventCall(text11, workingValue30, workingValue31, workingValue33, workingValue2, workingValue4, workingValue6, workingValue7, workingValue8, workingValue11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue32, dataCollection2, dataCollection3)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
end
eventHandler(text5, text6, rageUiOperation, text7)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function eventHandler(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local stringHelper2, text13, createVector3, number, number2, createVector32, number6, number8, createVector33, number10, number11, createVector34, number12, number13, createVector35, number14, stateFlag6, text, workingValue23
  stringHelper2 = true
  stateFlag = stringHelper2
  stringHelper2 = tCMG
  stringHelper2 = stringHelper2.setCanAnim
  text13 = false
  stringHelper2(text13)
  stringHelper2 = CMG
  stringHelper2 = stringHelper2.loadAnimDict
  text13 = localValue1
  -- Beginner: Load a GTA animation dictionary before using it.
  stringHelper2(text13)
  stringHelper2 = CMG
  stringHelper2 = stringHelper2.loadModel
  text13 = localValue3
  -- Beginner: Request/load a GTA model before spawning or applying it.
  stringHelper2(text13)
  stringHelper2 = CMG
  stringHelper2 = stringHelper2.requestEntitySpawn
  text13 = localValue8
  stringHelper2(text13)
  stringHelper2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stringHelper2 = stringHelper2()
  text13 = CMG
  text13 = text13.getPlayerCoords
  -- Beginner: result below is playerCoords.
  text13 = text13()
  createVector3 = CreateObject
  number = localValue3
  number2 = text13.x
  createVector32 = text13.y
  number6 = text13.z
  number8 = true
  createVector33 = true
  number10 = false
  -- Beginner: result below is objectEntity.
  createVector3 = createVector3(number, number2, createVector32, number6, number8, createVector33, number10)
  number = AttachEntityToEntity
  number2 = createVector3
  createVector32 = stringHelper2
  number6 = GetPedBoneIndex
  number8 = stringHelper2
  createVector33 = localValue4
  number6 = number6(number8, createVector33)
  number8 = localValue5.x
  createVector33 = localValue5.y
  number10 = localValue5.z
  number11 = localValue6.x
  createVector34 = localValue6.y
  number12 = localValue6.z
  number13 = true
  createVector35 = true
  number14 = false
  stateFlag6 = false
  text = 1
  workingValue23 = true
  -- Beginner: Attach one entity to another entity.
  number(number2, createVector32, number6, number8, createVector33, number10, number11, createVector34, number12, number13, createVector35, number14, stateFlag6, text, workingValue23)
  number = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  number = number()
  while true do
    number2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number2 = number2()
    number2 = number2 - number
    if localValue7 < number2 then
      break
    end
    number2 = IsEntityPlayingAnim
    createVector32 = stringHelper2
    number6 = localValue1
    number8 = localValue2
    createVector33 = 3
    number2 = number2(createVector32, number6, number8, createVector33)
    if not number2 then
      number2 = TaskPlayAnim
      createVector32 = stringHelper2
      number6 = localValue1
      number8 = localValue2
      createVector33 = 1.0
      number10 = 1.0
      number11 = -1
      createVector34 = 1
      number12 = 0
      number13 = false
      createVector35 = false
      number14 = false
      -- Beginner: Play an animation on a ped.
      number2(createVector32, number6, number8, createVector33, number10, number11, createVector34, number12, number13, createVector35, number14)
    end
    number2 = Wait
    createVector32 = 0
    number2(createVector32)
  end
  number2 = SetModelAsNoLongerNeeded
  createVector32 = localValue3
  number2(createVector32)
  number2 = RemoveAnimDict
  createVector32 = localValue1
  number2(createVector32)
  number2 = StopAnimTask
  createVector32 = stringHelper2
  number6 = localValue1
  number8 = localValue2
  createVector33 = 1.0
  number2(createVector32, number6, number8, createVector33)
  number2 = DeleteEntity
  createVector32 = createVector3
  -- Beginner: Delete a GTA entity.
  number2(createVector32)
  number2 = tCMG
  number2 = number2.setCanAnim
  createVector32 = true
  number2(createVector32)
  number2 = false
  stateFlag = number2
end
text5 = RegisterNetEvent
text6 = "e2e61e9a92"
-- Beginner: this function handles network event "e2e61e9a92".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread
  -- Beginner: this function handles network event "e2e61e9a92".

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22, localValue32, dataCollection2, dataCollection3
    localValue12 = CMG
    localValue12 = localValue12.startCircularProgressBar
    localValue22 = ""
    localValue32 = cmgOperation.sprayGraffitiTimeMsec
    dataCollection2 = nil

    -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
    function dataCollection3()
      local localValue13, localValue23
    end
    localValue12(localValue22, localValue32, dataCollection2, dataCollection3)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "graffiti"
  localValue6 = "mainmenu"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = TaskGoStraightToCoord
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = localValue1.x
  localValue5 = localValue1.y
  localValue6 = localValue1.z
  localValue7 = 1.0
  localValue8 = -1
  stringHelper2 = 0.0
  text13 = 0.1
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13)
  localValue2 = Wait
  localValue3 = 500
  localValue2(localValue3)
  localValue2 = eventHandler
  localValue3 = "anim@amb@business@weed@weed_inspecting_lo_med_hi@"
  localValue4 = "weed_spraybottle_stand_spraying_01_inspector"
  localValue5 = -765160883
  localValue6 = 57005
  localValue7 = vector3
  localValue8 = 0.072
  stringHelper2 = 0.041
  text13 = -0.06
  localValue7 = localValue7(localValue8, stringHelper2, text13)
  localValue8 = vector3
  stringHelper2 = 33.0
  text13 = 38.0
  createVector3 = 0.0
  localValue8 = localValue8(stringHelper2, text13, createVector3)
  stringHelper2 = cmgOperation.sprayGraffitiTimeMsec
  text13 = "graffiti_can"
  localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e2e61e9a92".
text5(text6, rageUiOperation)
text5 = RegisterNetEvent
text6 = "03a0c4cf0f"
-- Beginner: this function handles network event "03a0c4cf0f".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread
  -- Beginner: this function handles network event "03a0c4cf0f".

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22, localValue32, dataCollection2, dataCollection3
    localValue12 = CMG
    localValue12 = localValue12.startCircularProgressBar
    localValue22 = ""
    localValue32 = cmgOperation.removeGraffitiTimeMsec
    dataCollection2 = nil

    -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
    function dataCollection3()
      local localValue13, localValue23
    end
    localValue12(localValue22, localValue32, dataCollection2, dataCollection3)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
  localValue1 = eventHandler
  localValue2 = "timetable@maid@cleaning_window@idle_a"
  localValue3 = "idle_a"
  localValue4 = 921993182
  localValue5 = 28422
  localValue6 = vector3
  localValue7 = 0.0
  localValue8 = 0.0
  stringHelper2 = 0.0
  localValue6 = localValue6(localValue7, localValue8, stringHelper2)
  localValue7 = vector3
  localValue8 = 0.0
  stringHelper2 = 0.0
  text13 = 0.0
  localValue7 = localValue7(localValue8, stringHelper2, text13)
  localValue8 = cmgOperation.removeGraffitiTimeMsec
  stringHelper2 = "graffiti_rag"
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "03a0c4cf0f".
text5(text6, rageUiOperation)
text5 = RegisterNetEvent
text6 = "266f8c002a"
-- Beginner: this function handles network event "266f8c002a".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13, createVector3
  localValue4 = GetPlayerFromServerId
  localValue5 = localValue1
  -- Beginner: result below is playerIndex.
  localValue4 = localValue4(localValue5)
  if -1 == localValue4 then
    return
  end
  localValue5 = GetPlayerPed
  localValue6 = localValue4
  -- Beginner: result below is playerPed.
  localValue5 = localValue5(localValue6)
  if 0 == localValue5 then
    return
  end
  localValue6 = Wait
  localValue7 = 1000
  localValue6(localValue7)
  localValue6 = GetEntityForwardVector
  localValue7 = localValue5
  localValue6 = localValue6(localValue7)
  localValue7 = GetEntityCoords
  localValue8 = localValue5
  -- Beginner: result below is entityCoords.
  localValue7 = localValue7(localValue8)
  localValue8 = localValue6 * 0.5
  localValue7 = localValue7 + localValue8
  localValue8 = vector3
  stringHelper2 = 0.0
  text13 = 0.0
  createVector3 = -0.5
  localValue8 = localValue8(stringHelper2, text13, createVector3)
  localValue7 = localValue7 + localValue8
  localValue8 = GetEntityHeading
  stringHelper2 = localValue5
  -- Beginner: result below is heading.
  localValue8 = localValue8(stringHelper2)
  stringHelper2 = CMG
  stringHelper2 = stringHelper2.loadPtfx
  text13 = "scr_recartheft"
  stringHelper2(text13)
  stringHelper2 = Citizen
  stringHelper2 = stringHelper2.CreateThread

  -- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
  function text13()
    local localValue12, localValue22, localValue32, dataCollection2, dataCollection3, dataCollection5, coords, number16, stateFlag9, workingValue32, workingValue, workingValue3, workingValue5, number4, number7, workingValue10, number9, stateFlag3, stateFlag4, stateFlag5
    localValue12 = 1700
    localValue22 = 1
    localValue32 = math
    localValue32 = localValue32.floor
    dataCollection2 = cmgOperation.sprayGraffitiTimeMsec
    dataCollection2 = dataCollection2 / localValue12
    localValue32 = localValue32(dataCollection2)
    dataCollection2 = 1
    for dataCollection3 = localValue22, localValue32, dataCollection2 do
      dataCollection5 = dataCollection3 % 3
      if 1 == dataCollection5 then
        dataCollection5 = CMG
        dataCollection5 = dataCollection5.getPlayerCoords
        -- Beginner: result below is playerCoords.
        dataCollection5 = dataCollection5()
        coords = GetEntityCoords
        number16 = localValue5
        stateFlag9 = true
        -- Beginner: result below is entityCoords.
        coords = coords(number16, stateFlag9)
        dataCollection5 = dataCollection5 - coords
        dataCollection5 = #dataCollection5
        if dataCollection5 < 10.0 then
          dataCollection5 = SendNUIMessage
          coords = {}
          coords.transactionType = "spray"
          -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
          dataCollection5(coords)
        end
      end
      dataCollection5 = UseParticleFxAssetNextCall
      coords = "scr_recartheft"
      dataCollection5(coords)
      dataCollection5 = 0
      coords = 0
      number16 = 0
      stateFlag9 = localValue3
      if stateFlag9 then
        stateFlag9 = cmgOperation.coloursRGB
        workingValue32 = localValue2
        stateFlag9 = stateFlag9[workingValue32]
        workingValue32 = stateFlag9.r
        workingValue = stateFlag9.g
        number16 = stateFlag9.b
        coords = workingValue
        dataCollection5 = workingValue32
      else
        stateFlag9 = GetHudColour
        workingValue32 = cmgOperation2.colourLookup
        workingValue = localValue2
        workingValue32 = workingValue32[workingValue]
        workingValue32 = workingValue32.hud
        stateFlag9, workingValue32, workingValue = stateFlag9(workingValue32)
        number16 = workingValue
        coords = workingValue32
        dataCollection5 = stateFlag9
      end
      stateFlag9 = SetParticleFxNonLoopedColour
      workingValue32 = dataCollection5 / 255
      workingValue = coords / 255
      workingValue3 = number16 / 255
      stateFlag9(workingValue32, workingValue, workingValue3)
      stateFlag9 = SetParticleFxNonLoopedAlpha
      workingValue32 = 1.0
      stateFlag9(workingValue32)
      stateFlag9 = StartParticleFxNonLoopedAtCoord
      workingValue32 = "scr_wheel_burnout"
      workingValue = localValue7.x
      workingValue3 = localValue7.y
      workingValue5 = localValue7.z
      workingValue5 = workingValue5 + 2.0
      number4 = 0.0
      number7 = 0.0
      workingValue10 = localValue8
      number9 = 0.7
      stateFlag3 = false
      stateFlag4 = false
      stateFlag5 = false
      stateFlag9(workingValue32, workingValue, workingValue3, workingValue5, number4, number7, workingValue10, number9, stateFlag3, stateFlag4, stateFlag5)
      stateFlag9 = Wait
      workingValue32 = localValue12
      stateFlag9(workingValue32)
    end
    localValue22 = RemoveNamedPtfxAsset
    localValue32 = "scr_recartheft"
    localValue22(localValue32)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  stringHelper2(text13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "266f8c002a".
text5(text6, rageUiOperation)
text5 = CMG

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2) ===
function text6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13
  localValue3 = {}
  localValue4 = pairs
  localValue5 = dataCollection
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, stringHelper2 in localValue4, localValue5, localValue6, localValue7 do
    text13 = stringHelper2.position
    text13 = text13 - localValue1
    text13 = #text13
    if localValue2 > text13 then
      text13 = stringHelper2.id
      localValue3[text13] = stringHelper2
    end
  end
  return localValue3
end
text5.getNearbyGraffitisInRangeClient = text6
text5 = RegisterNetEvent
text6 = "10f402facb"
-- Beginner: this function handles network event "10f402facb".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stringHelper2, text13
  localValue1 = stateFlag
  if localValue1 then
    return
  end
  localValue1 = cmgOperation.maxSurfaceDistance
  localValue2 = nil
  localValue3 = pairs
  localValue4 = dataCollection
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    stringHelper2 = localValue8.position
    text13 = CMG
    text13 = text13.getPlayerCoords
    -- Beginner: result below is playerCoords.
    text13 = text13()
    stringHelper2 = stringHelper2 - text13
    stringHelper2 = #stringHelper2
    if localValue1 > stringHelper2 then
      localValue2 = localValue8.id
      localValue1 = stringHelper2
    end
  end
  localValue3 = dataCollection
  if not localValue3 then
    localValue3 = notify
    localValue4 = "~r~No nearby graffiti to clean."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
    return
  end
  localValue3 = TriggerServerEvent
  localValue4 = "5b60cbfbdd"
  localValue5 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5b60cbfbdd".
  localValue3(localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "10f402facb".
text5(text6, rageUiOperation)
text5 = CMG
text5 = text5.registerDevMenuItems
text6 = "Graffiti"

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Play Local Spray"
  localValue3 = ""
  localValue4 = true

  -- === HELPER FUNCTION: localValue5(localValue12, localValue22, localValue32) ===
  function localValue5(localValue12, localValue22, localValue32)
    local dataCollection2, dataCollection3, dataCollection5
    if localValue32 then
      dataCollection2 = TriggerEvent
      dataCollection3 = "e2e61e9a92"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "e2e61e9a92".
      dataCollection2(dataCollection3)
      dataCollection2 = TriggerEvent
      dataCollection3 = "266f8c002a"
      dataCollection5 = CMG
      dataCollection5 = dataCollection5.getLocalPlayerSrc
      dataCollection5 = dataCollection5()
      dataCollection2(dataCollection3, dataCollection5)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, localValue3, localValue4, localValue5)
end
text5(text6, rageUiOperation)
text5 = CMG

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = dataCollection
  return localValue1
end
text5.getNearbyGraffitis = text6
text5 = AddEventHandler
text6 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 ~= localValue2 then
    return
  end
  localValue2 = workingValue14
  localValue2()
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
text5(text6, rageUiOperation)
