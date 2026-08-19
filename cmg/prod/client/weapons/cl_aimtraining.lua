--[[
    LEVEL 1 BEGINNER GUIDE — Aimtraining
    =========================================

    File: cmg/prod/client/weapons/cl_aimtraining.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: weapon/combat gameplay, specifically the Aimtraining feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 71
      * Background threads: 0
      * Always-running loops: 0
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
local cmgOperation, cmgOperation2, cmgOperation3, stateFlag8, dataCollection4, workingValue22, tableHelper, workingValue28, dataCollection9, number24, number, number3, number5, number6, number7, workingValue4, workingValue5, workingValue6, workingValue7, workingValue8, text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
cmgOperation2 = "cfg/cfg_aimtraining"
-- Beginner: result below is config.
cmgOperation = cmgOperation(cmgOperation2)
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.loadModule
cmgOperation3 = "cfg/weapons"
-- Beginner: result below is config.
cmgOperation2 = cmgOperation2(cmgOperation3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerDevMenuState
stateFlag8 = "Aim Training"
dataCollection4 = {}
dataCollection4.drawLines = false
cmgOperation3 = cmgOperation3(stateFlag8, dataCollection4)
stateFlag8 = false
dataCollection4 = true
workingValue22 = nil
tableHelper = table
tableHelper = tableHelper.copy
workingValue28 = cmgOperation.defaultSettings
tableHelper = tableHelper(workingValue28)
workingValue28 = nil
dataCollection9 = {}
number24 = 0
number = 0
number3 = 0
number5 = 0
number6 = 0
number7 = 0
workingValue4 = nil

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2
  localValue1 = 0
  number5 = localValue1
  localValue1 = 0
  number6 = localValue1
  localValue1 = 0
  number7 = localValue1
  localValue1 = 0
  number3 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32
  localValue1 = pairs
  localValue2 = dataCollection9
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5 in localValue1, localValue2, localValue3, localValue4 do
    workingValue23 = DeleteEntity
    createVector32 = localValue5
    -- Beginner: Delete a GTA entity.
    workingValue23(createVector32)
  end
  localValue1 = table
  localValue1 = localValue1.clear
  localValue2 = dataCollection9
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2
  localValue1 = nil
  workingValue28 = localValue1
  localValue1 = table
  localValue1 = localValue1.copy
  localValue2 = cmgOperation.defaultSettings
  localValue1 = localValue1(localValue2)
  tableHelper = localValue1
  localValue1 = workingValue5
  localValue1()
  localValue1 = workingValue6
  localValue1()
  localValue1 = RemoveAnimDict
  localValue2 = cmgOperation.runAnim
  localValue2 = localValue2.dict
  localValue1(localValue2)
  localValue1 = RemoveAnimDict
  localValue2 = cmgOperation.sideAnim
  localValue2 = localValue2.dict
  localValue1(localValue2)
  localValue1 = RemoveAnimDict
  localValue2 = cmgOperation.rollAnims
  localValue2 = localValue2.dict
  localValue1(localValue2)
end
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text4 = "aimtraining"
text5 = "mainmenu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text6 = ""
text7 = "Aim Training"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_aimtraining"
text8 = "aimtraining"
rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6 = rageUiOperation(text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8)
workingValue8(text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text4 = "aimtraining"
text5 = "weapons"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text6 = RMenu
text7 = text6
text6 = text6.Get
rageUiOperation2 = "aimtraining"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text6 = text6(text7, rageUiOperation2, rageUiOperation3)
text7 = ""
rageUiOperation2 = "Weapons"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text8 = "cmg_aimtraining"
text9 = "aimtraining"
rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6 = rageUiOperation(text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9)
workingValue8(text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text4 = "aimtraining"
text5 = "challenges"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text6 = RMenu
text7 = text6
text6 = text6.Get
rageUiOperation2 = "aimtraining"
rageUiOperation3 = "mainmenu"
-- Beginner: result below is menu.
text6 = text6(text7, rageUiOperation2, rageUiOperation3)
text7 = ""
rageUiOperation2 = "Challenges"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text8 = "cmg_aimtraining"
text9 = "aimtraining"
rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6 = rageUiOperation(text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9)
workingValue8(text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text4 = "aimtraining"
text5 = "challenge"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text6 = RMenu
text7 = text6
text6 = text6.Get
rageUiOperation2 = "aimtraining"
rageUiOperation3 = "challenges"
-- Beginner: result below is menu.
text6 = text6(text7, rageUiOperation2, rageUiOperation3)
text7 = ""
rageUiOperation2 = "View Challenge"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text8 = "cmg_aimtraining"
text9 = "aimtraining"
rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6 = rageUiOperation(text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9)
workingValue8(text4, text5, rageUiOperation, text6, text7, rageUiOperation2, rageUiOperation3, rageUiOperation4, text8, text9, workingValue9, workingValue10, workingValue12, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, cmgOperation4, iterator, eventHandler, text10, dataCollection, dataCollection2, dataCollection3, cmgOperation5, stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6)
workingValue8 = RageUI
workingValue8 = workingValue8.CreateWhile
text4 = 1.0
text5 = RMenu
rageUiOperation = text5
text5 = text5.Get
text6 = "aimtraining"
text7 = "mainmenu"
-- Beginner: result below is menu.
text5 = text5(rageUiOperation, text6, text7)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "aimtraining"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
  function workingValue23()
    local localValue12, localValue22, localValue32, localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15, stateFlag, text
    localValue12 = workingValue28
    if not localValue12 then
      localValue12 = true
      if localValue12 then
        goto continueAtStep8
      end
    end
    localValue12 = false
    ::continueAtStep8::
    if not localValue12 then
      localValue22 = "Settings can not be edited whilst in a challenge"
      if localValue22 then
        goto continueAtStep14
      end
    end
    localValue22 = nil
    ::continueAtStep14::
    localValue32 = RageUI
    localValue32 = localValue32.Checkbox
    localValue42 = "Headshots Only"
    text12 = localValue22 or text12
    if not localValue22 then
      text12 = "Whether to only kill if a headshot happens. When changed your statistics will reset."
    end
    workingValue24 = tableHelper.headshotsOnly
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: localValue13, localValue23, localValue33, localValue43) ===
    function dataCollection8(localValue13, localValue23, localValue33, localValue43)
      local workingValue21
      workingValue21 = tableHelper.headshotsOnly
      if workingValue21 ~= localValue43 then
        workingValue21 = localValue12
        if workingValue21 then
          workingValue21 = workingValue5
          workingValue21()
          tableHelper.headshotsOnly = localValue43
        end
      end
    end
    -- Beginner: Draw a RageUI checkbox.
    localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8)
    localValue32 = RageUI
    localValue32 = localValue32.List
    localValue42 = "Num Targets"
    text12 = cmgOperation.numTargetsList
    workingValue24 = tableHelper.numTargetsCount
    dataCollection7 = localValue22 or dataCollection7
    if not localValue22 then
      dataCollection7 = "The amount of targets to be active at one time."
    end
    dataCollection8 = {}
    workingValue31 = localValue12

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue23, localValue33, localValue43) ===
    function text15(localValue13, localValue23, localValue33, localValue43)
      local workingValue21
      workingValue21 = tableHelper.numTargetsCount
      if localValue43 ~= workingValue21 then
        workingValue21 = localValue12
        if workingValue21 then
          tableHelper.numTargetsCount = localValue43
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15)
    localValue32 = RageUI
    localValue32 = localValue32.List
    localValue42 = "Movement Type"
    text12 = cmgOperation.movementsList
    workingValue24 = tableHelper.movementsIndex
    dataCollection7 = localValue22 or dataCollection7
    if not localValue22 then
      dataCollection7 = "The type of movement each target should perform."
    end
    dataCollection8 = {}
    workingValue31 = localValue12

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue23, localValue33, localValue43) ===
    function text15(localValue13, localValue23, localValue33, localValue43)
      local workingValue21
      workingValue21 = tableHelper.movementsIndex
      if localValue43 ~= workingValue21 then
        workingValue21 = localValue12
        if workingValue21 then
          workingValue21 = workingValue6
          workingValue21()
          tableHelper.movementsIndex = localValue43
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15)
    localValue32 = RageUI
    localValue32 = localValue32.List
    localValue42 = "Distance"
    text12 = cmgOperation.distanceList
    workingValue24 = tableHelper.distanceIndex
    dataCollection7 = localValue22 or dataCollection7
    if not localValue22 then
      dataCollection7 = "The distance each target should be at."
    end
    dataCollection8 = {}
    workingValue31 = localValue12

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue23, localValue33, localValue43) ===
    function text15(localValue13, localValue23, localValue33, localValue43)
      local workingValue21
      workingValue21 = tableHelper.distanceIndex
      if localValue43 ~= workingValue21 then
        workingValue21 = localValue12
        if workingValue21 then
          workingValue21 = workingValue6
          workingValue21()
          tableHelper.distanceIndex = localValue43
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15)
    localValue32 = RageUI
    localValue32 = localValue32.List
    localValue42 = "Movement Speed"
    text12 = cmgOperation.movementSpeedList
    workingValue24 = tableHelper.movementSpeedIndex
    dataCollection7 = localValue22 or dataCollection7
    if not localValue22 then
      dataCollection7 = "A multiplier for how fast each movement should be"
    end
    dataCollection8 = {}
    workingValue31 = localValue12

    -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue13, localValue23, localValue33, localValue43) ===
    function text15(localValue13, localValue23, localValue33, localValue43)
      local workingValue21
      workingValue21 = localValue12
      if workingValue21 then
        tableHelper.movementSpeedIndex = localValue43
      end
    end
    localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15)
    localValue32 = RageUI
    localValue32 = localValue32.Checkbox
    localValue42 = "Fast Respawns"
    text12 = localValue22 or text12
    if not localValue22 then
      text12 = "Whether targets should respawn quickly or at their rate of one per second."
    end
    workingValue24 = tableHelper.fastRespawns
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: localValue13, localValue23, localValue33, localValue43) ===
    function dataCollection8(localValue13, localValue23, localValue33, localValue43)
      local workingValue21
      workingValue21 = localValue12
      if workingValue21 then
        tableHelper.fastRespawns = localValue43
      end
    end
    -- Beginner: Draw a RageUI checkbox.
    localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8)
    localValue32 = RageUI
    localValue32 = localValue32.Checkbox
    localValue42 = "Play Sounds"
    text12 = "Plays a sound whether you successfully kill the target."
    workingValue24 = dataCollection4
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: localValue13, localValue23, localValue33, localValue43) ===
    function dataCollection8(localValue13, localValue23, localValue33, localValue43)
      dataCollection4 = localValue43
    end
    localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8)
    localValue32 = RageUI
    localValue32 = localValue32.Button
    localValue42 = "~r~Reset Stats"
    text12 = "Resets your local statistics for this run."
    workingValue24 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: localValue13, localValue23, localValue33) ===
    function dataCollection7(localValue13, localValue23, localValue33)
      local localValue43, workingValue21
      if localValue33 then
        localValue43 = workingValue28
        if not localValue43 then
          localValue43 = workingValue5
          localValue43()
          localValue43 = notify
          workingValue21 = "~y~Statistics have been reset."
          -- Beginner: Show a notification to the player.
          localValue43(workingValue21)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue32(localValue42, text12, workingValue24, dataCollection7)
    localValue32 = workingValue28
    if not localValue32 then
      localValue32 = RageUI
      localValue32 = localValue32.ButtonWithStyle
      localValue42 = "~y~Select Weapon"
      text12 = "Select a weapon to test with."
      workingValue24 = {}
      workingValue24.RightLabel = "\226\134\146\226\134\146\226\134\146"
      dataCollection7 = true

      -- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: none) ===
      function dataCollection8()
        local localValue13, localValue23
      end
      workingValue31 = RMenu
      text15 = workingValue31
      workingValue31 = workingValue31.Get
      stateFlag = "aimtraining"
      text = "weapons"
      workingValue31, text15, stateFlag, text = workingValue31(text15, stateFlag, text)
      localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15, stateFlag, text)
      localValue32 = RageUI
      localValue32 = localValue32.ButtonWithStyle
      localValue42 = "~g~View Challenges"
      text12 = "View challenges you can compete in. These are recorded and can be viewed against other players."
      workingValue24 = {}
      workingValue24.RightLabel = "\226\134\146\226\134\146\226\134\146"
      dataCollection7 = true

      -- === HELPER FUNCTION (decompiler name: dataCollection8; parameters: none) ===
      function dataCollection8()
        local localValue13, localValue23
      end
      workingValue31 = RMenu
      text15 = workingValue31
      workingValue31 = workingValue31.Get
      stateFlag = "aimtraining"
      text = "challenges"
      workingValue31, text15, stateFlag, text = workingValue31(text15, stateFlag, text)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue32(localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15, stateFlag, text)
    else
      localValue32 = RageUI
      localValue32 = localValue32.Button
      localValue42 = "~r~Stop Challenge"
      text12 = "Stops the challenge immediately. You will not receive any score."
      workingValue24 = true

      -- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: localValue13, localValue23, localValue33) ===
      function dataCollection7(localValue13, localValue23, localValue33)
        local localValue43, workingValue21, stateFlag11
        if localValue33 then
          workingValue28.isEnding = true
          localValue43 = TriggerServerEvent
          workingValue21 = "302b46f2b0"
          stateFlag11 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "302b46f2b0".
          localValue43(workingValue21, stateFlag11)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      localValue32(localValue42, text12, workingValue24, dataCollection7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
  function createVector32()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "aimtraining"
  localValue5 = "weapons"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
  function workingValue23()
    local localValue12, localValue22, localValue32, localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15, stateFlag, text
    localValue12 = pairs
    localValue22 = cmgOperation.availableWeapons
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
    for text12, workingValue24 in localValue12, localValue22, localValue32, localValue42 do
      dataCollection7 = cmgOperation2.weapons
      dataCollection7 = dataCollection7[workingValue24]
      if dataCollection7 then
        dataCollection8 = RageUI
        dataCollection8 = dataCollection8.Button
        workingValue31 = dataCollection7.name
        text15 = ""
        stateFlag = true

        -- === HELPER FUNCTION (decompiler name: text; parameters: localValue13, localValue23, localValue33) ===
        function text(localValue13, localValue23, localValue33)
          local localValue43, workingValue21, stateFlag11
          if localValue33 then
            localValue43 = TriggerServerEvent
            workingValue21 = "c6c2102caf"
            stateFlag11 = workingValue24
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c6c2102caf".
            localValue43(workingValue21, stateFlag11)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        dataCollection8(workingValue31, text15, stateFlag, text)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
  function createVector32()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "aimtraining"
  localValue5 = "challenges"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
  function workingValue23()
    local localValue12, localValue22, localValue32, localValue42, text12, workingValue24, dataCollection7, dataCollection8, workingValue31, text15, stateFlag, text, workingValue2, text2, text3
    localValue12 = pairs
    localValue22 = cmgOperation.challenges
    localValue12, localValue22, localValue32, localValue42 = localValue12(localValue22)
    for text12 in localValue12, localValue22, localValue32, localValue42 do
      workingValue24 = RageUI
      workingValue24 = workingValue24.ButtonWithStyle
      dataCollection7 = text12
      dataCollection8 = ""
      workingValue31 = {}
      workingValue31.RightLabel = "\226\134\146\226\134\146\226\134\146"
      text15 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue13, localValue23, localValue33) ===
      function stateFlag(localValue13, localValue23, localValue33)
        local localValue43
        if localValue33 then
          localValue43 = text12
          workingValue22 = localValue43
        end
      end
      text = RMenu
      workingValue2 = text
      text = text.Get
      text2 = "aimtraining"
      text3 = "challenge"
      text, workingValue2, text2, text3 = text(workingValue2, text2, text3)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue24(dataCollection7, dataCollection8, workingValue31, text15, stateFlag, text, workingValue2, text2, text3)
    end
  end

  -- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
  function createVector32()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "aimtraining"
  localValue5 = "challenge"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
  function workingValue23()
    local localValue12, localValue22, localValue32, localValue42, text12, workingValue24
    localValue12 = cmgOperation.challenges
    localValue22 = workingValue22
    localValue12 = localValue12[localValue22]
    localValue22 = assert
    localValue32 = localValue12
    localValue22(localValue32)
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = string
    localValue32 = localValue32.format
    localValue42 = "~y~%s"
    text12 = workingValue22
    localValue32, localValue42, text12, workingValue24 = localValue32(localValue42, text12)
    localValue22(localValue32, localValue42, text12, workingValue24)
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = string
    localValue32 = localValue32.format
    localValue42 = "Num Targets: %s"
    text12 = localValue12.numTargets
    localValue32, localValue42, text12, workingValue24 = localValue32(localValue42, text12)
    localValue22(localValue32, localValue42, text12, workingValue24)
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = string
    localValue32 = localValue32.format
    localValue42 = "Target Duration: %s seconds"
    text12 = math
    text12 = text12.floor
    workingValue24 = localValue12.targetDurationMsec
    workingValue24 = workingValue24 / 1000
    text12, workingValue24 = text12(workingValue24)
    localValue32, localValue42, text12, workingValue24 = localValue32(localValue42, text12, workingValue24)
    localValue22(localValue32, localValue42, text12, workingValue24)
    localValue22 = RageUI
    localValue22 = localValue22.Separator
    localValue32 = string
    localValue32 = localValue32.format
    localValue42 = "Challenge Time: %s seconds"
    text12 = math
    text12 = text12.floor
    workingValue24 = localValue12.timeToCompleteMsec
    workingValue24 = workingValue24 / 1000
    text12, workingValue24 = text12(workingValue24)
    localValue32, localValue42, text12, workingValue24 = localValue32(localValue42, text12, workingValue24)
    localValue22(localValue32, localValue42, text12, workingValue24)
    localValue22 = RageUI
    localValue22 = localValue22.Button
    localValue32 = "~g~Start Challenge"
    localValue42 = localValue12.description
    text12 = true

    -- === HELPER FUNCTION (decompiler name: workingValue24; parameters: localValue13, localValue23, localValue33) ===
    function workingValue24(localValue13, localValue23, localValue33)
      local localValue43, workingValue21, stateFlag11
      if localValue33 then
        localValue43 = TriggerServerEvent
        workingValue21 = "9a918b808a"
        stateFlag11 = workingValue22
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9a918b808a".
        localValue43(workingValue21, stateFlag11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue22(localValue32, localValue42, text12, workingValue24)
  end

  -- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
  function createVector32()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32)
