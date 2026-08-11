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
local dataTable, dataTable2, vector3Builder, vector3Builder2, numberValue7, numberValue8, cmgCall, textValue11, textValue12, rageUiCall4, textValue, textValue2, rageUiCall, rageUiCall2, textValue5, textValue6
dataTable = {}
dataTable2 = {}
vector3Builder = vector3
vector3Builder2 = 965.15264892578
numberValue7 = 47.068027496338
numberValue8 = 81.623069763184
vector3Builder = vector3Builder(vector3Builder2, numberValue7, numberValue8)
dataTable2.entryPosition = vector3Builder
vector3Builder = vector3
vector3Builder2 = 964.71350097656
numberValue7 = 47.952812194824
numberValue8 = 81.623191833496
vector3Builder = vector3Builder(vector3Builder2, numberValue7, numberValue8)
dataTable2.moveToPosition = vector3Builder
vector3Builder = vector3
vector3Builder2 = 964.71108398438
numberValue7 = 49.261958312988
numberValue8 = 80.823184204102
vector3Builder = vector3Builder(vector3Builder2, numberValue7, numberValue8)
dataTable2.objectPosition = vector3Builder
dataTable2.objectHeading = 57.5
vector3Builder = {}
vector3Builder2 = vector3
numberValue7 = -249.98811340332
numberValue8 = -907.77935791016
cmgCall = 32.314388275146
vector3Builder2 = vector3Builder2(numberValue7, numberValue8, cmgCall)
vector3Builder.entryPosition = vector3Builder2
vector3Builder2 = vector3
numberValue7 = -249.56430053711
numberValue8 = -907.09625244141
cmgCall = 32.425846099854
vector3Builder2 = vector3Builder2(numberValue7, numberValue8, cmgCall)
vector3Builder.moveToPosition = vector3Builder2
vector3Builder2 = vector3
numberValue7 = -247.9839
numberValue8 = -906.7876
cmgCall = 31.60079
vector3Builder2 = vector3Builder2(numberValue7, numberValue8, cmgCall)
vector3Builder.objectPosition = vector3Builder2
vector3Builder.objectHeading = -20.0
vector3Builder.hideObjectModel = 3400507376
dataTable[1] = dataTable2
dataTable[2] = vector3Builder
dataTable2 = {}
vector3Builder = nil
vector3Builder2 = ""
numberValue7 = false
numberValue8 = nil
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2
  arg1 = vector3Builder2
  return arg1
end
cmgCall.getPodiumVehicle = textValue11
cmgCall = RMenu
cmgCall = cmgCall.Add
textValue11 = "luckywheel"
textValue12 = "casino"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateMenu
textValue = ""
textValue2 = ""
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
textValue5 = "cmg_luckywheel"
textValue6 = "cmg_luckywheel"
rageUiCall4, textValue, textValue2, rageUiCall, rageUiCall2, textValue5, textValue6 = rageUiCall4(textValue, textValue2, rageUiCall, rageUiCall2, textValue5, textValue6)
cmgCall(textValue11, textValue12, rageUiCall4, textValue, textValue2, rageUiCall, rageUiCall2, textValue5, textValue6)
cmgCall = RMenu
textValue11 = cmgCall
cmgCall = cmgCall.Get
textValue12 = "luckywheel"
rageUiCall4 = "casino"
-- Beginner: result below is menu.
cmgCall = cmgCall(textValue11, textValue12, rageUiCall4)
textValue11 = cmgCall
cmgCall = cmgCall.SetSubtitle
textValue12 = "~b~You may only spin the wheel once per restart."
cmgCall(textValue11, textValue12)
cmgCall = RageUI
cmgCall = cmgCall.CreateWhile
textValue11 = 1.0
textValue12 = RMenu
rageUiCall4 = textValue12
textValue12 = textValue12.Get
textValue = "luckywheel"
textValue2 = "casino"
-- Beginner: result below is menu.
textValue12 = textValue12(rageUiCall4, textValue, textValue2)
rageUiCall4 = nil

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, rageUiCall3, flag11, flag12, textValue9, textValue10
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  rageUiCall3 = arg2
  arg2 = arg2.Get
  flag11 = "luckywheel"
  flag12 = "casino"
  -- Beginner: result below is menu.
  arg2 = arg2(rageUiCall3, flag11, flag12)
  rageUiCall3 = true
  flag11 = true
  flag12 = true

  -- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
  function textValue9()
    local arg12, arg22, arg3, dataTable3, flag13, localEventCall
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Spin the wheel of CMG (100,000 Chips)"
    arg3 = ""
    dataTable3 = {}
    dataTable3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag13 = true

    -- === HELPER FUNCTION: localEventCall(arg13, arg23, arg32) ===
    function localEventCall(arg13, arg23, arg32)
      local serverEventCall, textValue8, workValue2
      if arg32 then
        serverEventCall = TriggerServerEvent
        textValue8 = "1873c5b3d7"
        workValue2 = numberValue8
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1873c5b3d7".
        serverEventCall(textValue8, workValue2)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, arg3, dataTable3, flag13, localEventCall)
  end

  -- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
  function textValue10()
    local arg12, arg22
  end
  arg1(arg2, rageUiCall3, flag11, flag12, textValue9, textValue10)
