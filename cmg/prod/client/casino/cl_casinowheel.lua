--[[
    LEVEL 1 BEGINNER GUIDE — Casinowheel
    =========================================

    File: cmg/prod/client/casino/cl_casinowheel.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinowheel feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 28
      * Background threads: 0
      * Always-running loops: 5
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
local dataCollection, dataCollection2, createVector3, createVector32, number7, number8, cmgOperation, text11, text12, rageUiOperation4, text, text2, rageUiOperation, rageUiOperation2, text5, text6
dataCollection = {}
dataCollection2 = {}
createVector3 = vector3
createVector32 = 965.15264892578
number7 = 47.068027496338
number8 = 81.623069763184
createVector3 = createVector3(createVector32, number7, number8)
dataCollection2.entryPosition = createVector3
createVector3 = vector3
createVector32 = 964.71350097656
number7 = 47.952812194824
number8 = 81.623191833496
createVector3 = createVector3(createVector32, number7, number8)
dataCollection2.moveToPosition = createVector3
createVector3 = vector3
createVector32 = 964.71108398438
number7 = 49.261958312988
number8 = 80.823184204102
createVector3 = createVector3(createVector32, number7, number8)
dataCollection2.objectPosition = createVector3
dataCollection2.objectHeading = 57.5
createVector3 = {}
createVector32 = vector3
number7 = -249.98811340332
number8 = -907.77935791016
cmgOperation = 32.314388275146
createVector32 = createVector32(number7, number8, cmgOperation)
createVector3.entryPosition = createVector32
createVector32 = vector3
number7 = -249.56430053711
number8 = -907.09625244141
cmgOperation = 32.425846099854
createVector32 = createVector32(number7, number8, cmgOperation)
createVector3.moveToPosition = createVector32
createVector32 = vector3
number7 = -247.9839
number8 = -906.7876
cmgOperation = 31.60079
createVector32 = createVector32(number7, number8, cmgOperation)
createVector3.objectPosition = createVector32
createVector3.objectHeading = -20.0
createVector3.hideObjectModel = 3400507376
dataCollection[1] = dataCollection2
dataCollection[2] = createVector3
dataCollection2 = {}
createVector3 = nil
createVector32 = ""
number7 = false
number8 = nil
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2
  localValue1 = createVector32
  return localValue1
end
cmgOperation.getPodiumVehicle = text11
cmgOperation = RMenu
cmgOperation = cmgOperation.Add
text11 = "luckywheel"
text12 = "casino"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateMenu
text = ""
text2 = ""
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2 = rageUiOperation2()
text5 = "cmg_luckywheel"
text6 = "cmg_luckywheel"
rageUiOperation4, text, text2, rageUiOperation, rageUiOperation2, text5, text6 = rageUiOperation4(text, text2, rageUiOperation, rageUiOperation2, text5, text6)
cmgOperation(text11, text12, rageUiOperation4, text, text2, rageUiOperation, rageUiOperation2, text5, text6)
cmgOperation = RMenu
text11 = cmgOperation
cmgOperation = cmgOperation.Get
text12 = "luckywheel"
rageUiOperation4 = "casino"
-- Beginner: result below is menu.
cmgOperation = cmgOperation(text11, text12, rageUiOperation4)
text11 = cmgOperation
cmgOperation = cmgOperation.SetSubtitle
text12 = "~b~You may only spin the wheel once per restart."
cmgOperation(text11, text12)
cmgOperation = RageUI
cmgOperation = cmgOperation.CreateWhile
text11 = 1.0
text12 = RMenu
rageUiOperation4 = text12
text12 = text12.Get
text = "luckywheel"
text2 = "casino"
-- Beginner: result below is menu.
text12 = text12(rageUiOperation4, text, text2)
rageUiOperation4 = nil

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, rageUiOperation3, stateFlag11, stateFlag12, text9, text10
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  rageUiOperation3 = localValue2
  localValue2 = localValue2.Get
  stateFlag11 = "luckywheel"
  stateFlag12 = "casino"
  -- Beginner: result below is menu.
  localValue2 = localValue2(rageUiOperation3, stateFlag11, stateFlag12)
  rageUiOperation3 = true
  stateFlag11 = true
  stateFlag12 = true

  -- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
  function text9()
    local localValue12, localValue22, localValue3, dataCollection3, stateFlag13, localEventCall
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Spin the wheel of CMG (100,000 Chips)"
    localValue3 = ""
    dataCollection3 = {}
    dataCollection3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag13 = true

    -- === HELPER FUNCTION: localEventCall(localValue13, localValue23, localValue32) ===
    function localEventCall(localValue13, localValue23, localValue32)
      local serverEventCall, text8, workingValue2
      if localValue32 then
        serverEventCall = TriggerServerEvent
        text8 = "1873c5b3d7"
        workingValue2 = number8
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1873c5b3d7".
        serverEventCall(text8, workingValue2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, localValue3, dataCollection3, stateFlag13, localEventCall)
  end

  -- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
  function text10()
    local localValue12, localValue22
  end
  localValue1(localValue2, rageUiOperation3, stateFlag11, stateFlag12, text9, text10)
end
cmgOperation(text11, text12, rageUiOperation4, text)

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: localValue1, localValue2) ===
function cmgOperation(localValue1, localValue2)
  local rageUiOperation3, stateFlag11, stateFlag12, text9, text10
  rageUiOperation3 = RageUI
  rageUiOperation3 = rageUiOperation3.CloseAll
  rageUiOperation3()
  rageUiOperation3 = RageUI
  rageUiOperation3 = rageUiOperation3.Visible
  stateFlag11 = RMenu
  stateFlag12 = stateFlag11
  stateFlag11 = stateFlag11.Get
  text9 = "luckywheel"
  text10 = "casino"
  -- Beginner: result below is menu.
  stateFlag11 = stateFlag11(stateFlag12, text9, text10)
  stateFlag12 = localValue1
  rageUiOperation3(stateFlag11, stateFlag12)
  if localValue1 then
    number8 = localValue2
  else
    rageUiOperation3 = nil
    number8 = rageUiOperation3
  end
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, rageUiOperation3, stateFlag11, stateFlag12, text9, text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = createVector32
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue2 = CreateVehicle
  rageUiOperation3 = localValue1
  stateFlag11 = 970.05017089844
  stateFlag12 = 45.933525085449
  text9 = 81.578002929688
  text10 = 0.0
  stateFlag14 = false
  cmgOperation2 = false
  -- Beginner: result below is vehicleEntity.
  localValue2 = localValue2(rageUiOperation3, stateFlag11, stateFlag12, text9, text10, stateFlag14, cmgOperation2)
  rageUiOperation3 = CMG
  rageUiOperation3 = rageUiOperation3.initLocalVehicle
  stateFlag11 = localValue2
  rageUiOperation3(stateFlag11)
  rageUiOperation3 = SetModelAsNoLongerNeeded
  stateFlag11 = localValue1
  rageUiOperation3(stateFlag11)
  rageUiOperation3 = FreezeEntityPosition
  stateFlag11 = localValue2
  stateFlag12 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  rageUiOperation3(stateFlag11, stateFlag12)
  rageUiOperation3 = GetEntityCoords
  stateFlag11 = localValue2
  -- Beginner: result below is entityCoords.
  rageUiOperation3 = rageUiOperation3(stateFlag11)
  stateFlag11 = SetEntityCoords
  stateFlag12 = localValue2
  text9 = rageUiOperation3.x
  text10 = rageUiOperation3.y
  stateFlag14 = rageUiOperation3.z
  stateFlag14 = stateFlag14 + 1
  cmgOperation2 = false
  stateFlag15 = false
  stateFlag = true
  stateFlag2 = true
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag11(stateFlag12, text9, text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2)
  stateFlag11 = SetVehicleOnGroundProperly
  stateFlag12 = localValue2
  stateFlag11(stateFlag12)
  createVector3 = localValue2
end
text12 = RegisterNetEvent
rageUiOperation4 = "63ed7e8295"
-- Beginner: this function handles network event "63ed7e8295".

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local rageUiOperation3, stateFlag11
  createVector32 = localValue1
  if localValue2 then
    rageUiOperation3 = DeleteEntity
    stateFlag11 = createVector3
    -- Beginner: Delete a GTA entity.
    rageUiOperation3(stateFlag11)
    rageUiOperation3 = text11
    rageUiOperation3()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "63ed7e8295".
text12(rageUiOperation4, text)
text12 = Citizen
text12 = text12.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isInsideDiamondCasino
    localValue1 = localValue1()
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
  localValue1 = text11
  localValue1()
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text12(rageUiOperation4)
text12 = Citizen
text12 = text12.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, rageUiOperation3, stateFlag11, stateFlag12
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isInsideDiamondCasino
    localValue1 = localValue1()
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isInsideDiamondCasino
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = createVector3
      if nil ~= localValue1 then
        localValue1 = GetEntityHeading
        localValue2 = createVector3
        -- Beginner: result below is heading.
        localValue1 = localValue1(localValue2)
        localValue2 = localValue1 - 0.1
        rageUiOperation3 = SetEntityHeading
        stateFlag11 = createVector3
        stateFlag12 = localValue2
        -- Beginner: Change the direction an entity is facing.
        rageUiOperation3(stateFlag11, stateFlag12)
      end
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 5
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text12(rageUiOperation4)

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1, localValue2) ===
function text12(localValue1, localValue2)
  local rageUiOperation3, stateFlag11, stateFlag12, text9, text10, stateFlag14
  rageUiOperation3 = dataCollection2
  rageUiOperation3 = rageUiOperation3[localValue2]
  if not rageUiOperation3 then
    return
  end
  stateFlag11 = dataCollection
  stateFlag11 = stateFlag11[localValue2]
  stateFlag11 = stateFlag11.entryPosition
  stateFlag12 = dataCollection
  stateFlag12 = stateFlag12[localValue2]
  stateFlag12 = stateFlag12.objectHeading
  text9 = SetEntityHeading
  text10 = rageUiOperation3
  stateFlag14 = -30.9754
  -- Beginner: Change the direction an entity is facing.
  text9(text10, stateFlag14)
  text9 = Citizen
  text9 = text9.CreateThread

  -- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
  function text10()
    local localValue12, localValue22, localValue3, dataCollection3, stateFlag13, localEventCall, number9, workingValue3, workingValue4, number10, workingValue, number, text3, text4, number5, stateFlag3, text7, stateFlag6, stateFlag8, stateFlag9, stateFlag10
    localValue12 = 1
    localValue22 = nil
    localValue3 = localValue1
    localValue3 = localValue3 - 1
    localValue3 = localValue3 * 18
    dataCollection3 = localValue3 + 2880
    stateFlag13 = dataCollection3 / 2
    localEventCall = 0
    number9 = -20
    while localValue12 > 0 do
      workingValue3 = GetEntityRotation
      workingValue4 = rageUiOperation3
      number10 = 2
      workingValue3 = workingValue3(workingValue4, number10)
      if dataCollection3 > stateFlag13 then
        localValue12 = localValue12 + 1
      else
        localValue12 = localValue12 - 1
        if localValue12 < 0 then
          localValue12 = 0
        end
      end
      localEventCall = localEventCall + 1
      localValue22 = localValue12 / 200
      workingValue4 = workingValue3.y
      workingValue4 = workingValue4 - localValue22
      number10 = workingValue4 - number9
      if number10 < 5 then
        number10 = workingValue4 - number9
        if number10 > -5 then
          number10 = GetSoundId
          -- Beginner: result below is soundHandle.
          number10 = number10()
          workingValue = PlaySoundFromCoord
          number = number10
          text3 = "Spin_Single_Ticks"
          text4 = stateFlag11.x
          number5 = stateFlag11.y
          stateFlag3 = stateFlag11.z
          text7 = "dlc_vw_casino_lucky_wheel_sounds"
          stateFlag6 = false
          stateFlag8 = 0
          stateFlag9 = false
          workingValue(number, text3, text4, number5, stateFlag3, text7, stateFlag6, stateFlag8, stateFlag9)
          workingValue = SetTimeout
          number = 100

          -- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
          function text3()
            local localValue13, localValue23
            localValue13 = ReleaseSoundId
            localValue23 = number10
            localValue13(localValue23)
          end
          workingValue(number, text3)
          number9 = number9 - 20
          if -180 == number9 then
            number9 = 180
          end
      end
      elseif 180 == number9 then
        number10 = -180
        workingValue = workingValue4 - number10
        if workingValue < 5 then
          workingValue = workingValue4 - number10
          if workingValue > -5 then
            workingValue = GetSoundId
            -- Beginner: result below is soundHandle.
            workingValue = workingValue()
            number = PlaySoundFromCoord
            text3 = workingValue
            text4 = "Spin_Single_Ticks"
            number5 = stateFlag11.x
            stateFlag3 = stateFlag11.y
            text7 = stateFlag11.z
            stateFlag6 = "dlc_vw_casino_lucky_wheel_sounds"
            stateFlag8 = false
            stateFlag9 = 0
            stateFlag10 = false
            number(text3, text4, number5, stateFlag3, text7, stateFlag6, stateFlag8, stateFlag9, stateFlag10)
            number = SetTimeout
            text3 = 100

            -- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
            function text4()
              local localValue13, localValue23
              localValue13 = ReleaseSoundId
              localValue23 = workingValue
              localValue13(localValue23)
            end
            number(text3, text4)
          end
        end
        number9 = number9 - 20
      end
      dataCollection3 = dataCollection3 - localValue22
      number10 = SetEntityRotation
      workingValue = rageUiOperation3
      number = 0.0
      text3 = workingValue4
      text4 = stateFlag12
      number5 = 2
      stateFlag3 = true
      number10(workingValue, number, text3, text4, number5, stateFlag3)
      number10 = Citizen
      number10 = number10.Wait
      workingValue = 5
      number10(workingValue)
    end
    workingValue3 = GetSoundId
    -- Beginner: result below is soundHandle.
    workingValue3 = workingValue3()
    workingValue4 = PlaySoundFromCoord
    number10 = workingValue3
    workingValue = "Win"
    number = stateFlag11.x
    text3 = stateFlag11.y
    text4 = stateFlag11.z
    number5 = "dlc_vw_casino_lucky_wheel_sounds"
    stateFlag3 = false
    text7 = 0
    stateFlag6 = false
    workingValue4(number10, workingValue, number, text3, text4, number5, stateFlag3, text7, stateFlag6)
    workingValue4 = SetTimeout
    number10 = 1000

    -- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
    function workingValue()
      local localValue13, localValue23
      localValue13 = ReleaseSoundId
      localValue23 = workingValue3
      localValue13(localValue23)
    end
    workingValue4(number10, workingValue)
    workingValue4 = false
    number7 = workingValue4
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  text9(text10)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, rageUiOperation3, stateFlag11, stateFlag12, text9, text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7
  localValue2 = number7
  if not localValue2 then
    localValue2 = true
    number7 = localValue2
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    rageUiOperation3 = "anim_casino_a@amb@casino@games@lucky7wheel@female"
    stateFlag11 = IsPedMale
    stateFlag12 = localValue2
    stateFlag11 = stateFlag11(stateFlag12)
    if stateFlag11 then
      rageUiOperation3 = "anim_casino_a@amb@casino@games@lucky7wheel@male"
    end
    stateFlag11 = rageUiOperation3
    stateFlag12 = "enter_right_to_baseidle"
    text9 = RequestAnimDict
    text10 = stateFlag11
    text9(text10)
    text9 = Wait
    text10 = 50
    text9(text10)
    text9 = dataCollection
    text9 = text9[localValue1]
    text9 = text9.moveToPosition
    text10 = TaskGoStraightToCoord
    stateFlag14 = localValue2
    cmgOperation2 = text9.x
    stateFlag15 = text9.y
    stateFlag = text9.z
    stateFlag2 = 1.0
    number2 = -1
    number3 = 312.2
    number4 = 0.0
    text10(stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4)
    text10 = false
    while not text10 do
      stateFlag14 = GetEntityCoords
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getPlayerPed
      cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7 = cmgOperation2()
      -- Beginner: result below is entityCoords.
      stateFlag14 = stateFlag14(cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7)
      cmgOperation2 = stateFlag14.x
      stateFlag15 = text9.x
      stateFlag15 = stateFlag15 - 0.01
      if cmgOperation2 >= stateFlag15 then
        cmgOperation2 = stateFlag14.x
        stateFlag15 = text9.x
        stateFlag15 = stateFlag15 + 0.01
        if cmgOperation2 <= stateFlag15 then
          cmgOperation2 = stateFlag14.y
          stateFlag15 = text9.y
          stateFlag15 = stateFlag15 - 0.01
          if cmgOperation2 >= stateFlag15 then
            cmgOperation2 = stateFlag14.y
            stateFlag15 = text9.y
            stateFlag15 = stateFlag15 + 0.01
            if cmgOperation2 <= stateFlag15 then
              text10 = true
            end
          end
        end
      end
      cmgOperation2 = Citizen
      cmgOperation2 = cmgOperation2.Wait
      stateFlag15 = 0
      cmgOperation2(stateFlag15)
    end
    stateFlag14 = TaskPlayAnim
    cmgOperation2 = localValue2
    stateFlag15 = stateFlag11
    stateFlag = stateFlag12
    stateFlag2 = 8.0
    number2 = -8.0
    number3 = -1
    number4 = 0
    number6 = 0
    stateFlag4 = false
    stateFlag5 = false
    stateFlag7 = false
    -- Beginner: Play an animation on a ped.
    stateFlag14(cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7)
    while true do
      stateFlag14 = IsEntityPlayingAnim
      cmgOperation2 = localValue2
      stateFlag15 = stateFlag11
      stateFlag = stateFlag12
      stateFlag2 = 3
      stateFlag14 = stateFlag14(cmgOperation2, stateFlag15, stateFlag, stateFlag2)
      if not stateFlag14 then
        break
      end
      stateFlag14 = Citizen
      stateFlag14 = stateFlag14.Wait
      cmgOperation2 = 0
      stateFlag14(cmgOperation2)
      stateFlag14 = DisableAllControlActions
      cmgOperation2 = 0
      stateFlag14(cmgOperation2)
    end
    stateFlag14 = TaskPlayAnim
    cmgOperation2 = localValue2
    stateFlag15 = stateFlag11
    stateFlag = "enter_to_armraisedidle"
    stateFlag2 = 8.0
    number2 = -8.0
    number3 = -1
    number4 = 0
    number6 = 0
    stateFlag4 = false
    stateFlag5 = false
    stateFlag7 = false
    -- Beginner: Play an animation on a ped.
    stateFlag14(cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7)
    while true do
      stateFlag14 = IsEntityPlayingAnim
      cmgOperation2 = localValue2
      stateFlag15 = stateFlag11
      stateFlag = "enter_to_armraisedidle"
      stateFlag2 = 3
      stateFlag14 = stateFlag14(cmgOperation2, stateFlag15, stateFlag, stateFlag2)
      if not stateFlag14 then
        break
      end
      stateFlag14 = Citizen
      stateFlag14 = stateFlag14.Wait
      cmgOperation2 = 0
      stateFlag14(cmgOperation2)
      stateFlag14 = DisableAllControlActions
      cmgOperation2 = 0
      stateFlag14(cmgOperation2)
    end
    stateFlag14 = TaskPlayAnim
    cmgOperation2 = localValue2
    stateFlag15 = stateFlag11
    stateFlag = "armraisedidle_to_spinningidle_high"
    stateFlag2 = 8.0
    number2 = -8.0
    number3 = -1
    number4 = 0
    number6 = 0
    stateFlag4 = false
    stateFlag5 = false
    stateFlag7 = false
    -- Beginner: Play an animation on a ped.
    stateFlag14(cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7)
    stateFlag14 = SetEntityHeading
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    cmgOperation2 = cmgOperation2()
    stateFlag15 = 10.9754
    -- Beginner: Change the direction an entity is facing.
    stateFlag14(cmgOperation2, stateFlag15)
    stateFlag14 = Wait
    cmgOperation2 = 2000
    stateFlag14(cmgOperation2)
    stateFlag14 = TaskPlayAnim
    cmgOperation2 = localValue2
    stateFlag15 = stateFlag11
    stateFlag = "baseidle_variation_02"
    stateFlag2 = 8.0
    number2 = -8.0
    number3 = -1
    number4 = 1
    number6 = 0
    stateFlag4 = false
    stateFlag5 = false
    stateFlag7 = false
    -- Beginner: Play an animation on a ped.
    stateFlag14(cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7)
    stateFlag14 = RemoveAnimDict
    cmgOperation2 = stateFlag11
    stateFlag14(cmgOperation2)
  end
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, rageUiOperation3, stateFlag11, stateFlag12, text9, text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  rageUiOperation3 = -945995088
  localValue2 = localValue2(rageUiOperation3)
  if not localValue2 then
    return
  end
  stateFlag11 = localValue1.wheelId
  rageUiOperation3 = dataCollection
  rageUiOperation3 = rageUiOperation3[stateFlag11]
  stateFlag11 = rageUiOperation3.objectPosition
  stateFlag12 = GetClosestObjectOfType
  text9 = stateFlag11.x
  text10 = stateFlag11.y
  stateFlag14 = stateFlag11.z
  cmgOperation2 = 5.0
  stateFlag15 = rageUiOperation3.hideObjectModel
  stateFlag = false
  stateFlag2 = false
  number2 = false
  -- Beginner: result below is objectEntity.
  stateFlag12 = stateFlag12(text9, text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2)
  if 0 ~= stateFlag12 then
    text9 = FreezeEntityPosition
    text10 = stateFlag12
    stateFlag14 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    text9(text10, stateFlag14)
    text9 = SetEntityCanBeDamaged
    text10 = stateFlag12
    stateFlag14 = false
    text9(text10, stateFlag14)
    text9 = SetEntityProofs
    text10 = stateFlag12
    stateFlag14 = true
    cmgOperation2 = true
    stateFlag15 = true
    stateFlag = true
    stateFlag2 = true
    number2 = true
    number3 = true
    number4 = true
    text9(text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4)
  end
  text9 = CreateObject
  text10 = localValue2
  stateFlag14 = stateFlag11.x
  cmgOperation2 = stateFlag11.y
  stateFlag15 = stateFlag11.z
  stateFlag = false
  stateFlag2 = false
  number2 = true
  -- Beginner: result below is objectEntity.
  text9 = text9(text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2)
  text10 = SetEntityHeading
  stateFlag14 = text9
  cmgOperation2 = rageUiOperation3.objectHeading
  -- Beginner: Change the direction an entity is facing.
  text10(stateFlag14, cmgOperation2)
  text10 = SetModelAsNoLongerNeeded
  stateFlag14 = localValue2
  text10(stateFlag14)
  stateFlag14 = localValue1.wheelId
  text10 = dataCollection2
  text10[stateFlag14] = text9
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, rageUiOperation3, stateFlag11
  rageUiOperation3 = localValue1.wheelId
  localValue2 = dataCollection2
  localValue2 = localValue2[rageUiOperation3]
  if localValue2 then
    rageUiOperation3 = DeleteEntity
    stateFlag11 = localValue2
    -- Beginner: Delete a GTA entity.
    rageUiOperation3(stateFlag11)
    stateFlag11 = localValue1.wheelId
    rageUiOperation3 = dataCollection2
    rageUiOperation3[stateFlag11] = nil
  end