end
workingValue8(text4, text5, rageUiOperation, text6)

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2
  localValue1 = GetInteriorFromEntity
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  -- Beginner: result below is interiorId.
  localValue1 = localValue1(localValue2)
  if 0 == localValue1 then
    localValue1 = TriggerServerEvent
    localValue2 = "9d2ccf39a9"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9d2ccf39a9".
    localValue1(localValue2)
    localValue1 = false
    return localValue1
  end
  localValue1 = true
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue23
  localValue2 = cmgOperation.distanceList
  localValue3 = tableHelper.distanceIndex
  localValue2 = localValue2[localValue3]
  if "Random" == localValue2 then
    localValue3 = cmgOperation.distanceList
    localValue4 = math
    localValue4 = localValue4.random
    localValue5 = 1
    workingValue23 = cmgOperation.distanceList
    workingValue23 = #workingValue23
    workingValue23 = workingValue23 - 1
    localValue4 = localValue4(localValue5, workingValue23)
    localValue2 = localValue3[localValue4]
  end
  localValue3 = localValue1.zones
  localValue3 = localValue3[localValue2]
  localValue4 = localValue3.min
  localValue5 = localValue3.max
  return localValue4, localValue5
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32
  localValue3 = math
  localValue3 = localValue3.floor
  localValue4 = localValue2.x
  localValue5 = localValue1.x
  localValue4 = localValue4 - localValue5
  localValue4 = localValue4 * 10.0
  localValue3 = localValue3(localValue4)
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = localValue2.y
  workingValue23 = localValue1.y
  localValue5 = localValue5 - workingValue23
  localValue5 = localValue5 * 10.0
  localValue4 = localValue4(localValue5)
  localValue5 = math
  localValue5 = localValue5.random
  workingValue23 = 1
  createVector32 = localValue3
  localValue5 = localValue5(workingValue23, createVector32)
  workingValue23 = math
  workingValue23 = workingValue23.random
  createVector32 = 1
  workingValue29 = localValue4
  workingValue23 = workingValue23(createVector32, workingValue29)
  createVector32 = vector3
  workingValue29 = localValue1.x
  workingValue30 = localValue5 / 10.0
  workingValue29 = workingValue29 + workingValue30
  workingValue30 = localValue1.y
  workingValue32 = workingValue23 / 10.0
  workingValue30 = workingValue30 + workingValue32
  workingValue32 = localValue1.z
  return createVector32(workingValue29, workingValue30, workingValue32)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30
  localValue2 = pairs
  localValue3 = dataCollection9
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for workingValue23 in localValue2, localValue3, localValue4, localValue5 do
    createVector32 = GetEntityCoords
    workingValue29 = workingValue23
    workingValue30 = true
    -- Beginner: result below is entityCoords.
    createVector32 = createVector32(workingValue29, workingValue30)
    createVector32 = createVector32 - localValue1
    createVector32 = #createVector32
    workingValue29 = 0.8
    if createVector32 < workingValue29 then
      createVector32 = true
      return createVector32
    end
  end
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2, localValue3) ===
function text6(localValue1, localValue2, localValue3)
  local localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3
  if localValue3 then
    localValue4 = localValue3.startTime
    if not localValue4 then
      return
    end
    localValue4 = localValue3.numSpawned
    localValue5 = localValue3.numTargets
    if localValue4 >= localValue5 then
      return
    end
  end
  localValue4 = table
  localValue4 = localValue4.count
  localValue5 = dataCollection9
  -- Beginner: result below is count.
  localValue4 = localValue4(localValue5)
  localValue5 = tableHelper.numTargetsCount
  if localValue4 > localValue5 then
    localValue5 = table
    localValue5 = localValue5.keyat
    workingValue23 = dataCollection9
    createVector32 = 1
    localValue5 = localValue5(workingValue23, createVector32)
    workingValue23 = DeleteEntity
    createVector32 = localValue5
    -- Beginner: Delete a GTA entity.
    workingValue23(createVector32)
    workingValue23 = dataCollection9
    workingValue23[localValue5] = nil
  end
  localValue5 = tableHelper.numTargetsCount
  if localValue4 == localValue5 then
    return
  end
  localValue5 = tableHelper.fastRespawns
  if localValue5 then
    localValue5 = 250
    if localValue5 then
      goto continueAtStep40
    end
  end
  localValue5 = 1000
  ::continueAtStep40::
  workingValue23 = number
  workingValue23 = localValue1 - workingValue23
  if not (localValue5 > workingValue23) then
    workingValue23 = number24
    workingValue23 = localValue1 - workingValue23
    if not (localValue5 > workingValue23) then
      goto continueAtStep51
    end
  end
  return
  ::continueAtStep51::
  workingValue23 = math
  workingValue23 = workingValue23.random
  createVector32 = 1
  workingValue29 = 5
  workingValue23 = workingValue23(createVector32, workingValue29)
  if workingValue23 <= 4 then
    workingValue23 = 1885233650
    if workingValue23 then
      goto continueAtStep62
    end
  end
  workingValue23 = -1667301416
  ::continueAtStep62::
  createVector32 = CMG
  createVector32 = createVector32.loadModel
  workingValue29 = workingValue23
  -- Beginner: Request/load a GTA model before spawning or applying it.
  createVector32(workingValue29)
  createVector32 = text4
  workingValue29 = localValue2
  createVector32, workingValue29 = createVector32(workingValue29)
  workingValue30 = text5
  workingValue32 = createVector32
  number2 = workingValue29
  workingValue30 = workingValue30(workingValue32, number2)
  workingValue32 = 1
  number2 = 10
  number4 = 1
  for workingValue = workingValue32, number2, number4 do
    workingValue3 = rageUiOperation
    mathHelper = workingValue30
    workingValue3 = workingValue3(mathHelper)
    if workingValue3 then
      workingValue3 = text5
      mathHelper = createVector32
      number8 = workingValue29
      workingValue3 = workingValue3(mathHelper, number8)
      workingValue30 = workingValue3
    end
  end
  workingValue32 = CreatePed
  number2 = 0
  number4 = workingValue23
  workingValue = workingValue30.x
  workingValue3 = workingValue30.y
  mathHelper = workingValue30.z
  number8 = localValue2.targetForwardHeading
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: result below is pedEntity.
  workingValue32 = workingValue32(number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3)
  number2 = SetEntityMaxHealth
  number4 = workingValue32
  workingValue = cmgOperation.fakeEntityHealth
  number2(number4, workingValue)
  number2 = SetEntityHealth
  number4 = workingValue32
  workingValue = cmgOperation.fakeEntityHealth
  number2(number4, workingValue)
  number2 = SetBlockingOfNonTemporaryEvents
  number4 = workingValue32
  workingValue = true
  number2(number4, workingValue)
  number2 = SetPedCanRagdoll
  number4 = workingValue32
  workingValue = false
  number2(number4, workingValue)
  number2 = GetEntityMatrix
  number4 = workingValue32
  number2, number4 = number2(number4)
  workingValue = cmgOperation.movementsList
  workingValue3 = tableHelper.movementsIndex
  workingValue = workingValue[workingValue3]
  if "Random" == workingValue then
    workingValue3 = cmgOperation.movementsList
    mathHelper = math
    mathHelper = mathHelper.random
    number8 = 1
    stateFlag2 = cmgOperation.movementsList
    stateFlag2 = #stateFlag2
    stateFlag2 = stateFlag2 - 1
    mathHelper = mathHelper(number8, stateFlag2)
    workingValue = workingValue3[mathHelper]
  end
  workingValue3 = dataCollection9
  mathHelper = {}
  mathHelper.fowardVector = number2
  mathHelper.rightVector = number4
  mathHelper.movementType = workingValue
  mathHelper.isReversed = false
  mathHelper.createdTime = localValue1
  workingValue3[workingValue32] = mathHelper
  number = localValue1
  if localValue3 then
    workingValue3 = localValue3.numSpawned
    workingValue3 = workingValue3 + 1
    localValue3.numSpawned = workingValue3
  end
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29
  localValue2 = pairs
  localValue3 = dataCollection9
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for workingValue23 in localValue2, localValue3, localValue4, localValue5 do
    createVector32 = GetInteriorFromEntity
    workingValue29 = workingValue23
    -- Beginner: result below is interiorId.
    createVector32 = createVector32(workingValue29)
    if 0 == createVector32 then
      createVector32 = DeleteEntity
      workingValue29 = workingValue23
      -- Beginner: Delete a GTA entity.
      createVector32(workingValue29)
      createVector32 = dataCollection9
      createVector32[workingValue23] = nil
      if localValue1 then
        createVector32 = localValue1.numSpawned
        createVector32 = createVector32 - 1
        localValue1.numSpawned = createVector32
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3, number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18, stateFlag6, workingValue11, workingValue13, stateFlag7
  localValue4 = 10.0
  localValue5 = localValue3 * localValue4
  localValue5 = localValue2 + localValue5
  workingValue23 = cmgOperation3.drawLines
  if workingValue23 then
    workingValue23 = DrawLine
    createVector32 = localValue2.x
    workingValue29 = localValue2.y
    workingValue30 = localValue2.z
    workingValue32 = localValue5.x
    number2 = localValue5.y
    number4 = localValue5.z
    workingValue = 0
    workingValue3 = 255
    mathHelper = 0
    number8 = 255
    workingValue23(createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8)
  end
  workingValue23 = _ENV
  createVector32 = "StartExpensiveSynchronousShapeTestLosProbe"
  workingValue23 = workingValue23[createVector32]
  createVector32 = localValue2.x
  workingValue29 = localValue2.y
  workingValue30 = localValue2.z
  workingValue32 = localValue5.x
  number2 = localValue5.y
  number4 = localValue5.z
  workingValue = 17
  workingValue3 = localValue1
  mathHelper = 7
  workingValue23 = workingValue23(createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper)
  createVector32 = GetShapeTestResult
  workingValue29 = workingValue23
  createVector32, workingValue29, workingValue30 = createVector32(workingValue29)
  if workingValue29 then
    workingValue32 = cmgOperation3.drawLines
    if workingValue32 then
      workingValue32 = DrawMarker
      number2 = 28
      number4 = workingValue30.x
      workingValue = workingValue30.y
      workingValue3 = workingValue30.z
      mathHelper = 0.0
      number8 = 0.0
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      number9 = 0.0
      number10 = 0.0
      number11 = 0.1
      number12 = 0.1
      number13 = 0.1
      number14 = 0
      number15 = 0
      number16 = 255
      number17 = 255
      stateFlag4 = false
      stateFlag5 = false
      number18 = 2
      stateFlag6 = false
      workingValue11 = nil
      workingValue13 = nil
      stateFlag7 = false
      workingValue32(number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3, number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18, stateFlag6, workingValue11, workingValue13, stateFlag7)
    end
    workingValue32 = localValue2 - workingValue30
    workingValue32 = #workingValue32
    return workingValue32
  else
    return localValue4
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation3(localValue1, localValue2, localValue3)
  local localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32
  localValue4 = rageUiOperation2
  localValue5 = localValue1
  workingValue23 = localValue2
  createVector32 = localValue3
  localValue4 = localValue4(localValue5, workingValue23, createVector32)
  localValue5 = rageUiOperation2
  workingValue23 = localValue1
  createVector32 = vector3
  workingValue29 = 0.0
  workingValue30 = 0.0
  workingValue32 = 0.8
  createVector32 = createVector32(workingValue29, workingValue30, workingValue32)
  createVector32 = localValue2 - createVector32
  workingValue29 = localValue3
  localValue5 = localValue5(workingValue23, createVector32, workingValue29)
  workingValue23 = math
  workingValue23 = workingValue23.min
  createVector32 = localValue4
  workingValue29 = localValue5
  return workingValue23(createVector32, workingValue29)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function rageUiOperation4(localValue1, localValue2, localValue3, localValue4, localValue5)
  local workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2
  workingValue23 = localValue2.isReversed
  if workingValue23 then
    localValue3 = -localValue3
  end
  workingValue23 = GetEntityCoords
  createVector32 = localValue1
  workingValue29 = true
  -- Beginner: result below is entityCoords.
  workingValue23 = workingValue23(createVector32, workingValue29)
  createVector32 = rageUiOperation3
  workingValue29 = localValue1
  workingValue30 = workingValue23
  workingValue32 = localValue3
  createVector32 = createVector32(workingValue29, workingValue30, workingValue32)
  if createVector32 < 1.0 then
    workingValue29 = localValue2.isReversed
    workingValue29 = not workingValue29
    localValue2.isReversed = workingValue29
    return
  end
  workingValue29 = cmgOperation.movementSpeedValues
  workingValue30 = tableHelper.movementSpeedIndex
  workingValue29 = workingValue29[workingValue30]
  workingValue29 = localValue5 * workingValue29
  workingValue30 = localValue3 * workingValue29
  workingValue30 = workingValue30 * localValue4
  workingValue30 = workingValue23 + workingValue30
  workingValue32 = SetEntityCoordsNoOffset
  number2 = localValue1
  number4 = workingValue30.x
  workingValue = workingValue30.y
  workingValue3 = workingValue30.z
  mathHelper = true
  number8 = false
  stateFlag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workingValue32(number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2)
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1, localValue2, localValue3) ===
function text8(localValue1, localValue2, localValue3)
  local localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper
  localValue4 = RequestAnimDict
  localValue5 = cmgOperation.runAnim
  localValue5 = localValue5.dict
  localValue4(localValue5)
  localValue4 = IsEntityPlayingAnim
  localValue5 = localValue1
  workingValue23 = cmgOperation.runAnim
  workingValue23 = workingValue23.dict
  createVector32 = cmgOperation.runAnim
  createVector32 = createVector32.clip
  workingValue29 = 3
  localValue4 = localValue4(localValue5, workingValue23, createVector32, workingValue29)
  if not localValue4 then
    localValue4 = TaskPlayAnim
    localValue5 = localValue1
    workingValue23 = cmgOperation.runAnim
    workingValue23 = workingValue23.dict
    createVector32 = cmgOperation.runAnim
    createVector32 = createVector32.clip
    workingValue29 = 1.0
    workingValue30 = 1.0
    workingValue32 = -1
    number2 = 1
    number4 = 1.0
    workingValue = false
    workingValue3 = false
    mathHelper = false
    -- Beginner: Play an animation on a ped.
    localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper)
  end
  localValue4 = rageUiOperation4
  localValue5 = localValue1
  workingValue23 = localValue2
  createVector32 = localValue2.fowardVector
  workingValue29 = localValue3
  workingValue30 = 3.0
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30)
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1, localValue2, localValue3) ===
function text9(localValue1, localValue2, localValue3)
  local localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper
  localValue4 = RequestAnimDict
  localValue5 = cmgOperation.sideAnim
  localValue5 = localValue5.dict
  localValue4(localValue5)
  localValue4 = IsEntityPlayingAnim
  localValue5 = localValue1
  workingValue23 = cmgOperation.sideAnim
  workingValue23 = workingValue23.dict
  createVector32 = cmgOperation.sideAnim
  createVector32 = createVector32.clip
  workingValue29 = 3
  localValue4 = localValue4(localValue5, workingValue23, createVector32, workingValue29)
  if not localValue4 then
    localValue4 = TaskPlayAnim
    localValue5 = localValue1
    workingValue23 = cmgOperation.sideAnim
    workingValue23 = workingValue23.dict
    createVector32 = cmgOperation.sideAnim
    createVector32 = createVector32.clip
    workingValue29 = 1.0
    workingValue30 = 1.0
    workingValue32 = -1
    number2 = 1
    number4 = 1.0
    workingValue = false
    workingValue3 = false
    mathHelper = false
    -- Beginner: Play an animation on a ped.
    localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper)
  end
  localValue4 = rageUiOperation4
  localValue5 = localValue1
  workingValue23 = localValue2
  createVector32 = localValue2.rightVector
  workingValue29 = localValue3
  workingValue30 = 2.0
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2, localValue3) ===
function workingValue9(localValue1, localValue2, localValue3)
  local localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper
  localValue4 = localValue2.currentClipName
  if not localValue4 then
    localValue4 = cmgOperation.rollAnims
    localValue4 = localValue4.clips
    localValue5 = math
    localValue5 = localValue5.random
    workingValue23 = 1
    createVector32 = cmgOperation.rollAnims
    createVector32 = createVector32.clips
    createVector32 = #createVector32
    localValue5 = localValue5(workingValue23, createVector32)
    localValue4 = localValue4[localValue5]
    localValue2.currentClipName = localValue4
  end
  localValue4 = RequestAnimDict
  localValue5 = cmgOperation.rollAnims
  localValue5 = localValue5.dict
  localValue4(localValue5)
  localValue4 = IsEntityPlayingAnim
  localValue5 = localValue1
  workingValue23 = cmgOperation.rollAnims
  workingValue23 = workingValue23.dict
  createVector32 = localValue2.currentClipName
  workingValue29 = 3
  localValue4 = localValue4(localValue5, workingValue23, createVector32, workingValue29)
  if not localValue4 then
    localValue4 = TaskPlayAnim
    localValue5 = localValue1
    workingValue23 = cmgOperation.rollAnims
    workingValue23 = workingValue23.dict
    createVector32 = localValue2.currentClipName
    workingValue29 = 1.0
    workingValue30 = 1.0
    workingValue32 = -1
    number2 = 1
    number4 = 1.0
    workingValue = false
    workingValue3 = false
    mathHelper = false
    -- Beginner: Play an animation on a ped.
    localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper)
  end
  localValue4 = rageUiOperation4
  localValue5 = localValue1
  workingValue23 = localValue2
  createVector32 = localValue2.rightVector
  workingValue29 = localValue3
  workingValue30 = 1.5
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4
  localValue2 = GetFrameTime
  localValue2 = localValue2()
  localValue3 = pairs
  localValue4 = dataCollection9
  localValue3, localValue4, localValue5, workingValue23 = localValue3(localValue4)
  for createVector32, workingValue29 in localValue3, localValue4, localValue5, workingValue23 do
    workingValue30 = workingValue29.movementType
    if "Running" == workingValue30 then
      workingValue30 = text8
      workingValue32 = createVector32
      number2 = workingValue29
      number4 = localValue2
      workingValue30(workingValue32, number2, number4)
    else
      workingValue30 = workingValue29.movementType
      if "Side To Side" == workingValue30 then
        workingValue30 = text9
        workingValue32 = createVector32
        number2 = workingValue29
        number4 = localValue2
        workingValue30(workingValue32, number2, number4)
      else
        workingValue30 = workingValue29.movementType
        if "Rolling" == workingValue30 then
          workingValue30 = workingValue9
          workingValue32 = createVector32
          number2 = workingValue29
          number4 = localValue2
          workingValue30(workingValue32, number2, number4)
        end
      end
    end
    workingValue30 = SetEntityHeading
    workingValue32 = createVector32
    number2 = localValue1.targetForwardHeading
    -- Beginner: Change the direction an entity is facing.
    workingValue30(workingValue32, number2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3, number9
  localValue2 = pairs
  localValue3 = dataCollection9
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for workingValue23 in localValue2, localValue3, localValue4, localValue5 do
    createVector32 = HasEntityBeenDamagedByAnyPed
    workingValue29 = workingValue23
    createVector32 = createVector32(workingValue29)
    if createVector32 then
      createVector32 = GetPedLastDamageBone
      workingValue29 = workingValue23
      createVector32, workingValue29 = createVector32(workingValue29)
      if createVector32 then
        workingValue30 = 31086 == workingValue29
        workingValue32 = tableHelper.headshotsOnly
        if not workingValue32 or workingValue30 then
          workingValue32 = DeleteEntity
          number2 = workingValue23
          -- Beginner: Delete a GTA entity.
          workingValue32(number2)
          workingValue32 = number5
          workingValue32 = workingValue32 + 1
          number5 = workingValue32
          if workingValue30 then
            workingValue32 = number6
            workingValue32 = workingValue32 + 1
            number6 = workingValue32
          end
          workingValue32 = dataCollection4
          if workingValue32 then
            workingValue32 = PlaySoundFrontend
            number2 = -1
            number4 = "Enter_1st"
            workingValue = "GTAO_Magnate_Boss_Modes_Soundset"
            workingValue3 = false
            workingValue32(number2, number4, workingValue, workingValue3)
          end
          number24 = localValue1
          workingValue32 = dataCollection9
          workingValue32[workingValue23] = nil
          break
        end
        workingValue32 = SetEntityHealth
        number2 = workingValue23
        number4 = cmgOperation.fakeEntityHealth
        workingValue32(number2, number4)
        workingValue32 = ClearPedLastDamageBone
        number2 = workingValue23
        workingValue32(number2)
        workingValue32 = ClearPedDecorations
        number2 = workingValue23
        workingValue32(number2)
      end
      workingValue30 = dataCollection4
      if workingValue30 then
        workingValue30 = PlaySoundFrontend
        workingValue32 = -1
        number2 = "Enter_1st"
        number4 = "GTAO_Biker_Modes_Soundset"
        workingValue = false
        workingValue30(workingValue32, number2, number4, workingValue)
      end
      workingValue30 = ClearEntityLastDamageEntity
      workingValue32 = workingValue23
      workingValue30(workingValue32)
    end
    createVector32 = CMG
    createVector32 = createVector32.getPlayerCoords
    -- Beginner: result below is playerCoords.
    createVector32 = createVector32()
    workingValue29 = GetEntityCoords
    workingValue30 = workingValue23
    workingValue32 = true
    -- Beginner: result below is entityCoords.
    workingValue29 = workingValue29(workingValue30, workingValue32)
    workingValue30 = cmgOperation3.drawLines
    if workingValue30 then
      workingValue30 = DrawLine
      workingValue32 = createVector32.x
      number2 = createVector32.y
      number4 = createVector32.z
      workingValue = workingValue29.x
      workingValue3 = workingValue29.y
      mathHelper = workingValue29.z
      number8 = 255
      stateFlag2 = 0
      stateFlag3 = 0
      number9 = 255
      workingValue30(workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3, number9)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1, localValue2) ===
