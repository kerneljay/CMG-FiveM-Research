--[[
    LEVEL 1 BEGINNER GUIDE — Rpgangs
    =====================================

    File: cmg/prod/client/crime/cl_rpgangs.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Rpgangs feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 14
      * Background threads: 0
      * Always-running loops: 2
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
local dataCollection, dataCollection2, createVector3, createVector32, number7, text5, text6, text7, number8, number9, number, number2, number3, number4, text, text2, text3, text4, workingValue, workingValue2, workingValue3, number5, workingValue4, number6, dataCollection3, dataCollection4
dataCollection = {}
dataCollection2 = {}
createVector3 = vector3
createVector32 = 127.98108673096
number7 = 290.15972900391
text5 = 110.05869293213
createVector3 = createVector3(createVector32, number7, text5)
createVector32 = 50.0
number7 = 189
text5 = "Usual Suspect Gang"
dataCollection2[1] = createVector3
dataCollection2[2] = createVector32
dataCollection2[3] = number7
dataCollection2[4] = text5
createVector3 = {}
createVector32 = vector3
number7 = -287.86434936523
text5 = -927.96563720703
text6 = 30.989921569824
createVector32 = createVector32(number7, text5, text6)
number7 = 50.0
text5 = 187
text6 = "Marketplace"
text7 = 161
number8 = 141.0
number9 = 112.0
createVector3[1] = createVector32
createVector3[2] = number7
createVector3[3] = text5
createVector3[4] = text6
createVector3[5] = text7
createVector3[6] = number8
createVector3[7] = number9
createVector32 = {}
number7 = vector3
text5 = 2057.8974609375
text6 = 5107.5805664062
text7 = 41.957500457764
number7 = number7(text5, text6, text7)
text5 = 42.0
text6 = 205
text7 = "Lost MC"
number8 = 130
number9 = 140.0
number = 95.0
createVector32[1] = number7
createVector32[2] = text5
createVector32[3] = text6
createVector32[4] = text7
createVector32[5] = number8
createVector32[6] = number9
createVector32[7] = number
number7 = {}
text5 = vector3
text6 = -199.15863037109
text7 = -1305.1937255859
number8 = 30.882265090942
text5 = text5(text6, text7, number8)
text6 = 58.0
text7 = 188
number8 = "Hood Community"
number7[1] = text5
number7[2] = text6
number7[3] = text7
number7[4] = number8
text5 = {}
text6 = vector3
text7 = -49.460006713867
number8 = 346.0344543457
number9 = 114.64958953857
text6 = text6(text7, number8, number9)
text7 = 50.0
number8 = 197
number9 = "Sixth Sense Mob"
number = 155
number2 = 170.0
number3 = 80.0
text5[1] = text6
text5[2] = text7
text5[3] = number8
text5[4] = number9
text5[5] = number
text5[6] = number2
text5[7] = number3
text6 = {}
text7 = vector3
number8 = -1039.9621582031
number9 = -1386.79296875
number = 5.3323001862
text7 = text7(number8, number9, number)
number8 = 86.0
number9 = 181
number = "LCF"
number2 = 167
number3 = 47.26
number4 = 157.07
text6[1] = text7
text6[2] = number8
text6[3] = number9
text6[4] = number
text6[5] = number2
text6[6] = number3
text6[7] = number4
text7 = {}
number8 = vector3
number9 = 2445.666015625
number = 4975.6484375
number2 = 52.111328125
number8 = number8(number9, number, number2)
number9 = 50.0
number = 184
number2 = "Redline"
number3 = 133
number4 = 100.0
text = 100.0
text7[1] = number8
text7[2] = number9
text7[3] = number
text7[4] = number2
text7[5] = number3
text7[6] = number4
text7[7] = text
number8 = {}
number9 = vector3
number = 2402.9499511719
number2 = 3088.978515625
number3 = 48.78178024292
number9 = number9(number, number2, number3)
number = 80.0
number2 = 685
number3 = "Roleplay Zone"
number8[1] = number9
number8[2] = number
number8[3] = number2
number8[4] = number3
number9 = {}
number = vector3
number2 = 3321.3889160156
number3 = 5156.1772460938
number4 = 18.380844116211
number = number(number2, number3, number4)
number2 = 80.0
number3 = 685
number4 = "Roleplay Zone"
number9[1] = number
number9[2] = number2
number9[3] = number3
number9[4] = number4
number = {}
number2 = vector3
number3 = -1086.5549316406
number4 = -827.99389648438
text = 19.511960983276
number2 = number2(number3, number4, text)
number3 = 80.0
number4 = 685
text = "Roleplay Zone"
number[1] = number2
number[2] = number3
number[3] = number4
number[4] = text
number2 = {}
number3 = vector3
number4 = -1661.9858398438
text = -3154.4782714844
text2 = 13.502897262573
number3 = number3(number4, text, text2)
number4 = 80.0
text = 685
text2 = "Roleplay Zone"
number2[1] = number3
number2[2] = number4
number2[3] = text
number2[4] = text2
number3 = {}
number4 = vector3
text = -1686.3610839844
text2 = -293.0182800293
text3 = 51.891357421875
number4 = number4(text, text2, text3)
text = 80.0
text2 = 685
text3 = "Roleplay Zone"
number3[1] = number4
number3[2] = text
number3[3] = text2
number3[4] = text3
number4 = {}
text = vector3
text2 = -457.80532836914
text3 = -1709.3931884766
text4 = 19.815269470215
text = text(text2, text3, text4)
text2 = 80.0
text3 = 685
text4 = "Roleplay Zone"
number4[1] = text
number4[2] = text2
number4[3] = text3
number4[4] = text4
dataCollection[1] = dataCollection2
dataCollection[2] = createVector3
dataCollection[3] = createVector32
dataCollection[4] = number7
dataCollection[5] = text5
dataCollection[6] = text6
dataCollection[7] = text7
dataCollection[8] = number8
dataCollection[9] = number9
dataCollection[10] = number
dataCollection[11] = number2
dataCollection[12] = number3
dataCollection[13] = number4
dataCollection2 = {}
createVector3 = {}
createVector3.name = 934417225
createVector32 = vector3
number7 = -290.36880493164
text5 = -922.52156982422
text6 = 33.551481246948
createVector32 = createVector32(number7, text5, text6)
createVector3.position = createVector32
createVector3.heading = 160.39868164062
createVector3.distance = 400.0
dataCollection2[1] = createVector3
createVector3 = {}
createVector32 = {}
number7 = vector3
text5 = 2069.1391601562
text6 = 5117.2578125
text7 = 50.99206161499
number7 = number7(text5, text6, text7)
createVector32.position = number7
createVector32.radius = 8.8
createVector3[1] = createVector32
createVector32 = false
number7 = {}

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, cmgOperation
  localValue1 = true
  createVector32 = localValue1
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
  function cmgOperation()
    local gameTime, gameTime2, tableHelper
    gameTime = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime = gameTime()
    while true do
      gameTime2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime2 = gameTime2()
      gameTime2 = gameTime2 - gameTime
      tableHelper = 5000
      if not (gameTime2 < tableHelper) then
        break
      end
      gameTime2 = createVector32
      if not gameTime2 then
        break
      end
      gameTime2 = drawNativeText
      tableHelper = "~q~Entered a Notable zone"
      -- Beginner: Draw GTA-style text on screen.
      gameTime2(tableHelper)
      gameTime2 = Citizen
      gameTime2 = gameTime2.Wait
      tableHelper = 0
      gameTime2(tableHelper)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(cmgOperation)
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, cmgOperation
  localValue1 = false
  createVector32 = localValue1
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, cmgOperation
  localValue1 = true
  createVector32 = localValue1
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
  function cmgOperation()
    local gameTime, gameTime2, tableHelper
    gameTime = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime = gameTime()
    while true do
      gameTime2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime2 = gameTime2()
      gameTime2 = gameTime2 - gameTime
      tableHelper = 5000
      if not (gameTime2 < tableHelper) then
        break
      end
      gameTime2 = createVector32
      if not gameTime2 then
        break
      end
      gameTime2 = drawNativeText
      tableHelper = "~q~Entered a Roleplay zone"
      -- Beginner: Draw GTA-style text on screen.
      gameTime2(tableHelper)
      gameTime2 = Citizen
      gameTime2 = gameTime2.Wait
      tableHelper = 0
      gameTime2(tableHelper)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(cmgOperation)
end

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, cmgOperation
  localValue1 = false
  createVector32 = localValue1
end
number9 = pairs
number = dataCollection
number9, number, number2, number3 = number9(number)
for number4, text in number9, number, number2, number3 do
  text2 = 0
  text3 = text[5]
  if text3 then
    text3 = text[6]
    if text3 then
      text3 = text[7]
      if text3 then
        text3 = AddBlipForArea
        text4 = text[1]
        text4 = text4.x
        workingValue = text[1]
        workingValue = workingValue.y
        workingValue2 = text[1]
        workingValue2 = workingValue2.z
        workingValue3 = text[6]
        number5 = text[7]
        text3 = text3(text4, workingValue, workingValue2, workingValue3, number5)
        text2 = text3
        text3 = SetBlipRotation
        text4 = text2
        workingValue = text[5]
        text3(text4, workingValue)
        text3 = SetBlipSprite
        text4 = text2
        workingValue = 608
        text3(text4, workingValue)
    end
  end
  else
    text3 = AddBlipForRadius
    text4 = text[1]
    text4 = text4.x
    workingValue = text[1]
    workingValue = workingValue.y
    workingValue2 = text[1]
    workingValue2 = workingValue2.z
    workingValue3 = text[2]
    -- Beginner: result below is blipHandle.
    text3 = text3(text4, workingValue, workingValue2, workingValue3)
    text2 = text3
  end
  text3 = SetBlipColour
  text4 = text2
  workingValue = 27
  text3(text4, workingValue)
  text3 = SetBlipAlpha
  text4 = text2
  workingValue = 180
  text3(text4, workingValue)
  text3 = text[4]
  if "Roleplay Zone" == text3 then
    text3 = tCMG
    text3 = text3.addBlip
    text4 = text[1]
    text4 = text4.x
    workingValue = text[1]
    workingValue = workingValue.y
    workingValue2 = text[1]
    workingValue2 = workingValue2.z
    workingValue3 = text[3]
    number5 = 1
    workingValue4 = text[4]
    number6 = 1.0
    dataCollection3 = false
    -- Beginner: Create a minimap blip.
    text3(text4, workingValue, workingValue2, workingValue3, number5, workingValue4, number6, dataCollection3)
    text3 = CMG
    text3 = text3.createArea
    text4 = "notable_zone_"
    workingValue = tostring
    workingValue2 = number4
    workingValue = workingValue(workingValue2)
    text4 = text4 .. workingValue
    workingValue = text[1]
    workingValue2 = text[2]
    workingValue3 = 100.0
    number5 = text7
    workingValue4 = number8

    -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
    function number6()
      local localValue1, cmgOperation
    end
    dataCollection3 = {}
    -- Beginner: Create an interaction area around a world position.
    text3(text4, workingValue, workingValue2, workingValue3, number5, workingValue4, number6, dataCollection3)
  else
    text3 = tCMG
    text3 = text3.addBlip
    text4 = text[1]
    text4 = text4.x
    workingValue = text[1]
    workingValue = workingValue.y
    workingValue2 = text[1]
    workingValue2 = workingValue2.z
    workingValue3 = text[3]
    number5 = 0
    workingValue4 = text[4]
    number6 = 1.0
    dataCollection3 = false
    -- Beginner: Create a minimap blip.
    text3(text4, workingValue, workingValue2, workingValue3, number5, workingValue4, number6, dataCollection3)
    text3 = CMG
    text3 = text3.createArea
    text4 = "notable_zone_"
    workingValue = tostring
    workingValue2 = number4
    workingValue = workingValue(workingValue2)
    text4 = text4 .. workingValue
    workingValue = text[1]
    workingValue2 = text[2]
    workingValue3 = 100.0
    number5 = text5
    workingValue4 = text6

    -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
    function number6()
      local localValue1, cmgOperation
    end
    dataCollection3 = {}
    -- Beginner: Create an interaction area around a world position.
    text3(text4, workingValue, workingValue2, workingValue3, number5, workingValue4, number6, dataCollection3)
  end
end

-- === HELPER FUNCTION (decompiler name: number9; parameters: localValue1) ===
function number9(localValue1)
  local cmgOperation, nameValue, position, position2, position3, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.loadModel
  nameValue = localValue1.info
  nameValue = nameValue.name
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgOperation(nameValue)
  cmgOperation = CreateObjectNoOffset
  nameValue = localValue1.info
  nameValue = nameValue.name
  position = localValue1.info
  position = position.position
  position = position.x
  position2 = localValue1.info
  position2 = position2.position
  position2 = position2.y
  position3 = localValue1.info
  position3 = position3.position
  position3 = position3.z
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: result below is objectEntity.
  cmgOperation = cmgOperation(nameValue, position, position2, position3, stateFlag, stateFlag2, stateFlag3)
  nameValue = SetEntityHeading
  position = cmgOperation
  position2 = localValue1.info
  position2 = position2.heading
  -- Beginner: Change the direction an entity is facing.
  nameValue(position, position2)
  nameValue = FreezeEntityPosition
  position = cmgOperation
  position2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  nameValue(position, position2)
  nameValue = SetModelAsNoLongerNeeded
  position = localValue1.info
  position = position.name
  nameValue(position)
  nameValue = SetEntityLodDist
  position = cmgOperation
  position2 = math
  position2 = position2.floor
  position3 = localValue1.info
  position3 = position3.distance
  position2, position3, stateFlag, stateFlag2, stateFlag3 = position2(position3)
  nameValue(position, position2, position3, stateFlag, stateFlag2, stateFlag3)
  position = localValue1.index
  nameValue = number7
  nameValue[position] = cmgOperation
end

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1) ===
function number(localValue1)
  local cmgOperation, nameValue, position
  nameValue = localValue1.index
  cmgOperation = number7
  cmgOperation = cmgOperation[nameValue]
  if cmgOperation then
    nameValue = DeleteEntity
    position = cmgOperation
    -- Beginner: Delete a GTA entity.
    nameValue(position)
    position = localValue1.index
    nameValue = number7
    nameValue[position] = nil
  end
end
number2 = pairs
number3 = dataCollection2
number2, number3, number4, text = number2(number3)
for text2, text3 in number2, number3, number4, text do
  text4 = CMG
  text4 = text4.createArea
  workingValue = "gang_model_"
  workingValue2 = tostring
  workingValue3 = text2
  workingValue2 = workingValue2(workingValue3)
  workingValue = workingValue .. workingValue2
  workingValue2 = text3.position
  workingValue3 = text3.distance
  number5 = text3.distance
  workingValue4 = number9
  number6 = number

  -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
  function dataCollection3()
    local localValue1, cmgOperation
  end
  dataCollection4 = {}
  dataCollection4.index = text2
  dataCollection4.info = text3
  -- Beginner: Create an interaction area around a world position.
  text4(workingValue, workingValue2, workingValue3, number5, workingValue4, number6, dataCollection3, dataCollection4)
end

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, cmgOperation, nameValue, position
  localValue1 = DisableControlAction
  cmgOperation = 0
  nameValue = 22
  position = true
  localValue1(cmgOperation, nameValue, position)
end
number3 = pairs
number4 = createVector3
number3, number4, text, text2 = number3(number4)
for text3, text4 in number3, number4, text, text2 do
  workingValue = CMG
  workingValue = workingValue.createArea
  workingValue2 = "no_climb_"
  workingValue3 = tostring
  number5 = text3
  workingValue3 = workingValue3(number5)
  workingValue2 = workingValue2 .. workingValue3
  workingValue3 = text4.position
  number5 = text4.radius
  workingValue4 = text4.radius

  -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
  function number6()
    local localValue1, cmgOperation
  end

  -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
  function dataCollection3()
    local localValue1, cmgOperation
  end
  dataCollection4 = number2
  -- Beginner: Create an interaction area around a world position.
  workingValue(workingValue2, workingValue3, number5, workingValue4, number6, dataCollection3, dataCollection4)
end
