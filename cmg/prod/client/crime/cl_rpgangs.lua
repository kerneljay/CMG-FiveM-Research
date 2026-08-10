--[[
    Beginner Guide: cl_rpgangs.lua
    ==============================

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
    BEGINNER GUIDE — Rpgangs
    ========================

    File: cmg/prod/client/crime/cl_rpgangs.lua
    Purpose: This file contains crime/gang/heist gameplay.

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

]]
local dataTable, dataTable2, vector3Builder, vector3Builder2, numberValue7, textValue5, textValue6, textValue7, numberValue8, numberValue9, numberValue, numberValue2, numberValue3, numberValue4, textValue, textValue2, textValue3, textValue4, workValue, workValue2, workValue3, numberValue5, workValue4, numberValue6, dataTable3, dataTable4
dataTable = {}
dataTable2 = {}
vector3Builder = vector3
vector3Builder2 = 127.98108673096
numberValue7 = 290.15972900391
textValue5 = 110.05869293213
vector3Builder = vector3Builder(vector3Builder2, numberValue7, textValue5)
vector3Builder2 = 50.0
numberValue7 = 189
textValue5 = "Usual Suspect Gang"
dataTable2[1] = vector3Builder
dataTable2[2] = vector3Builder2
dataTable2[3] = numberValue7
dataTable2[4] = textValue5
vector3Builder = {}
vector3Builder2 = vector3
numberValue7 = -287.86434936523
textValue5 = -927.96563720703
textValue6 = 30.989921569824
vector3Builder2 = vector3Builder2(numberValue7, textValue5, textValue6)
numberValue7 = 50.0
textValue5 = 187
textValue6 = "Marketplace"
textValue7 = 161
numberValue8 = 141.0
numberValue9 = 112.0
vector3Builder[1] = vector3Builder2
vector3Builder[2] = numberValue7
vector3Builder[3] = textValue5
vector3Builder[4] = textValue6
vector3Builder[5] = textValue7
vector3Builder[6] = numberValue8
vector3Builder[7] = numberValue9
vector3Builder2 = {}
numberValue7 = vector3
textValue5 = 2057.8974609375
textValue6 = 5107.5805664062
textValue7 = 41.957500457764
numberValue7 = numberValue7(textValue5, textValue6, textValue7)
textValue5 = 42.0
textValue6 = 205
textValue7 = "Lost MC"
numberValue8 = 130
numberValue9 = 140.0
numberValue = 95.0
vector3Builder2[1] = numberValue7
vector3Builder2[2] = textValue5
vector3Builder2[3] = textValue6
vector3Builder2[4] = textValue7
vector3Builder2[5] = numberValue8
vector3Builder2[6] = numberValue9
vector3Builder2[7] = numberValue
numberValue7 = {}
textValue5 = vector3
textValue6 = -199.15863037109
textValue7 = -1305.1937255859
numberValue8 = 30.882265090942
textValue5 = textValue5(textValue6, textValue7, numberValue8)
textValue6 = 58.0
textValue7 = 188
numberValue8 = "Hood Community"
numberValue7[1] = textValue5
numberValue7[2] = textValue6
numberValue7[3] = textValue7
numberValue7[4] = numberValue8
textValue5 = {}
textValue6 = vector3
textValue7 = -49.460006713867
numberValue8 = 346.0344543457
numberValue9 = 114.64958953857
textValue6 = textValue6(textValue7, numberValue8, numberValue9)
textValue7 = 50.0
numberValue8 = 197
numberValue9 = "Sixth Sense Mob"
numberValue = 155
numberValue2 = 170.0
numberValue3 = 80.0
textValue5[1] = textValue6
textValue5[2] = textValue7
textValue5[3] = numberValue8
textValue5[4] = numberValue9
textValue5[5] = numberValue
textValue5[6] = numberValue2
textValue5[7] = numberValue3
textValue6 = {}
textValue7 = vector3
numberValue8 = -1039.9621582031
numberValue9 = -1386.79296875
numberValue = 5.3323001862
textValue7 = textValue7(numberValue8, numberValue9, numberValue)
numberValue8 = 86.0
numberValue9 = 181
numberValue = "LCF"
numberValue2 = 167
numberValue3 = 47.26
numberValue4 = 157.07
textValue6[1] = textValue7
textValue6[2] = numberValue8
textValue6[3] = numberValue9
textValue6[4] = numberValue
textValue6[5] = numberValue2
textValue6[6] = numberValue3
textValue6[7] = numberValue4
textValue7 = {}
numberValue8 = vector3
numberValue9 = 2445.666015625
numberValue = 4975.6484375
numberValue2 = 52.111328125
numberValue8 = numberValue8(numberValue9, numberValue, numberValue2)
numberValue9 = 50.0
numberValue = 184
numberValue2 = "Redline"
numberValue3 = 133
numberValue4 = 100.0
textValue = 100.0
textValue7[1] = numberValue8
textValue7[2] = numberValue9
textValue7[3] = numberValue
textValue7[4] = numberValue2
textValue7[5] = numberValue3
textValue7[6] = numberValue4
textValue7[7] = textValue
numberValue8 = {}
numberValue9 = vector3
numberValue = 2402.9499511719
numberValue2 = 3088.978515625
numberValue3 = 48.78178024292
numberValue9 = numberValue9(numberValue, numberValue2, numberValue3)
numberValue = 80.0
numberValue2 = 685
numberValue3 = "Roleplay Zone"
numberValue8[1] = numberValue9
numberValue8[2] = numberValue
numberValue8[3] = numberValue2
numberValue8[4] = numberValue3
numberValue9 = {}
numberValue = vector3
numberValue2 = 3321.3889160156
numberValue3 = 5156.1772460938
numberValue4 = 18.380844116211
numberValue = numberValue(numberValue2, numberValue3, numberValue4)
numberValue2 = 80.0
numberValue3 = 685
numberValue4 = "Roleplay Zone"
numberValue9[1] = numberValue
numberValue9[2] = numberValue2
numberValue9[3] = numberValue3
numberValue9[4] = numberValue4
numberValue = {}
numberValue2 = vector3
numberValue3 = -1086.5549316406
numberValue4 = -827.99389648438
textValue = 19.511960983276
numberValue2 = numberValue2(numberValue3, numberValue4, textValue)
numberValue3 = 80.0
numberValue4 = 685
textValue = "Roleplay Zone"
numberValue[1] = numberValue2
numberValue[2] = numberValue3
numberValue[3] = numberValue4
numberValue[4] = textValue
numberValue2 = {}
numberValue3 = vector3
numberValue4 = -1661.9858398438
textValue = -3154.4782714844
textValue2 = 13.502897262573
numberValue3 = numberValue3(numberValue4, textValue, textValue2)
numberValue4 = 80.0
textValue = 685
textValue2 = "Roleplay Zone"
numberValue2[1] = numberValue3
numberValue2[2] = numberValue4
numberValue2[3] = textValue
numberValue2[4] = textValue2
numberValue3 = {}
numberValue4 = vector3
textValue = -1686.3610839844
textValue2 = -293.0182800293
textValue3 = 51.891357421875
numberValue4 = numberValue4(textValue, textValue2, textValue3)
textValue = 80.0
textValue2 = 685
textValue3 = "Roleplay Zone"
numberValue3[1] = numberValue4
numberValue3[2] = textValue
numberValue3[3] = textValue2
numberValue3[4] = textValue3
numberValue4 = {}
textValue = vector3
textValue2 = -457.80532836914
textValue3 = -1709.3931884766
textValue4 = 19.815269470215
textValue = textValue(textValue2, textValue3, textValue4)
textValue2 = 80.0
textValue3 = 685
textValue4 = "Roleplay Zone"
numberValue4[1] = textValue
numberValue4[2] = textValue2
numberValue4[3] = textValue3
numberValue4[4] = textValue4
dataTable[1] = dataTable2
dataTable[2] = vector3Builder
dataTable[3] = vector3Builder2
dataTable[4] = numberValue7
dataTable[5] = textValue5
dataTable[6] = textValue6
dataTable[7] = textValue7
dataTable[8] = numberValue8
dataTable[9] = numberValue9
dataTable[10] = numberValue
dataTable[11] = numberValue2
dataTable[12] = numberValue3
dataTable[13] = numberValue4
dataTable2 = {}
vector3Builder = {}
vector3Builder.name = 934417225
vector3Builder2 = vector3
numberValue7 = -290.36880493164
textValue5 = -922.52156982422
textValue6 = 33.551481246948
vector3Builder2 = vector3Builder2(numberValue7, textValue5, textValue6)
vector3Builder.position = vector3Builder2
vector3Builder.heading = 160.39868164062
vector3Builder.distance = 400.0
dataTable2[1] = vector3Builder
vector3Builder = {}
vector3Builder2 = {}
numberValue7 = vector3
textValue5 = 2069.1391601562
textValue6 = 5117.2578125
textValue7 = 50.99206161499
numberValue7 = numberValue7(textValue5, textValue6, textValue7)
vector3Builder2.position = numberValue7
vector3Builder2.radius = 8.8
vector3Builder[1] = vector3Builder2
vector3Builder2 = false
numberValue7 = {}
function textValue5()
  local arg1, cmgCall
  arg1 = true
  vector3Builder2 = arg1
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function cmgCall()
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
      gameTime2 = vector3Builder2
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
  arg1(cmgCall)