function workingValue14(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32
  localValue3 = pairs
  localValue4 = dataCollection9
  localValue3, localValue4, localValue5, workingValue23 = localValue3(localValue4)
  for createVector32, workingValue29 in localValue3, localValue4, localValue5, workingValue23 do
    workingValue30 = workingValue29.createdTime
    workingValue30 = localValue2 - workingValue30
    workingValue32 = localValue1.targetDurationMsec
    if workingValue30 > workingValue32 then
      workingValue30 = DeleteEntity
      workingValue32 = createVector32
      -- Beginner: Delete a GTA entity.
      workingValue30(workingValue32)
      workingValue30 = dataCollection9
      workingValue30[createVector32] = nil
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetSelectedPedWeapon
  localValue3 = localValue1
  -- Beginner: result below is weaponHash.
  localValue2 = localValue2(localValue3)
  localValue3 = GetAmmoInClip
  localValue4 = localValue1
  localValue5 = localValue2
  workingValue23 = 0
  localValue3, localValue4 = localValue3(localValue4, localValue5, workingValue23)
  if not localValue3 then
    return
  end
  localValue5 = number3
  if localValue4 > localValue5 then
    number3 = localValue4
  end
  localValue5 = number3
  localValue5 = localValue5 - localValue4
  if localValue5 > 0 then
    workingValue23 = number7
    workingValue23 = workingValue23 + localValue5
    number7 = workingValue23
    workingValue23 = GetMaxAmmoInClip
    createVector32 = localValue1
    workingValue29 = localValue2
    workingValue30 = false
    workingValue23 = workingValue23(createVector32, workingValue29, workingValue30)
    createVector32 = SetAmmoInClip
    workingValue29 = localValue1
    workingValue30 = localValue2
    workingValue32 = workingValue23
    createVector32(workingValue29, workingValue30, workingValue32)
    number3 = workingValue23
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2) ===
function workingValue16(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue23, createVector32
  localValue3 = localValue1.timeToCompleteMsec
  localValue4 = localValue1.startTime
  localValue4 = localValue2 - localValue4
  localValue3 = localValue3 - localValue4
  localValue4 = localValue1.numTargets
  localValue5 = localValue1.numSpawned
  localValue4 = localValue4 - localValue5
  localValue5 = localValue3
  workingValue23 = table
  workingValue23 = workingValue23.count
  createVector32 = dataCollection9
  -- Beginner: result below is count.
  workingValue23 = workingValue23(createVector32)
  workingValue23 = localValue4 + workingValue23
  return localValue5, workingValue23
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1, localValue2) ===
function workingValue17(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue
  localValue3 = CMG
  localValue3 = localValue3.createTimerBars
  -- Beginner: result below is timerBars.
  localValue3 = localValue3()
  localValue4 = number5
  if localValue1 then
    localValue4 = localValue1.numSpawned
  end
  if localValue4 > 0 then
    localValue5 = number6
    localValue5 = localValue4 - localValue5
    localValue5 = localValue5 / localValue4
    workingValue23 = 1.0
    localValue5 = workingValue23 - localValue5
    localValue5 = localValue5 * 100.0
    workingValue23 = localValue3.push
    createVector32 = "~y~Headshots"
    workingValue29 = string
    workingValue29 = workingValue29.format
    workingValue30 = "%s%%"
    workingValue32 = math
    workingValue32 = workingValue32.rounddp
    number2 = localValue5
    number4 = 1
    workingValue32, number2, number4, workingValue = workingValue32(number2, number4)
    workingValue29, workingValue30, workingValue32, number2, number4, workingValue = workingValue29(workingValue30, workingValue32, number2, number4, workingValue)
    workingValue23(createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue)
  else
    localValue5 = localValue3.push
    workingValue23 = "~y~Headshots"
    createVector32 = "N/A"
    localValue5(workingValue23, createVector32)
  end
  localValue5 = number7
  if localValue1 then
    workingValue23 = localValue1.numSpawned
    createVector32 = number5
    workingValue23 = workingValue23 - createVector32
    createVector32 = number7
    localValue5 = createVector32 + workingValue23
  end
  if localValue5 > 0 then
    workingValue23 = number5
    workingValue23 = localValue5 - workingValue23
    workingValue23 = workingValue23 / localValue5
    createVector32 = 1.0
    workingValue23 = createVector32 - workingValue23
    workingValue23 = workingValue23 * 100.0
    createVector32 = localValue3.push
    workingValue29 = "~y~Accuracy"
    workingValue30 = string
    workingValue30 = workingValue30.format
    workingValue32 = "%s%%"
    number2 = math
    number2 = number2.rounddp
    number4 = workingValue23
    workingValue = 1
    number2, number4, workingValue = number2(number4, workingValue)
    workingValue30, workingValue32, number2, number4, workingValue = workingValue30(workingValue32, number2, number4, workingValue)
    createVector32(workingValue29, workingValue30, workingValue32, number2, number4, workingValue)
  else
    workingValue23 = localValue3.push
    createVector32 = "~y~Accuracy"
    workingValue29 = "N/A"
    workingValue23(createVector32, workingValue29)
  end
  if localValue1 then
    workingValue23 = localValue1.startTime
    if workingValue23 then
      workingValue23 = workingValue16
      createVector32 = localValue1
      workingValue29 = localValue2
      workingValue23, createVector32 = workingValue23(createVector32, workingValue29)
      workingValue29 = 15000
      if workingValue23 < workingValue29 then
        workingValue29 = "~r~"
        if workingValue29 then
          goto continueAtStep92
        end
      end
      workingValue29 = "~y~"
      ::continueAtStep92::
      workingValue30 = localValue3.push
      workingValue32 = string
      workingValue32 = workingValue32.format
      number2 = "%sCountdown"
      number4 = workingValue29
      workingValue32 = workingValue32(number2, number4)
      number2 = tostring
      number4 = math
      number4 = number4.floor
      workingValue = workingValue23 / 1000
      number4, workingValue = number4(workingValue)
      number2, number4, workingValue = number2(number4, workingValue)
      workingValue30(workingValue32, number2, number4, workingValue)
      workingValue30 = localValue3.push
      workingValue32 = "~g~Targets Left"
      number2 = tostring
      number4 = createVector32
      number2, number4, workingValue = number2(number4)
      workingValue30(workingValue32, number2, number4, workingValue)
    end
  end
  workingValue23 = localValue3.draw
  workingValue23()
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
function workingValue18()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue23
  localValue1 = RageUI
  localValue1 = localValue1.IsAnyMenuOfTypeVisible
  localValue2 = "aimtraining"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue2 = stateFlag8
    if localValue2 then
      localValue2 = drawNativeNotification
      localValue3 = "Press ~INPUT_INTERACTION_MENU~ to bring up the menu again."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue2(localValue3)
    end
  end
  if not localValue1 then
    localValue2 = IsControlJustPressed
    localValue3 = 0
    localValue4 = 244
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      localValue2 = RageUI
      localValue2 = localValue2.Visible
      localValue3 = RMenu
      localValue4 = localValue3
      localValue3 = localValue3.Get
      localValue5 = "aimtraining"
      workingValue23 = "mainmenu"
      -- Beginner: result below is menu.
      localValue3 = localValue3(localValue4, localValue5, workingValue23)
      localValue4 = true
      localValue2(localValue3, localValue4)
    end
  end
  stateFlag8 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1, localValue2) ===