end
cmgCall(textValue11, textValue12, rageUiCall4, textValue)

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1, arg2) ===
function cmgCall(arg1, arg2)
  local rageUiCall3, flag11, flag12, textValue9, textValue10
  rageUiCall3 = RageUI
  rageUiCall3 = rageUiCall3.CloseAll
  rageUiCall3()
  rageUiCall3 = RageUI
  rageUiCall3 = rageUiCall3.Visible
  flag11 = RMenu
  flag12 = flag11
  flag11 = flag11.Get
  textValue9 = "luckywheel"
  textValue10 = "casino"
  -- Beginner: result below is menu.
  flag11 = flag11(flag12, textValue9, textValue10)
  flag12 = arg1
  rageUiCall3(flag11, flag12)
  if arg1 then
    numberValue8 = arg2
  else
    rageUiCall3 = nil
    numberValue8 = rageUiCall3
  end
end

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, rageUiCall3, flag11, flag12, textValue9, textValue10, flag14, cmgCall2, flag15, flag, flag2
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = vector3Builder2
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg2 = CreateVehicle
  rageUiCall3 = arg1
  flag11 = 970.05017089844
  flag12 = 45.933525085449
  textValue9 = 81.578002929688
  textValue10 = 0.0
  flag14 = false
  cmgCall2 = false
  -- Beginner: result below is vehicleEntity.
  arg2 = arg2(rageUiCall3, flag11, flag12, textValue9, textValue10, flag14, cmgCall2)
  rageUiCall3 = CMG
  rageUiCall3 = rageUiCall3.initLocalVehicle
  flag11 = arg2
  rageUiCall3(flag11)
  rageUiCall3 = SetModelAsNoLongerNeeded
  flag11 = arg1
  rageUiCall3(flag11)
  rageUiCall3 = FreezeEntityPosition
  flag11 = arg2
  flag12 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  rageUiCall3(flag11, flag12)
  rageUiCall3 = GetEntityCoords
  flag11 = arg2
  -- Beginner: result below is entityCoords.
  rageUiCall3 = rageUiCall3(flag11)
  flag11 = SetEntityCoords
  flag12 = arg2
  textValue9 = rageUiCall3.x
  textValue10 = rageUiCall3.y
  flag14 = rageUiCall3.z
  flag14 = flag14 + 1
  cmgCall2 = false
  flag15 = false
  flag = true
  flag2 = true
  -- Beginner: Move/teleport an entity to new coordinates.
  flag11(flag12, textValue9, textValue10, flag14, cmgCall2, flag15, flag, flag2)
  flag11 = SetVehicleOnGroundProperly
  flag12 = arg2
  flag11(flag12)
  vector3Builder = arg2
end
textValue12 = RegisterNetEvent
rageUiCall4 = "63ed7e8295"
-- Beginner: this function handles network event "63ed7e8295".

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local rageUiCall3, flag11
  vector3Builder2 = arg1
  if arg2 then
    rageUiCall3 = DeleteEntity
    flag11 = vector3Builder
    -- Beginner: Delete a GTA entity.
    rageUiCall3(flag11)
    rageUiCall3 = textValue11
    rageUiCall3()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "63ed7e8295".