end
function textValue6()
  local arg1, cmgCall
  arg1 = false
  vector3Builder2 = arg1
end
function textValue7()
  local arg1, cmgCall
  arg1 = true
  vector3Builder2 = arg1
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function cmgCall()
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
      gameTime2 = vector3Builder2
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
  arg1(cmgCall)
end
function numberValue8()
  local arg1, cmgCall
  arg1 = false
  vector3Builder2 = arg1
end
numberValue9 = pairs
numberValue = dataTable
numberValue9, numberValue, numberValue2, numberValue3 = numberValue9(numberValue)
for numberValue4, textValue in numberValue9, numberValue, numberValue2, numberValue3 do
  textValue2 = 0
  textValue3 = textValue[5]
  if textValue3 then
    textValue3 = textValue[6]
    if textValue3 then
      textValue3 = textValue[7]
      if textValue3 then
        textValue3 = AddBlipForArea
        textValue4 = textValue[1]
        textValue4 = textValue4.x
        workValue = textValue[1]
        workValue = workValue.y
        workValue2 = textValue[1]
        workValue2 = workValue2.z
        workValue3 = textValue[6]
        numberValue5 = textValue[7]
        textValue3 = textValue3(textValue4, workValue, workValue2, workValue3, numberValue5)
        textValue2 = textValue3
        textValue3 = SetBlipRotation
        textValue4 = textValue2
        workValue = textValue[5]
        textValue3(textValue4, workValue)
        textValue3 = SetBlipSprite
        textValue4 = textValue2
        workValue = 608
        textValue3(textValue4, workValue)
    end
  end
  else
    textValue3 = AddBlipForRadius
    textValue4 = textValue[1]
    textValue4 = textValue4.x
    workValue = textValue[1]
    workValue = workValue.y
    workValue2 = textValue[1]
    workValue2 = workValue2.z
    workValue3 = textValue[2]
    -- Beginner: result below is blipHandle.
    textValue3 = textValue3(textValue4, workValue, workValue2, workValue3)
    textValue2 = textValue3
  end
  textValue3 = SetBlipColour
  textValue4 = textValue2
  workValue = 27
  textValue3(textValue4, workValue)
  textValue3 = SetBlipAlpha
  textValue4 = textValue2
  workValue = 180
  textValue3(textValue4, workValue)
  textValue3 = textValue[4]
  if "Roleplay Zone" == textValue3 then
    textValue3 = tCMG
    textValue3 = textValue3.addBlip
    textValue4 = textValue[1]
    textValue4 = textValue4.x
    workValue = textValue[1]
    workValue = workValue.y
    workValue2 = textValue[1]
    workValue2 = workValue2.z
    workValue3 = textValue[3]
    numberValue5 = 1
    workValue4 = textValue[4]
    numberValue6 = 1.0
    dataTable3 = false
    -- Beginner: Create a minimap blip.
    textValue3(textValue4, workValue, workValue2, workValue3, numberValue5, workValue4, numberValue6, dataTable3)
    textValue3 = CMG
    textValue3 = textValue3.createArea
    textValue4 = "notable_zone_"
    workValue = tostring
    workValue2 = numberValue4
    workValue = workValue(workValue2)
    textValue4 = textValue4 .. workValue
    workValue = textValue[1]
    workValue2 = textValue[2]
    workValue3 = 100.0
    numberValue5 = textValue7
    workValue4 = numberValue8
    function numberValue6()
      local arg1, cmgCall
    end
    dataTable3 = {}
    -- Beginner: Create an interaction area around a world position.
    textValue3(textValue4, workValue, workValue2, workValue3, numberValue5, workValue4, numberValue6, dataTable3)
  else
    textValue3 = tCMG
    textValue3 = textValue3.addBlip
    textValue4 = textValue[1]
    textValue4 = textValue4.x
    workValue = textValue[1]
    workValue = workValue.y
    workValue2 = textValue[1]
    workValue2 = workValue2.z
    workValue3 = textValue[3]
    numberValue5 = 0
    workValue4 = textValue[4]
    numberValue6 = 1.0
    dataTable3 = false
    -- Beginner: Create a minimap blip.
    textValue3(textValue4, workValue, workValue2, workValue3, numberValue5, workValue4, numberValue6, dataTable3)
    textValue3 = CMG
    textValue3 = textValue3.createArea
    textValue4 = "notable_zone_"
    workValue = tostring
    workValue2 = numberValue4
    workValue = workValue(workValue2)
    textValue4 = textValue4 .. workValue
    workValue = textValue[1]
    workValue2 = textValue[2]
    workValue3 = 100.0
    numberValue5 = textValue5
    workValue4 = textValue6
    function numberValue6()
      local arg1, cmgCall
    end
    dataTable3 = {}
    -- Beginner: Create an interaction area around a world position.
    textValue3(textValue4, workValue, workValue2, workValue3, numberValue5, workValue4, numberValue6, dataTable3)
  end