function workingValue19(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue
  localValue3 = localValue1.isEnding
  if not localValue3 then
    localValue3 = localValue1.startTime
    if localValue3 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue3 = workingValue16
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3, localValue4 = localValue3(localValue4, localValue5)
  if 0 == localValue4 then
    localValue1.isEnding = true
    localValue5 = GetHashKey
    workingValue23 = tostring
    createVector32 = localValue1.token
    workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue = workingValue23(createVector32)
    -- Beginner: result below is hash.
    localValue5 = localValue5(workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue)
    workingValue23 = localValue1.startTime
    workingValue23 = localValue2 - workingValue23
    createVector32 = TriggerServerEvent
    workingValue29 = "5e8e59e7f6"
    workingValue30 = localValue5
    workingValue32 = workingValue23
    number2 = number5
    number4 = number6
    workingValue = number7
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5e8e59e7f6".
    createVector32(workingValue29, workingValue30, workingValue32, number2, number4, workingValue)
  elseif 0 == localValue3 then
    workingValue28.isEnding = true
    localValue5 = TriggerServerEvent
    workingValue23 = "302b46f2b0"
    createVector32 = true
    localValue5(workingValue23, createVector32)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: none) ===
function workingValue20()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue23
  localValue1 = workingValue4
  if not localValue1 then
    return
  end
  localValue1 = cmgOperation.locations
  localValue2 = workingValue4
  localValue1 = localValue1[localValue2]
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = workingValue8
  localValue3 = localValue3()
  if not localValue3 then
    return
  end
  localValue3 = text6
  localValue4 = localValue2
  localValue5 = localValue1
  workingValue23 = workingValue28
  localValue3(localValue4, localValue5, workingValue23)
  localValue3 = text7
  localValue4 = workingValue28
  localValue3(localValue4)
  localValue3 = workingValue10
  localValue4 = localValue1
  localValue3(localValue4)
  localValue3 = workingValue12
  localValue4 = localValue2
  localValue3(localValue4)
  localValue3 = workingValue28
  if localValue3 then
    localValue3 = workingValue14
    localValue4 = workingValue28
    localValue5 = localValue2
    localValue3(localValue4, localValue5)
  end
  localValue3 = workingValue15
  localValue3()
  localValue3 = workingValue17
  localValue4 = workingValue28
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
  localValue3 = workingValue18
  localValue3()
  localValue3 = workingValue28
  if localValue3 then
    localValue3 = workingValue19
    localValue4 = workingValue28
    localValue5 = localValue2
    localValue3(localValue4, localValue5)
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
iterator = workingValue20
eventHandler = "Aim Training"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(iterator, eventHandler)
cmgOperation4 = AddEventHandler
iterator = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = workingValue6
    localValue2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation4(iterator, eventHandler)
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = CMG
  localValue2 = localValue2.getPlayerBucket
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    return
  end
  localValue2 = drawNativeNotification
  localValue3 = "Press ~INPUT_CONTEXT~ to enter aim training."
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue2(localValue3)
  localValue2 = IsControlJustPressed
  localValue3 = 0
  localValue4 = 51
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = TriggerServerEvent
    localValue3 = "8068631044"
    localValue4 = localValue1.locationName
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8068631044".
    localValue2(localValue3, localValue4)
  end