textValue12(rageUiCall4, textValue)
textValue12 = Citizen
textValue12 = textValue12.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: none) ===
function rageUiCall4()
  local arg1, arg2
  while true do
    arg1 = CMG
    arg1 = arg1.isInsideDiamondCasino
    arg1 = arg1()
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
  arg1 = textValue11
  arg1()
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue12(rageUiCall4)
textValue12 = Citizen
textValue12 = textValue12.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: none) ===
function rageUiCall4()
  local arg1, arg2, rageUiCall3, flag11, flag12
  while true do
    arg1 = CMG
    arg1 = arg1.isInsideDiamondCasino
    arg1 = arg1()
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
  while true do
    arg1 = CMG
    arg1 = arg1.isInsideDiamondCasino
    arg1 = arg1()
    if arg1 then
      arg1 = vector3Builder
      if nil ~= arg1 then
        arg1 = GetEntityHeading
        arg2 = vector3Builder
        -- Beginner: result below is heading.
        arg1 = arg1(arg2)
        arg2 = arg1 - 0.1
        rageUiCall3 = SetEntityHeading
        flag11 = vector3Builder
        flag12 = arg2
        -- Beginner: Change the direction an entity is facing.
        rageUiCall3(flag11, flag12)
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 5
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue12(rageUiCall4)

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1, arg2) ===
function textValue12(arg1, arg2)
  local rageUiCall3, flag11, flag12, textValue9, textValue10, flag14
  rageUiCall3 = dataTable2
  rageUiCall3 = rageUiCall3[arg2]
  if not rageUiCall3 then
    return
  end
  flag11 = dataTable
  flag11 = flag11[arg2]
  flag11 = flag11.entryPosition
  flag12 = dataTable
  flag12 = flag12[arg2]
  flag12 = flag12.objectHeading
  textValue9 = SetEntityHeading
  textValue10 = rageUiCall3
  flag14 = -30.9754
  -- Beginner: Change the direction an entity is facing.
  textValue9(textValue10, flag14)
  textValue9 = Citizen
  textValue9 = textValue9.CreateThread

  -- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
  function textValue10()
    local arg12, arg22, arg3, dataTable3, flag13, localEventCall, numberValue9, workValue3, workValue4, numberValue10, workValue, numberValue, textValue3, textValue4, numberValue5, flag3, textValue7, flag6, flag8, flag9, flag10
    arg12 = 1
    arg22 = nil
    arg3 = arg1
    arg3 = arg3 - 1
    arg3 = arg3 * 18
    dataTable3 = arg3 + 2880
    flag13 = dataTable3 / 2
    localEventCall = 0
    numberValue9 = -20
    while arg12 > 0 do
      workValue3 = GetEntityRotation
      workValue4 = rageUiCall3
      numberValue10 = 2
      workValue3 = workValue3(workValue4, numberValue10)
      if dataTable3 > flag13 then
        arg12 = arg12 + 1
      else
        arg12 = arg12 - 1
        if arg12 < 0 then
          arg12 = 0
        end
      end
      localEventCall = localEventCall + 1
      arg22 = arg12 / 200
      workValue4 = workValue3.y
      workValue4 = workValue4 - arg22
      numberValue10 = workValue4 - numberValue9
      if numberValue10 < 5 then
        numberValue10 = workValue4 - numberValue9
        if numberValue10 > -5 then
          numberValue10 = GetSoundId
          -- Beginner: result below is soundHandle.
          numberValue10 = numberValue10()
          workValue = PlaySoundFromCoord
          numberValue = numberValue10
          textValue3 = "Spin_Single_Ticks"
          textValue4 = flag11.x
          numberValue5 = flag11.y
          flag3 = flag11.z
          textValue7 = "dlc_vw_casino_lucky_wheel_sounds"
          flag6 = false
          flag8 = 0
          flag9 = false
          workValue(numberValue, textValue3, textValue4, numberValue5, flag3, textValue7, flag6, flag8, flag9)
          workValue = SetTimeout
          numberValue = 100

          -- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
          function textValue3()
            local arg13, arg23
            arg13 = ReleaseSoundId
            arg23 = numberValue10
            arg13(arg23)
          end
          workValue(numberValue, textValue3)
          numberValue9 = numberValue9 - 20
          if -180 == numberValue9 then
            numberValue9 = 180
          end
      end
      elseif 180 == numberValue9 then
        numberValue10 = -180
        workValue = workValue4 - numberValue10
        if workValue < 5 then
          workValue = workValue4 - numberValue10
          if workValue > -5 then
            workValue = GetSoundId
            -- Beginner: result below is soundHandle.
            workValue = workValue()
            numberValue = PlaySoundFromCoord
            textValue3 = workValue
            textValue4 = "Spin_Single_Ticks"
            numberValue5 = flag11.x
            flag3 = flag11.y
            textValue7 = flag11.z
            flag6 = "dlc_vw_casino_lucky_wheel_sounds"
            flag8 = false
            flag9 = 0
            flag10 = false
            numberValue(textValue3, textValue4, numberValue5, flag3, textValue7, flag6, flag8, flag9, flag10)
            numberValue = SetTimeout
            textValue3 = 100

            -- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
            function textValue4()
              local arg13, arg23
              arg13 = ReleaseSoundId
              arg23 = workValue
              arg13(arg23)
            end
            numberValue(textValue3, textValue4)
          end
        end
        numberValue9 = numberValue9 - 20
      end
      dataTable3 = dataTable3 - arg22
      numberValue10 = SetEntityRotation
      workValue = rageUiCall3
      numberValue = 0.0
      textValue3 = workValue4
      textValue4 = flag12
      numberValue5 = 2
      flag3 = true
      numberValue10(workValue, numberValue, textValue3, textValue4, numberValue5, flag3)
      numberValue10 = Citizen
      numberValue10 = numberValue10.Wait
      workValue = 5
      numberValue10(workValue)
    end
    workValue3 = GetSoundId
    -- Beginner: result below is soundHandle.
    workValue3 = workValue3()
    workValue4 = PlaySoundFromCoord
    numberValue10 = workValue3
    workValue = "Win"
    numberValue = flag11.x
    textValue3 = flag11.y
    textValue4 = flag11.z
    numberValue5 = "dlc_vw_casino_lucky_wheel_sounds"
    flag3 = false
    textValue7 = 0
    flag6 = false
    workValue4(numberValue10, workValue, numberValue, textValue3, textValue4, numberValue5, flag3, textValue7, flag6)
    workValue4 = SetTimeout
    numberValue10 = 1000

    -- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
    function workValue()
      local arg13, arg23
      arg13 = ReleaseSoundId
      arg23 = workValue3
      arg13(arg23)
    end
    workValue4(numberValue10, workValue)
    workValue4 = false
    numberValue7 = workValue4
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  textValue9(textValue10)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: arg1) ===
function rageUiCall4(arg1)
  local arg2, rageUiCall3, flag11, flag12, textValue9, textValue10, flag14, cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7
  arg2 = numberValue7
  if not arg2 then
    arg2 = true
    numberValue7 = arg2
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    rageUiCall3 = "anim_casino_a@amb@casino@games@lucky7wheel@female"
    flag11 = IsPedMale
    flag12 = arg2
    flag11 = flag11(flag12)
    if flag11 then
      rageUiCall3 = "anim_casino_a@amb@casino@games@lucky7wheel@male"
    end
    flag11 = rageUiCall3
    flag12 = "enter_right_to_baseidle"
    textValue9 = RequestAnimDict
    textValue10 = flag11
    textValue9(textValue10)
    textValue9 = Wait
    textValue10 = 50
    textValue9(textValue10)
    textValue9 = dataTable
    textValue9 = textValue9[arg1]
    textValue9 = textValue9.moveToPosition
    textValue10 = TaskGoStraightToCoord
    flag14 = arg2
    cmgCall2 = textValue9.x
    flag15 = textValue9.y
    flag = textValue9.z
    flag2 = 1.0
    numberValue2 = -1
    numberValue3 = 312.2
    numberValue4 = 0.0
    textValue10(flag14, cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4)
    textValue10 = false
    while not textValue10 do
      flag14 = GetEntityCoords
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getPlayerPed
      cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7 = cmgCall2()
      -- Beginner: result below is entityCoords.
      flag14 = flag14(cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7)
      cmgCall2 = flag14.x
      flag15 = textValue9.x
      flag15 = flag15 - 0.01
      if cmgCall2 >= flag15 then
        cmgCall2 = flag14.x
        flag15 = textValue9.x
        flag15 = flag15 + 0.01
        if cmgCall2 <= flag15 then
          cmgCall2 = flag14.y
          flag15 = textValue9.y
          flag15 = flag15 - 0.01
          if cmgCall2 >= flag15 then
            cmgCall2 = flag14.y
            flag15 = textValue9.y
            flag15 = flag15 + 0.01
            if cmgCall2 <= flag15 then
              textValue10 = true
            end
          end
        end
      end
      cmgCall2 = Citizen
      cmgCall2 = cmgCall2.Wait
      flag15 = 0
      cmgCall2(flag15)
    end
    flag14 = TaskPlayAnim
    cmgCall2 = arg2
    flag15 = flag11
    flag = flag12
    flag2 = 8.0
    numberValue2 = -8.0
    numberValue3 = -1
    numberValue4 = 0
    numberValue6 = 0
    flag4 = false
    flag5 = false
    flag7 = false
    -- Beginner: Play an animation on a ped.
    flag14(cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7)
    while true do
      flag14 = IsEntityPlayingAnim
      cmgCall2 = arg2
      flag15 = flag11
      flag = flag12
      flag2 = 3
      flag14 = flag14(cmgCall2, flag15, flag, flag2)
      if not flag14 then
        break
      end
      flag14 = Citizen
      flag14 = flag14.Wait
      cmgCall2 = 0
      flag14(cmgCall2)
      flag14 = DisableAllControlActions
      cmgCall2 = 0
      flag14(cmgCall2)
    end
    flag14 = TaskPlayAnim
    cmgCall2 = arg2
    flag15 = flag11
    flag = "enter_to_armraisedidle"
    flag2 = 8.0
    numberValue2 = -8.0
    numberValue3 = -1
    numberValue4 = 0
    numberValue6 = 0
    flag4 = false
    flag5 = false
    flag7 = false
    -- Beginner: Play an animation on a ped.
    flag14(cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7)
    while true do
      flag14 = IsEntityPlayingAnim
      cmgCall2 = arg2
      flag15 = flag11
      flag = "enter_to_armraisedidle"
      flag2 = 3
      flag14 = flag14(cmgCall2, flag15, flag, flag2)
      if not flag14 then
        break
      end
      flag14 = Citizen
      flag14 = flag14.Wait
      cmgCall2 = 0
      flag14(cmgCall2)
      flag14 = DisableAllControlActions
      cmgCall2 = 0
      flag14(cmgCall2)
    end
    flag14 = TaskPlayAnim
    cmgCall2 = arg2
    flag15 = flag11
    flag = "armraisedidle_to_spinningidle_high"
    flag2 = 8.0
    numberValue2 = -8.0
    numberValue3 = -1
    numberValue4 = 0
    numberValue6 = 0
    flag4 = false
    flag5 = false
    flag7 = false
    -- Beginner: Play an animation on a ped.
    flag14(cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7)
    flag14 = SetEntityHeading
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    cmgCall2 = cmgCall2()
    flag15 = 10.9754
    -- Beginner: Change the direction an entity is facing.
    flag14(cmgCall2, flag15)
    flag14 = Wait
    cmgCall2 = 2000
    flag14(cmgCall2)
    flag14 = TaskPlayAnim
    cmgCall2 = arg2
    flag15 = flag11
    flag = "baseidle_variation_02"
    flag2 = 8.0
    numberValue2 = -8.0
    numberValue3 = -1
    numberValue4 = 1
    numberValue6 = 0
    flag4 = false
    flag5 = false
    flag7 = false
    -- Beginner: Play an animation on a ped.
    flag14(cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7)
    flag14 = RemoveAnimDict
    cmgCall2 = flag11
    flag14(cmgCall2)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1) ===