end
function numberValue9(arg1)
  local cmgCall, nameValue, position, position2, position3, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.loadModel
  nameValue = arg1.info
  nameValue = nameValue.name
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgCall(nameValue)
  cmgCall = CreateObjectNoOffset
  nameValue = arg1.info
  nameValue = nameValue.name
  position = arg1.info
  position = position.position
  position = position.x
  position2 = arg1.info
  position2 = position2.position
  position2 = position2.y
  position3 = arg1.info
  position3 = position3.position
  position3 = position3.z
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: result below is objectEntity.
  cmgCall = cmgCall(nameValue, position, position2, position3, flag, flag2, flag3)
  nameValue = SetEntityHeading
  position = cmgCall
  position2 = arg1.info
  position2 = position2.heading
  -- Beginner: Change the direction an entity is facing.
  nameValue(position, position2)
  nameValue = FreezeEntityPosition
  position = cmgCall
  position2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  nameValue(position, position2)
  nameValue = SetModelAsNoLongerNeeded
  position = arg1.info
  position = position.name
  nameValue(position)
  nameValue = SetEntityLodDist
  position = cmgCall
  position2 = math
  position2 = position2.floor
  position3 = arg1.info
  position3 = position3.distance
  position2, position3, flag, flag2, flag3 = position2(position3)
  nameValue(position, position2, position3, flag, flag2, flag3)
  position = arg1.index
  nameValue = numberValue7
  nameValue[position] = cmgCall