end
iterator = pairs
eventHandler = cmgOperation.locations
iterator, eventHandler, text10, dataCollection = iterator(eventHandler)
for dataCollection2, dataCollection3 in iterator, eventHandler, text10, dataCollection do
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.createArea
  stringHelper = string
  stringHelper = stringHelper.format
  text11 = "aimtraining_%s_enter"
  number19 = dataCollection2
  stringHelper = stringHelper(text11, number19)
  text11 = dataCollection3.enterPosition
  number19 = 1.5
  number20 = 2.0

  -- === HELPER FUNCTION: position() ===
  function position()
    local localValue1, localValue2
  end

  -- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
  function text13()
    local localValue1, localValue2
  end
  stateFlag9 = cmgOperation4
  dataCollection5 = {}
  dataCollection5.locationName = dataCollection2
  -- Beginner: Create an interaction area around a world position.
  cmgOperation5(stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5)
  cmgOperation5 = tCMG
  cmgOperation5 = cmgOperation5.addBlip
  stringHelper = dataCollection3.enterPosition
  stringHelper = stringHelper.x
  text11 = dataCollection3.enterPosition
  text11 = text11.y
  number19 = dataCollection3.enterPosition
  number19 = number19.z
  number20 = 390
  position = nil
  text13 = "Aim Training"
  -- Beginner: Create a minimap blip.
  cmgOperation5(stringHelper, text11, number19, number20, position, text13)