function textValue(arg1)
  local arg2, rageUiCall3, flag11, flag12, textValue9, textValue10, flag14, cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4
  arg2 = CMG
  arg2 = arg2.loadModel
  rageUiCall3 = -945995088
  arg2 = arg2(rageUiCall3)
  if not arg2 then
    return
  end
  flag11 = arg1.wheelId
  rageUiCall3 = dataTable
  rageUiCall3 = rageUiCall3[flag11]
  flag11 = rageUiCall3.objectPosition
  flag12 = GetClosestObjectOfType
  textValue9 = flag11.x
  textValue10 = flag11.y
  flag14 = flag11.z
  cmgCall2 = 5.0
  flag15 = rageUiCall3.hideObjectModel
  flag = false
  flag2 = false
  numberValue2 = false
  -- Beginner: result below is objectEntity.
  flag12 = flag12(textValue9, textValue10, flag14, cmgCall2, flag15, flag, flag2, numberValue2)
  if 0 ~= flag12 then
    textValue9 = FreezeEntityPosition
    textValue10 = flag12
    flag14 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    textValue9(textValue10, flag14)
    textValue9 = SetEntityCanBeDamaged
    textValue10 = flag12
    flag14 = false
    textValue9(textValue10, flag14)
    textValue9 = SetEntityProofs
    textValue10 = flag12
    flag14 = true
    cmgCall2 = true
    flag15 = true
    flag = true
    flag2 = true
    numberValue2 = true
    numberValue3 = true
    numberValue4 = true
    textValue9(textValue10, flag14, cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4)
  end
  textValue9 = CreateObject
  textValue10 = arg2
  flag14 = flag11.x
  cmgCall2 = flag11.y
  flag15 = flag11.z
  flag = false
  flag2 = false
  numberValue2 = true
  -- Beginner: result below is objectEntity.
  textValue9 = textValue9(textValue10, flag14, cmgCall2, flag15, flag, flag2, numberValue2)
  textValue10 = SetEntityHeading
  flag14 = textValue9
  cmgCall2 = rageUiCall3.objectHeading
  -- Beginner: Change the direction an entity is facing.
  textValue10(flag14, cmgCall2)
  textValue10 = SetModelAsNoLongerNeeded
  flag14 = arg2
  textValue10(flag14)
  flag14 = arg1.wheelId
  textValue10 = dataTable2
  textValue10[flag14] = textValue9
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, rageUiCall3, flag11
  rageUiCall3 = arg1.wheelId
  arg2 = dataTable2
  arg2 = arg2[rageUiCall3]
  if arg2 then
    rageUiCall3 = DeleteEntity
    flag11 = arg2
    -- Beginner: Delete a GTA entity.
    rageUiCall3(flag11)
    flag11 = arg1.wheelId
    rageUiCall3 = dataTable2
    rageUiCall3[flag11] = nil
  end