end
rageUiOperation = AddEventHandler
rageUiOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local rageUiOperation3, stateFlag11, stateFlag12, text9, text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue12) ===
    function rageUiOperation3(localValue12)
      local localValue22, localValue3, dataCollection3
      localValue22 = cmgOperation
      localValue3 = true
      dataCollection3 = localValue12.wheelId
      localValue22(localValue3, dataCollection3)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue12) ===
    function stateFlag11(localValue12)
      local localValue22, localValue3, dataCollection3
      localValue22 = cmgOperation
      localValue3 = false
      dataCollection3 = localValue12.wheelId
      localValue22(localValue3, dataCollection3)
    end
    stateFlag12 = pairs
    text9 = dataCollection
    stateFlag12, text9, text10, stateFlag14 = stateFlag12(text9)
    for cmgOperation2, stateFlag15 in stateFlag12, text9, text10, stateFlag14 do
      stateFlag = tCMG
      stateFlag = stateFlag.addBlip
      stateFlag2 = stateFlag15.entryPosition
      stateFlag2 = stateFlag2.x
      number2 = stateFlag15.entryPosition
      number2 = number2.y
      number3 = stateFlag15.entryPosition
      number3 = number3.z
      number4 = 681
      number6 = 0
      stateFlag4 = "CMG Wheel"
      stateFlag5 = 0.7
      stateFlag7 = true
      -- Beginner: Create a minimap blip.
      stateFlag(stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7)
      stateFlag = CMG
      stateFlag = stateFlag.createArea
      stateFlag2 = string
      stateFlag2 = stateFlag2.format
      number2 = "cmgwheel_%s"
      number3 = cmgOperation2
      stateFlag2 = stateFlag2(number2, number3)
      number2 = stateFlag15.entryPosition
      number3 = 1.5
      number4 = 6
      number6 = rageUiOperation3
      stateFlag4 = stateFlag11

      -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
      function stateFlag5()
        local localValue12, localValue22
      end
      stateFlag7 = {}
      stateFlag7.wheelId = cmgOperation2
      -- Beginner: Create an interaction area around a world position.
      stateFlag(stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7)
      stateFlag = CMG
      stateFlag = stateFlag.createArea
      stateFlag2 = string
      stateFlag2 = stateFlag2.format
      number2 = "cmgwheel_object_%s"
      number3 = cmgOperation2
      stateFlag2 = stateFlag2(number2, number3)
      number2 = stateFlag15.entryPosition
      number3 = 100.0
      number4 = 100.0
      number6 = text
      stateFlag4 = text2

      -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
      function stateFlag5()
        local localValue12, localValue22
      end
      stateFlag7 = {}
      stateFlag7.wheelId = cmgOperation2
      stateFlag(stateFlag2, number2, number3, number4, number6, stateFlag4, stateFlag5, stateFlag7)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