end
iterator = pairs
eventHandler = cmgOperation.lockedDoors
iterator, eventHandler, text10, dataCollection = iterator(eventHandler)
for dataCollection2, dataCollection3 in iterator, eventHandler, text10, dataCollection do
  cmgOperation5 = GetHashKey
  stringHelper = string
  stringHelper = stringHelper.format
  text11 = "aimtraining_%s"
  number19 = dataCollection2
  stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6 = stringHelper(text11, number19)
  -- Beginner: result below is hash.
  cmgOperation5 = cmgOperation5(stringHelper, text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6)
  stringHelper = AddDoorToSystem
  text11 = cmgOperation5
  number19 = dataCollection3.modelHash
  number20 = dataCollection3.position
  number20 = number20.x
  position = dataCollection3.position
  position = position.y
  text13 = dataCollection3.position
  text13 = text13.z
  stateFlag9 = false
  dataCollection5 = false
  createVector3 = false
  stringHelper(text11, number19, number20, position, text13, stateFlag9, dataCollection5, createVector3)
  stringHelper = DoorSystemSetDoorState
  text11 = cmgOperation5
  number19 = 4
  number20 = false
  position = false
  stringHelper(text11, number19, number20, position)
end

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local localValue1, localValue2, localValue3
  localValue1 = drawNativeNotification
  localValue2 = "Press ~INPUT_CONTEXT~ to enter leave training."
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
  localValue1 = IsControlJustPressed
  localValue2 = 0
  localValue3 = 51
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = TriggerServerEvent
    localValue2 = "9d2ccf39a9"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9d2ccf39a9".
    localValue1(localValue2)
  end