end
rageUiCall = AddEventHandler
rageUiCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local rageUiCall3, flag11, flag12, textValue9, textValue10, flag14, cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg12) ===
    function rageUiCall3(arg12)
      local arg22, arg3, dataTable3
      arg22 = cmgCall
      arg3 = true
      dataTable3 = arg12.wheelId
      arg22(arg3, dataTable3)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: flag11; parameters: arg12) ===
    function flag11(arg12)
      local arg22, arg3, dataTable3
      arg22 = cmgCall
      arg3 = false
      dataTable3 = arg12.wheelId
      arg22(arg3, dataTable3)
    end
    flag12 = pairs
    textValue9 = dataTable
    flag12, textValue9, textValue10, flag14 = flag12(textValue9)
    for cmgCall2, flag15 in flag12, textValue9, textValue10, flag14 do
      flag = tCMG
      flag = flag.addBlip
      flag2 = flag15.entryPosition
      flag2 = flag2.x
      numberValue2 = flag15.entryPosition
      numberValue2 = numberValue2.y
      numberValue3 = flag15.entryPosition
      numberValue3 = numberValue3.z
      numberValue4 = 681
      numberValue6 = 0
      flag4 = "CMG Wheel"
      flag5 = 0.7
      flag7 = true
      -- Beginner: Create a minimap blip.
      flag(flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7)
      flag = CMG
      flag = flag.createArea
      flag2 = string
      flag2 = flag2.format
      numberValue2 = "cmgwheel_%s"
      numberValue3 = cmgCall2
      flag2 = flag2(numberValue2, numberValue3)
      numberValue2 = flag15.entryPosition
      numberValue3 = 1.5
      numberValue4 = 6
      numberValue6 = rageUiCall3
      flag4 = flag11

      -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
      function flag5()
        local arg12, arg22
      end
      flag7 = {}
      flag7.wheelId = cmgCall2
      -- Beginner: Create an interaction area around a world position.
      flag(flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7)
      flag = CMG
      flag = flag.createArea
      flag2 = string
      flag2 = flag2.format
      numberValue2 = "cmgwheel_object_%s"
      numberValue3 = cmgCall2
      flag2 = flag2(numberValue2, numberValue3)
      numberValue2 = flag15.entryPosition
      numberValue3 = 100.0
      numberValue4 = 100.0
      numberValue6 = textValue
      flag4 = textValue2

      -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
      function flag5()
        local arg12, arg22
      end
      flag7 = {}
      flag7.wheelId = cmgCall2
      flag(flag2, numberValue2, numberValue3, numberValue4, numberValue6, flag4, flag5, flag7)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