end
function numberValue(arg1)
  local cmgCall, nameValue, position
  nameValue = arg1.index
  cmgCall = numberValue7
  cmgCall = cmgCall[nameValue]
  if cmgCall then
    nameValue = DeleteEntity
    position = cmgCall
    -- Beginner: Delete a GTA entity.
    nameValue(position)
    position = arg1.index
    nameValue = numberValue7
    nameValue[position] = nil
  end
end
numberValue2 = pairs
numberValue3 = dataTable2
numberValue2, numberValue3, numberValue4, textValue = numberValue2(numberValue3)
for textValue2, textValue3 in numberValue2, numberValue3, numberValue4, textValue do
  textValue4 = CMG
  textValue4 = textValue4.createArea
  workValue = "gang_model_"
  workValue2 = tostring
  workValue3 = textValue2
  workValue2 = workValue2(workValue3)
  workValue = workValue .. workValue2
  workValue2 = textValue3.position
  workValue3 = textValue3.distance
  numberValue5 = textValue3.distance
  workValue4 = numberValue9
  numberValue6 = numberValue
  function dataTable3()
    local arg1, cmgCall
  end
  dataTable4 = {}
  dataTable4.index = textValue2
  dataTable4.info = textValue3
  -- Beginner: Create an interaction area around a world position.
  textValue4(workValue, workValue2, workValue3, numberValue5, workValue4, numberValue6, dataTable3, dataTable4)
end
function numberValue2()
  local arg1, cmgCall, nameValue, position
  arg1 = DisableControlAction
  cmgCall = 0
  nameValue = 22
  position = true
  arg1(cmgCall, nameValue, position)
end
numberValue3 = pairs
numberValue4 = vector3Builder
numberValue3, numberValue4, textValue, textValue2 = numberValue3(numberValue4)
for textValue3, textValue4 in numberValue3, numberValue4, textValue, textValue2 do
  workValue = CMG
  workValue = workValue.createArea
  workValue2 = "no_climb_"
  workValue3 = tostring
  numberValue5 = textValue3
  workValue3 = workValue3(numberValue5)
  workValue2 = workValue2 .. workValue3
  workValue3 = textValue4.position
  numberValue5 = textValue4.radius
  workValue4 = textValue4.radius
  function numberValue6()
    local arg1, cmgCall
  end
  function dataTable3()
    local arg1, cmgCall
  end
  dataTable4 = numberValue2
  -- Beginner: Create an interaction area around a world position.
  workValue(workValue2, workValue3, numberValue5, workValue4, numberValue6, dataTable3, dataTable4)
end