end
eventHandler = RegisterNetEvent
text10 = "671e105ec5"
-- Beginner: this function handles network event "671e105ec5".

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2
  localValue2 = workingValue4
  workingValue4 = localValue1
  localValue3 = workingValue4
  if localValue3 then
    localValue3 = cmgOperation.locations
    localValue4 = workingValue4
    localValue3 = localValue3[localValue4]
    localValue4 = tCMG
    localValue4 = localValue4.teleport
    localValue5 = localValue3.leavePosition
    localValue5 = localValue5.x
    workingValue23 = localValue3.leavePosition
    workingValue23 = workingValue23.y
    createVector32 = localValue3.leavePosition
    createVector32 = createVector32.z
    workingValue29 = false
    localValue4(localValue5, workingValue23, createVector32, workingValue29)
    localValue4 = RageUI
    localValue4 = localValue4.Visible
    localValue5 = RMenu
    workingValue23 = localValue5
    localValue5 = localValue5.Get
    createVector32 = "aimtraining"
    workingValue29 = "mainmenu"
    -- Beginner: result below is menu.
    localValue5 = localValue5(workingValue23, createVector32, workingValue29)
    workingValue23 = true
    localValue4(localValue5, workingValue23)
    localValue4 = CMG
    localValue4 = localValue4.createArea
    localValue5 = "aimtraining_leave"
    workingValue23 = localValue3.leavePosition
    createVector32 = 1.5
    workingValue29 = 2.0

    -- === HELPER FUNCTION (decompiler name: workingValue30; parameters: none) ===
    function workingValue30()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: workingValue32; parameters: none) ===
    function workingValue32()
      local localValue12, localValue22
    end
    number2 = iterator
    -- Beginner: Create an interaction area around a world position.
    localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2)
    localValue4 = CMG
    localValue4 = localValue4.setSwitchGunEnabled
    localValue5 = false
    localValue4(localValue5)
  else
    localValue3 = workingValue7
    localValue3()
    localValue3 = cmgOperation.locations
    localValue3 = localValue3[localValue2]
    localValue4 = tCMG
    localValue4 = localValue4.teleport
    localValue5 = localValue3.enterPosition
    localValue5 = localValue5.x
    workingValue23 = localValue3.enterPosition
    workingValue23 = workingValue23.y
    createVector32 = localValue3.enterPosition
    createVector32 = createVector32.z
    workingValue29 = false
    localValue4(localValue5, workingValue23, createVector32, workingValue29)
    localValue4 = RageUI
    localValue4 = localValue4.Visible
    localValue5 = RMenu
    workingValue23 = localValue5
    localValue5 = localValue5.Get
    createVector32 = "aimtraining"
    workingValue29 = "mainmenu"
    -- Beginner: result below is menu.
    localValue5 = localValue5(workingValue23, createVector32, workingValue29)
    workingValue23 = false
    localValue4(localValue5, workingValue23)
    localValue4 = tCMG
    localValue4 = localValue4.removeArea
    localValue5 = "aimtraining_leave"
    localValue4(localValue5)
    localValue4 = CMG
    localValue4 = localValue4.setSwitchGunEnabled
    localValue5 = true
    localValue4(localValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "671e105ec5".
eventHandler(text10, dataCollection)
eventHandler = CMG
eventHandler = eventHandler.registerDevMenuItems
text10 = "Aim Training"

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue23
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Debug Lines"
  localValue3 = "Whether to draw debug lines for the targets."
  localValue4 = cmgOperation3.drawLines
  localValue5 = {}

  -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue12, localValue22, localValue32, localValue42) ===
  function workingValue23(localValue12, localValue22, localValue32, localValue42)
    cmgOperation3.drawLines = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, workingValue23)
end
eventHandler(text10, dataCollection)
eventHandler = RegisterNetEvent
text10 = "9a918b808a"
-- Beginner: this function handles network event "9a918b808a".

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = workingValue7
  localValue3()
  localValue3 = table
  localValue3 = localValue3.copy
  localValue4 = cmgOperation.challenges
  localValue4 = localValue4[localValue1]
  localValue3 = localValue3(localValue4)
  workingValue28 = localValue3
  workingValue28.token = localValue2
  workingValue28.numSpawned = 0
  localValue3 = workingValue28.settings
  tableHelper = localValue3
  localValue3 = RageUI
  localValue3 = localValue3.CloseAll
  localValue3()
  localValue3 = CMG
  localValue3 = localValue3.showCountdownTimer
  localValue4 = 3
  localValue3(localValue4)
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  workingValue28.startTime = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9a918b808a".
eventHandler(text10, dataCollection)
eventHandler = RegisterNetEvent
text10 = "302b46f2b0"
-- Beginner: this function handles network event "302b46f2b0".

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1, localValue2) ===
function dataCollection(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = workingValue7
  localValue3()
  if localValue1 then
    localValue3 = notify
    localValue4 = "~r~Failed to complete challenge in time."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  elseif localValue2 then
    localValue3 = notify
    localValue4 = "~g~You succesfully completed the challenge!"
    localValue3(localValue4)
  else
    localValue3 = notify
    localValue4 = "~y~Challenge stopped by user."
    -- Beginner: Show a notification to the player.
    localValue3(localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "302b46f2b0".
eventHandler(text10, dataCollection)
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2
  localValue1 = workingValue4
  if localValue1 then
    localValue1 = true
    if localValue1 then
      goto continueAtStep8
    end
  end
  localValue1 = false
  ::continueAtStep8::
  return localValue1
end
eventHandler.isAimTraining = text10
eventHandler = 0
text10 = 0
dataCollection = {}
dataCollection2 = {}
dataCollection3 = {}
cmgOperation5 = 1

-- === HELPER FUNCTION: stringHelper(localValue1, localValue2) ===
function stringHelper(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = IsNamedRendertargetRegistered
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = RegisterNamedRendertarget
    localValue4 = localValue1
    localValue5 = false
    localValue3(localValue4, localValue5)
  end
  localValue3 = IsNamedRendertargetLinked
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = LinkNamedRendertarget
    localValue4 = localValue2
    localValue3(localValue4)
  end
  localValue3 = IsNamedRendertargetLinked
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = GetNamedRendertargetRenderId
    localValue4 = localValue1
    return localValue3(localValue4)
  else
    localValue3 = 0
    return localValue3
  end
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = cmgOperation.statsBoardModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue2(localValue3)
  localValue2 = CreateObject
  localValue3 = cmgOperation.statsBoardModel
  localValue4 = localValue1.position
  localValue4 = localValue4.x
  localValue5 = localValue1.position
  localValue5 = localValue5.y
  workingValue23 = localValue1.position
  workingValue23 = workingValue23.z
  createVector32 = false
  workingValue29 = false
  workingValue30 = false
  -- Beginner: result below is objectEntity.
  localValue2 = localValue2(localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30)
  eventHandler = localValue2
  localValue2 = SetModelAsNoLongerNeeded
  localValue3 = cmgOperation.statsBoardModel
  localValue2(localValue3)
  localValue2 = SetEntityHeading
  localValue3 = eventHandler
  localValue4 = localValue1.position
  localValue4 = localValue4.w
  -- Beginner: Change the direction an entity is facing.
  localValue2(localValue3, localValue4)
  localValue2 = SetEntityLodDist
  localValue3 = eventHandler
  localValue4 = 75
  localValue2(localValue3, localValue4)
  localValue2 = stringHelper
  localValue3 = "cmgtv9"
  localValue4 = cmgOperation.statsBoardModel
  localValue2 = localValue2(localValue3, localValue4)
  text10 = localValue2
  localValue2 = TriggerServerEvent
  localValue3 = "689c64f285"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "689c64f285".
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: number19; parameters: none) ===
function number19()
  local localValue1, localValue2
  localValue1 = DeleteEntity
  localValue2 = eventHandler
  -- Beginner: Delete a GTA entity.
  localValue1(localValue2)
  localValue1 = 0
  eventHandler = localValue1
  localValue1 = ReleaseNamedRendertarget
  localValue2 = "cmgtv9"
  localValue1(localValue2)
  localValue1 = 0
  text10 = localValue1
end
number20 = {}
position = {}
text13 = 255
stateFlag9 = 215
dataCollection5 = 0
position[1] = text13
position[2] = stateFlag9
position[3] = dataCollection5
text13 = {}
stateFlag9 = 192
dataCollection5 = 192
createVector3 = 192
text13[1] = stateFlag9
text13[2] = dataCollection5
text13[3] = createVector3
stateFlag9 = {}
dataCollection5 = 140
createVector3 = 120
number21 = 83
stateFlag9[1] = dataCollection5
stateFlag9[2] = createVector3
stateFlag9[3] = number21
number20[1] = position
number20[2] = text13
number20[3] = stateFlag9

-- === HELPER FUNCTION: position(localValue1) ===
function position(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3, number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18
  localValue2 = localValue1.distance
  if localValue2 > 50.0 then
    return
  end
  localValue2 = SetTextRenderId
  localValue3 = text10
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawOrder
  localValue3 = 4
  localValue2(localValue3)
  localValue2 = SetScriptGfxDrawBehindPausemenu
  localValue3 = true
  localValue2(localValue3)
  localValue2 = "Top Completed"
  localValue3 = dataCollection3
  localValue4 = cmgOperation5
  if 2 == localValue4 then
    localValue2 = "Top Headshots"
    localValue3 = dataCollection2
  else
    localValue4 = cmgOperation5
    if 3 == localValue4 then
      localValue2 = "Top Accuracy"
      localValue3 = dataCollection
    end
  end
  localValue4 = DrawAdvancedText
  localValue5 = 0.6
  workingValue23 = 0.0
  createVector32 = 0.005
  workingValue29 = 0.0028
  workingValue30 = 0.7
  workingValue32 = localValue2
  number2 = 248
  number4 = 246
  workingValue = 240
  workingValue3 = 200
  mathHelper = 4
  number8 = 0
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8)
  localValue4 = DrawAdvancedText
  localValue5 = 0.1
  workingValue23 = 0.17
  createVector32 = 0.005
  workingValue29 = 0.0028
  workingValue30 = 0.4
  workingValue32 = "Name"
  number2 = 248
  number4 = 246
  workingValue = 240
  workingValue3 = 255
  mathHelper = 4
  number8 = 1
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8)
  localValue4 = DrawAdvancedText
  localValue5 = 0.3
  workingValue23 = 0.17
  createVector32 = 0.005
  workingValue29 = 0.0028
  workingValue30 = 0.4
  workingValue32 = "Perm ID"
  number2 = 248
  number4 = 246
  workingValue = 240
  workingValue3 = 255
  mathHelper = 4
  number8 = 1
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8)
  localValue4 = DrawAdvancedText
  localValue5 = 0.5
  workingValue23 = 0.17
  createVector32 = 0.005
  workingValue29 = 0.0028
  workingValue30 = 0.4
  workingValue32 = "Challenge"
  number2 = 248
  number4 = 246
  workingValue = 240
  workingValue3 = 255
  mathHelper = 4
  number8 = 1
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8)
  localValue4 = DrawAdvancedText
  localValue5 = 0.9
  workingValue23 = 0.17
  createVector32 = 0.005
  workingValue29 = 0.0028
  workingValue30 = 0.4
  workingValue32 = "Percent"
  number2 = 248
  number4 = 246
  workingValue = 240
  workingValue3 = 255
  mathHelper = 4
  number8 = 1
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8)
  localValue4 = DrawRect
  localValue5 = 0.5
  workingValue23 = 0.26
  createVector32 = 0.95
  workingValue29 = 0.005
  workingValue30 = 248
  workingValue32 = 246
  number2 = 240
  number4 = 255
  localValue4(localValue5, workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4)
  localValue4 = 1
  localValue5 = pairs
  workingValue23 = localValue3
  localValue5, workingValue23, createVector32, workingValue29 = localValue5(workingValue23)
  for workingValue30, workingValue32 in localValue5, workingValue23, createVector32, workingValue29 do
    number2 = pairs
    number4 = workingValue32
    number2, number4, workingValue, workingValue3 = number2(number4)
    for mathHelper, number8 in number2, number4, workingValue, workingValue3 do
      stateFlag2 = number20
      stateFlag2 = stateFlag2[mathHelper]
      if stateFlag2 and number8 then
        stateFlag3 = DrawAdvancedText
        number9 = 0.1
        number10 = 0.07 * localValue4
        number10 = 0.205 + number10
        number11 = 0.005
        number12 = 0.0028
        number13 = 0.34
        number14 = number8[1]
        number15 = stateFlag2[1]
        number16 = stateFlag2[2]
        number17 = stateFlag2[3]
        stateFlag4 = 255
        stateFlag5 = 4
        number18 = 1
        stateFlag3(number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18)
        stateFlag3 = DrawAdvancedText
        number9 = 0.3
        number10 = 0.07 * localValue4
        number10 = 0.205 + number10
        number11 = 0.005
        number12 = 0.0028
        number13 = 0.35
        number14 = number8[2]
        number15 = stateFlag2[1]
        number16 = stateFlag2[2]
        number17 = stateFlag2[3]
        stateFlag4 = 255
        stateFlag5 = 4
        number18 = 1
        stateFlag3(number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18)
        stateFlag3 = DrawAdvancedText
        number9 = 0.5
        number10 = 0.07 * localValue4
        number10 = 0.205 + number10
        number11 = 0.005
        number12 = 0.0028
        number13 = 0.35
        number14 = number8[3]
        number15 = stateFlag2[1]
        number16 = stateFlag2[2]
        number17 = stateFlag2[3]
        stateFlag4 = 255
        stateFlag5 = 4
        number18 = 1
        stateFlag3(number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18)
        stateFlag3 = DrawAdvancedText
        number9 = 0.9
        number10 = 0.07 * localValue4
        number10 = 0.205 + number10
        number11 = 0.005
        number12 = 0.0028
        number13 = 0.35
        number14 = number8[4]
        number15 = stateFlag2[1]
        number16 = stateFlag2[2]
        number17 = stateFlag2[3]
        stateFlag4 = 255
        stateFlag5 = 4
        number18 = 1
        stateFlag3(number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18)
      end
      localValue4 = localValue4 + 1
    end
  end
  localValue5 = SetTextRenderId
  workingValue23 = GetDefaultScriptRendertargetRenderId
  workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3, number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18 = workingValue23()
  localValue5(workingValue23, createVector32, workingValue29, workingValue30, workingValue32, number2, number4, workingValue, workingValue3, mathHelper, number8, stateFlag2, stateFlag3, number9, number10, number11, number12, number13, number14, number15, number16, number17, stateFlag4, stateFlag5, number18)
  localValue5 = SetScriptGfxDrawBehindPausemenu
  workingValue23 = false
  localValue5(workingValue23)
  localValue5 = localValue1.distance
  workingValue23 = 2.5
  if localValue5 < workingValue23 then
    localValue5 = drawNativeNotification
    workingValue23 = "Press ~INPUT_CONTEXT~ to switch page"
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue5(workingValue23)
    localValue5 = IsControlJustPressed
    workingValue23 = 0
    createVector32 = 51
    localValue5 = localValue5(workingValue23, createVector32)
    if localValue5 then
      localValue5 = TriggerServerEvent
      workingValue23 = "908ae89bda"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "908ae89bda".
      localValue5(workingValue23)
    end
  end