rageUiOperation(rageUiOperation2, text5)
rageUiOperation = RegisterNetEvent
rageUiOperation2 = "fba1ad1368"
-- Beginner: this function handles network event "fba1ad1368".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local rageUiOperation3, stateFlag11, stateFlag12
  rageUiOperation3 = Wait
  stateFlag11 = 1000
  rageUiOperation3(stateFlag11)
  rageUiOperation3 = text12
  stateFlag11 = localValue1
  stateFlag12 = localValue2
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  rageUiOperation3(stateFlag11, stateFlag12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fba1ad1368".
rageUiOperation(rageUiOperation2, text5)
rageUiOperation = RegisterNetEvent
rageUiOperation2 = "aaa9100058"
-- Beginner: this function handles network event "aaa9100058".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, rageUiOperation3
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  rageUiOperation3 = false
  localValue2(rageUiOperation3)
  localValue2 = rageUiOperation4
  rageUiOperation3 = localValue1
  localValue2(rageUiOperation3)
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  rageUiOperation3 = true
  localValue2(rageUiOperation3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aaa9100058".
rageUiOperation(rageUiOperation2, text5)
rageUiOperation = RegisterNetEvent
rageUiOperation2 = "5cd959a1e1"
-- Beginner: this function handles network event "5cd959a1e1".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, rageUiOperation3, stateFlag11, stateFlag12, text9, text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  rageUiOperation3 = "anim_casino_a@amb@casino@games@lucky7wheel@female"
  stateFlag11 = IsPedMale
  stateFlag12 = localValue2
  stateFlag11 = stateFlag11(stateFlag12)
  if stateFlag11 then
    rageUiOperation3 = "anim_casino_a@amb@casino@games@lucky7wheel@male"
  end
  stateFlag11 = TaskPlayAnim
  stateFlag12 = localValue2
  text9 = rageUiOperation3
  text10 = "win"
  stateFlag14 = localValue1
  text10 = text10 .. stateFlag14
  stateFlag14 = 8.0
  cmgOperation2 = -8.0
  stateFlag15 = -1
  stateFlag = 0
  stateFlag2 = 0
  number2 = false
  number3 = false
  number4 = false
  -- Beginner: Play an animation on a ped.
  stateFlag11(stateFlag12, text9, text10, stateFlag14, cmgOperation2, stateFlag15, stateFlag, stateFlag2, number2, number3, number4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5cd959a1e1".
rageUiOperation(rageUiOperation2, text5)
rageUiOperation = CMG
rageUiOperation = rageUiOperation.registerDevMenuItems
rageUiOperation2 = "Casino"

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, rageUiOperation3, stateFlag11, stateFlag12
  localValue1 = RageUI
  localValue1 = localValue1.Button
  localValue2 = "Spin Nearest Wheel"
  rageUiOperation3 = "Spins the nearest wheel on the client."
  stateFlag11 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag12; parameters: localValue12, localValue22, localValue3) ===
  function stateFlag12(localValue12, localValue22, localValue3)
    local dataCollection3, stateFlag13, localEventCall, number9, workingValue3, workingValue4, number10, workingValue, number, text3
    if localValue3 then
      dataCollection3 = nil
      stateFlag13 = 100.0
      localEventCall = pairs
      number9 = dataCollection
      localEventCall, number9, workingValue3, workingValue4 = localEventCall(number9)
      for number10, workingValue in localEventCall, number9, workingValue3, workingValue4 do
        number = CMG
        number = number.getPlayerCoords
        -- Beginner: result below is playerCoords.
        number = number()
        text3 = workingValue.entryPosition
        number = number - text3
        number = #number
        if stateFlag13 > number then
          dataCollection3 = number10
          stateFlag13 = number
        end
      end
      if dataCollection3 then
        localEventCall = TriggerEvent
        number9 = "fba1ad1368"
        workingValue3 = 1
        workingValue4 = dataCollection3
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "fba1ad1368".
        localEventCall(number9, workingValue3, workingValue4)
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(localValue2, rageUiOperation3, stateFlag11, stateFlag12)
end
rageUiOperation(rageUiOperation2, text5)