rageUiCall(rageUiCall2, textValue5)
rageUiCall = RegisterNetEvent
rageUiCall2 = "fba1ad1368"
-- Beginner: this function handles network event "fba1ad1368".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local rageUiCall3, flag11, flag12
  rageUiCall3 = Wait
  flag11 = 1000
  rageUiCall3(flag11)
  rageUiCall3 = textValue12
  flag11 = arg1
  flag12 = arg2
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  rageUiCall3(flag11, flag12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fba1ad1368".
rageUiCall(rageUiCall2, textValue5)
rageUiCall = RegisterNetEvent
rageUiCall2 = "aaa9100058"
-- Beginner: this function handles network event "aaa9100058".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2, rageUiCall3
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  rageUiCall3 = false
  arg2(rageUiCall3)
  arg2 = rageUiCall4
  rageUiCall3 = arg1
  arg2(rageUiCall3)
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  rageUiCall3 = true
  arg2(rageUiCall3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "aaa9100058".
rageUiCall(rageUiCall2, textValue5)
rageUiCall = RegisterNetEvent
rageUiCall2 = "5cd959a1e1"
-- Beginner: this function handles network event "5cd959a1e1".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2, rageUiCall3, flag11, flag12, textValue9, textValue10, flag14, cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  rageUiCall3 = "anim_casino_a@amb@casino@games@lucky7wheel@female"
  flag11 = IsPedMale
  flag12 = arg2
  flag11 = flag11(flag12)
  if flag11 then
    rageUiCall3 = "anim_casino_a@amb@casino@games@lucky7wheel@male"
  end
  flag11 = TaskPlayAnim
  flag12 = arg2
  textValue9 = rageUiCall3
  textValue10 = "win"
  flag14 = arg1
  textValue10 = textValue10 .. flag14
  flag14 = 8.0
  cmgCall2 = -8.0
  flag15 = -1
  flag = 0
  flag2 = 0
  numberValue2 = false
  numberValue3 = false
  numberValue4 = false
  -- Beginner: Play an animation on a ped.
  flag11(flag12, textValue9, textValue10, flag14, cmgCall2, flag15, flag, flag2, numberValue2, numberValue3, numberValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5cd959a1e1".
rageUiCall(rageUiCall2, textValue5)
rageUiCall = CMG
rageUiCall = rageUiCall.registerDevMenuItems
rageUiCall2 = "Casino"

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, rageUiCall3, flag11, flag12
  arg1 = RageUI
  arg1 = arg1.Button
  arg2 = "Spin Nearest Wheel"
  rageUiCall3 = "Spins the nearest wheel on the client."
  flag11 = true

  -- === HELPER FUNCTION (decompiler name: flag12; parameters: arg12, arg22, arg3) ===
  function flag12(arg12, arg22, arg3)
    local dataTable3, flag13, localEventCall, numberValue9, workValue3, workValue4, numberValue10, workValue, numberValue, textValue3
    if arg3 then
      dataTable3 = nil
      flag13 = 100.0
      localEventCall = pairs
      numberValue9 = dataTable
      localEventCall, numberValue9, workValue3, workValue4 = localEventCall(numberValue9)
      for numberValue10, workValue in localEventCall, numberValue9, workValue3, workValue4 do
        numberValue = CMG
        numberValue = numberValue.getPlayerCoords
        -- Beginner: result below is playerCoords.
        numberValue = numberValue()
        textValue3 = workValue.entryPosition
        numberValue = numberValue - textValue3
        numberValue = #numberValue
        if flag13 > numberValue then
          dataTable3 = numberValue10
          flag13 = numberValue
        end
      end
      if dataTable3 then
        localEventCall = TriggerEvent
        numberValue9 = "fba1ad1368"
        workValue3 = 1
        workValue4 = dataTable3
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "fba1ad1368".
        localEventCall(numberValue9, workValue3, workValue4)
      end
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(arg2, rageUiCall3, flag11, flag12)
end
rageUiCall(rageUiCall2, textValue5)