end
text13 = pairs
stateFlag9 = cmgOperation.statsBoardLocations
text13, stateFlag9, dataCollection5, createVector3 = text13(stateFlag9)
for number21, stateFlag10 in text13, stateFlag9, dataCollection5, createVector3 do
  cmgOperation6 = CMG
  cmgOperation6 = cmgOperation6.createArea
  stringHelper2 = string
  stringHelper2 = stringHelper2.format
  text14 = "aimtraining_tv_%s"
  number22 = number21
  stringHelper2 = stringHelper2(text14, number22)
  text14 = stateFlag10.xyz
  number22 = 100.0
  number23 = 500.0
  workingValue25 = text11
  workingValue26 = number19
  workingValue27 = position
  dataCollection6 = {}
  dataCollection6.position = stateFlag10
  -- Beginner: Create an interaction area around a world position.
  cmgOperation6(stringHelper2, text14, number22, number23, workingValue25, workingValue26, workingValue27, dataCollection6)
end
text13 = AddEventHandler
stateFlag9 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1) ===
function dataCollection5(localValue1)
  local localValue2, localValue3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = eventHandler
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = eventHandler
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
text13(stateFlag9, dataCollection5)
text13 = RegisterNetEvent
stateFlag9 = "50ef81cac8"
-- Beginner: this function handles network event "50ef81cac8".

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1, localValue2, localValue3, localValue4) ===
function dataCollection5(localValue1, localValue2, localValue3, localValue4)
  dataCollection3 = localValue1
  dataCollection2 = localValue2
  dataCollection = localValue3
  cmgOperation5 = localValue4
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "50ef81cac8".
text13(stateFlag9, dataCollection5)
text13 = RegisterNetEvent
stateFlag9 = "908ae89bda"
-- Beginner: this function handles network event "908ae89bda".

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1) ===
function dataCollection5(localValue1)
  local localValue2
  cmgOperation5 = localValue1
end
text13(stateFlag9, dataCollection5)
-- Beginner: this function handles network event "908ae89bda".

-- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
function text13()
  local localValue1, localValue2
  localValue1 = drawNativeNotification
  localValue2 = "This is not a gun store, look elsewhere."
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
end
stateFlag9 = CMG
stateFlag9 = stateFlag9.createDynamicPed
dataCollection5 = -1782092083
createVector3 = vector3
number21 = 22.523078918457
stateFlag10 = -1105.4901123047
cmgOperation6 = 29.785400390625
createVector3 = createVector3(number21, stateFlag10, cmgOperation6)
number21 = 161.57479858398
stateFlag10 = true
cmgOperation6 = nil
stringHelper2 = nil
text14 = 25.0
number22 = nil

-- === HELPER FUNCTION (decompiler name: number23; parameters: none) ===
function number23()
  local localValue1, localValue2
end
stateFlag9(dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14, number22, number23)
stateFlag9 = CMG
stateFlag9 = stateFlag9.createArea
dataCollection5 = "aim_training_goaway"
createVector3 = vector3
number21 = 21.84729385376
stateFlag10 = -1106.693359375
cmgOperation6 = 29.796985626221
createVector3 = createVector3(number21, stateFlag10, cmgOperation6)
number21 = 2.0
stateFlag10 = 2.0

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2
end

-- === HELPER FUNCTION: stringHelper2() ===
function stringHelper2()
  local localValue1, localValue2
end
text14 = text13
-- Beginner: Create an interaction area around a world position.
stateFlag9(dataCollection5, createVector3, number21, stateFlag10, cmgOperation6, stringHelper2, text14)
