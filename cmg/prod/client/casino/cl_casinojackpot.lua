--[[
    LEVEL 1 BEGINNER GUIDE — Casinojackpot
    ===========================================

    File: cmg/prod/client/casino/cl_casinojackpot.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinojackpot feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 52
      * Background threads: 0
      * Always-running loops: 15
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
local stateFlag, number22, number38, stateFlag5, dataCollection4, number42, stateFlag8, stateFlag9, stateFlag10, number45, stateFlag2, number8, number10, stateFlag3, workingValue6, number14, number16, number18, stateFlag4, workingValue9, dataCollection, createVector3, number32, number34, number36, text2, rageUiOperation2, text3, text4, rageUiOperation3, rageUiOperation4, text5, text6, workingValue19, workingValue20, eventHandler, cmgOperation, cmgOperation2, text7, text8, workingValue22, number40, number41, workingValue23, workingValue24, workingValue25, dataCollection3
stateFlag = false
number22 = -1
number38 = 1000
stateFlag5 = false
dataCollection4 = {}
number42 = -1
stateFlag8 = false
stateFlag9 = false
stateFlag10 = false
number45 = 0.5
stateFlag2 = false
number8 = 10
number10 = 60
stateFlag3 = false
workingValue6 = nil
number14 = 0.0
number16 = 0
number18 = 0
stateFlag4 = true

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3, localValue4, localValue5, stateFlag7
  localValue3 = 0
  localValue4 = IsNamedRendertargetRegistered
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = RegisterNamedRendertarget
    localValue5 = localValue1
    stateFlag7 = false
    localValue4(localValue5, stateFlag7)
  end
  localValue4 = IsNamedRendertargetLinked
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = LinkNamedRendertarget
    localValue5 = localValue2
    localValue4(localValue5)
  end
  localValue4 = IsNamedRendertargetRegistered
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = GetNamedRendertargetRenderId
    localValue5 = localValue1
    localValue4 = localValue4(localValue5)
    localValue3 = localValue4
  end
  return localValue3
end
dataCollection = {}
createVector3 = vector3
number32 = 971.588623
number34 = 69.243698
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[0] = createVector3
createVector3 = vector3
number32 = 972.082214
number34 = 70.033615
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[1] = createVector3
createVector3 = vector3
number32 = 973.702393
number34 = 67.288445
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[2] = createVector3
createVector3 = vector3
number32 = 974.191589
number34 = 68.071304
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[3] = createVector3
createVector3 = vector3
number32 = 973.873169
number34 = 72.899689
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[4] = createVector3
createVector3 = vector3
number32 = 974.376038
number34 = 73.704498
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[5] = createVector3
createVector3 = vector3
number32 = 974.922729
number34 = 74.579437
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[6] = createVector3
createVector3 = vector3
number32 = 975.405212
number34 = 75.351601
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[7] = createVector3
createVector3 = vector3
number32 = 977.19397
number34 = 78.214249
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[8] = createVector3
createVector3 = vector3
number32 = 977.691406
number34 = 79.010315
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[9] = createVector3
createVector3 = vector3
number32 = 980.437195
number34 = 77.914375
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[10] = createVector3
createVector3 = vector3
number32 = 979.960876
number34 = 77.152161
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[11] = createVector3
createVector3 = vector3
number32 = 977.89032
number34 = 73.838562
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[12] = createVector3
createVector3 = vector3
number32 = 977.373535
number34 = 73.011513
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[13] = createVector3
createVector3 = vector3
number32 = 976.850952
number34 = 72.175217
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[14] = createVector3
createVector3 = vector3
number32 = 976.356201
number34 = 71.383453
number36 = 79.992676
createVector3 = createVector3(number32, number34, number36)
dataCollection[15] = createVector3
createVector3 = vector3
number32 = 973.32196044922
number34 = 75.440765380859
number36 = 81.000602722168
createVector3 = createVector3(number32, number34, number36)
number32 = {}
number34 = RMenu
number34 = number34.Add
number36 = "cmgjackpot"
text2 = "instructions"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text3 = ""
text4 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text5 = "cmg_jackpotui"
text6 = "cmg_jackpotui"
rageUiOperation2, text3, text4, rageUiOperation3, rageUiOperation4, text5, text6, workingValue19, workingValue20, eventHandler, cmgOperation, cmgOperation2, text7, text8, workingValue22, number40, number41, workingValue23, workingValue24, workingValue25, dataCollection3 = rageUiOperation2(text3, text4, rageUiOperation3, rageUiOperation4, text5, text6)
number34(number36, text2, rageUiOperation2, text3, text4, rageUiOperation3, rageUiOperation4, text5, text6, workingValue19, workingValue20, eventHandler, cmgOperation, cmgOperation2, text7, text8, workingValue22, number40, number41, workingValue23, workingValue24, workingValue25, dataCollection3)
number34 = RMenu
number36 = number34
number34 = number34.Get
text2 = "cmgjackpot"
rageUiOperation2 = "instructions"
-- Beginner: result below is menu.
number34 = number34(number36, text2, rageUiOperation2)
number36 = number34
number34 = number34.SetSubtitle
text2 = "~b~JACKPOT"
number34(number36, text2)
number34 = RageUI
number34 = number34.CreateWhile
number36 = 1.0
text2 = RMenu
rageUiOperation2 = text2
text2 = text2.Get
text3 = "cmgjackpot"
text4 = "instructions"
-- Beginner: result below is menu.
text2 = text2(rageUiOperation2, text3, text4)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgjackpot"
  localValue5 = "instructions"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag7; parameters: none) ===
  function stateFlag7()
    local rageUiOperation, text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.FakeButtonWithStyle
    text = ""
    number39 = [[
Play Jackpot for a chance to win BIG!

Buy tickets to have a chance at winning a large pot of chips! Your % chance of winning is based on how many tickets have been purchased in that round.
1 tickett  = 1 chip.]]
    dataCollection2 = {}
    dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: number43; parameters: localValue12, localValue22, localValue32) ===
    function number43(localValue12, localValue22, localValue32)
    end
    mathHelper = RMenu
    workingValue27 = mathHelper
    mathHelper = mathHelper.Get
    text9 = "cmgjackpot"
    text10 = "instructions"
    mathHelper, workingValue27, text9, text10 = mathHelper(workingValue27, text9, text10)
    rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
  function workingValue26()
    local rageUiOperation, text
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26)
end
number34(number36, text2, rageUiOperation2, text3)
number34 = Citizen
number34 = number34.CreateThread

-- === HELPER FUNCTION (decompiler name: number36; parameters: none) ===
function number36()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26, number44
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isInsideDiamondCasino
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = 1000
      number38 = localValue1
      localValue1 = -1
      number22 = localValue1
      localValue1 = GetEntityCoords
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26, number44 = localValue2()
      -- Beginner: result below is entityCoords.
      localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26, number44)
      localValue2 = 0
      localValue3 = 15
      localValue4 = 1
      for localValue5 = localValue2, localValue3, localValue4 do
        stateFlag7 = dataCollection
        stateFlag7 = stateFlag7[localValue5]
        workingValue26 = localValue1 - stateFlag7
        workingValue26 = #workingValue26
        number44 = number38
        if workingValue26 < number44 then
          number38 = workingValue26
          number22 = localValue5
        end
      end
    end
    localValue1 = Wait
    localValue2 = 100
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
number34(number36)
number34 = false

-- === HELPER FUNCTION (decompiler name: number36; parameters: localValue1) ===
function number36(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag7
  localValue2 = RageUI
  localValue2 = localValue2.CloseAll
  localValue2()
  localValue2 = number22
  if -1 ~= localValue2 then
    localValue2 = RageUI
    localValue2 = localValue2.Visible
    localValue3 = RMenu
    localValue4 = localValue3
    localValue3 = localValue3.Get
    localValue5 = "cmgjackpot"
    stateFlag7 = "instructions"
    -- Beginner: result below is menu.
    localValue3 = localValue3(localValue4, localValue5, stateFlag7)
    localValue4 = localValue1
    localValue2(localValue3, localValue4)
  end
end
text2 = Citizen
text2 = text2.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  while true do
    localValue1 = stateFlag
    if not localValue1 then
      localValue1 = number22
      if nil ~= localValue1 then
        localValue1 = number38
        if localValue1 < 2 then
          localValue1 = stateFlag5
          if not localValue1 then
            localValue1 = print
            localValue2 = "closestChair"
            localValue3 = number22
            localValue1(localValue2, localValue3)
            localValue1 = print
            localValue2 = "jackpotTableData"
            localValue3 = dump
            localValue4 = dataCollection4
            localValue3, localValue4, localValue5 = localValue3(localValue4)
            localValue1(localValue2, localValue3, localValue4, localValue5)
            localValue2 = number22
            localValue1 = dataCollection4
            localValue1 = localValue1[localValue2]
            if false == localValue1 then
              localValue1 = drawNativeNotification
              localValue2 = "Press ~INPUT_PICKUP~ to play Jackpot!"
              -- Beginner: Show a GTA-style notification/help prompt.
              localValue1(localValue2)
            else
              localValue1 = drawNativeNotification
              localValue2 = "This seat is taken."
              localValue1(localValue2)
            end
            localValue1 = number36
            localValue2 = true
            localValue1(localValue2)
            localValue1 = number34
            if not localValue1 then
              localValue1 = true
              number34 = localValue1
              localValue1 = PlaySoundFrontend
              localValue2 = -1
              localValue3 = "DLC_VW_RULES"
              localValue4 = "dlc_vw_table_games_frontend_sounds"
              localValue5 = true
              localValue1(localValue2, localValue3, localValue4, localValue5)
              localValue1 = PlaySoundFrontend
              localValue2 = -1
              localValue3 = "DLC_VW_WIN_CHIPS"
              localValue4 = "dlc_vw_table_games_frontend_sounds"
              localValue5 = true
              localValue1(localValue2, localValue3, localValue4, localValue5)
            end
            localValue1 = number22
            while true do
              localValue2 = number22
              if localValue1 ~= localValue2 then
                break
              end
              localValue2 = number38
              if not (localValue2 < 2) then
                break
              end
              localValue2 = Wait
              localValue3 = 0
              localValue2(localValue3)
            end
            localValue2 = number36
            localValue3 = false
            localValue2(localValue3)
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text2(rageUiOperation2)
text2 = RegisterNetEvent
rageUiOperation2 = "f16cebea30"
-- Beginner: this function handles network event "f16cebea30".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  number8 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f16cebea30".
text2(rageUiOperation2, text3)
text2 = RegisterNetEvent
rageUiOperation2 = "05fba39b23"
-- Beginner: this function handles network event "05fba39b23".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  number18 = localValue1
end
text2(rageUiOperation2, text3)
-- Beginner: this function handles network event "05fba39b23".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = GetEntityModel
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  -- Beginner: result below is modelHash.
  localValue1 = localValue1(localValue2)
  if 1885233650 == localValue1 then
    localValue2 = "anim_casino_a@amb@casino@games@insidetrack@male"
    return localValue2
  else
    localValue2 = "anim_casino_a@amb@casino@games@insidetrack@female"
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2
  localValue1 = -135.0
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2, localValue3) ===
function text4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, stateFlag7
  if localValue2 == localValue3 then
    return localValue2
  end
  localValue4 = localValue3 - localValue2
  localValue5 = math
  localValue5 = localValue5.floor
  stateFlag7 = localValue1 - localValue2
  stateFlag7 = stateFlag7 / localValue4
  stateFlag7 = stateFlag7 * localValue4
  localValue5 = localValue5(stateFlag7)
  localValue1 = localValue1 - localValue5
  if localValue2 > localValue1 then
    localValue1 = localValue1 + localValue4
  end
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26, number44
  localValue2 = rageUiOperation2
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = GetEntityCoords
  localValue4 = CMG
  localValue4 = localValue4.getPlayerPed
  localValue4, localValue5, stateFlag7, workingValue26, number44 = localValue4()
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4, localValue5, stateFlag7, workingValue26, number44)
  localValue4 = GetHeadingFromVector_2d
  localValue5 = localValue3.x
  stateFlag7 = localValue2.x
  localValue5 = localValue5 - stateFlag7
  stateFlag7 = localValue3.y
  workingValue26 = localValue2.y
  stateFlag7 = stateFlag7 - workingValue26
  localValue4 = localValue4(localValue5, stateFlag7)
  localValue5 = text3
  localValue5 = localValue5()
  localValue4 = localValue4 - localValue5
  localValue5 = text4
  stateFlag7 = localValue4 - 180.0
  workingValue26 = 0.0
  number44 = 360.0
  return localValue5(stateFlag7, workingValue26, number44)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3
  localValue2 = rageUiOperation3
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = 180.0
  if localValue2 <= localValue3 then
    if localValue2 < 105.0 and 14 == localValue1 then
      localValue3 = "ENTER_LEFT_READYIDLE_SHORT"
      return localValue3
    end
    localValue3 = "ENTER_LEFT_READYIDLE"
    return localValue3
  end
  localValue3 = 255.0
  if localValue2 > localValue3 and 15 == localValue1 then
    localValue3 = "ENTER_RIGHT_READYIDLE_SHORT"
    return localValue3
  end
  localValue3 = "ENTER_RIGHT_READYIDLE"
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text5(localValue1, localValue2, localValue3, localValue4)
  local localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17
  localValue5 = vector3
  stateFlag7 = 0.0
  workingValue26 = 0.0
  number44 = 0.0
  localValue5 = localValue5(stateFlag7, workingValue26, number44)
  if localValue2 then
    stateFlag7 = rageUiOperation2
    workingValue26 = localValue1
    stateFlag7 = stateFlag7(workingValue26)
    localValue5 = stateFlag7
  else
    stateFlag7 = rageUiOperation2
    workingValue26 = localValue1
    stateFlag7 = stateFlag7(workingValue26)
    workingValue26 = GetAnimInitialOffsetPosition
    number44 = localValue3
    workingValue28 = localValue4
    workingValue29 = stateFlag7.x
    workingValue3 = stateFlag7.y
    workingValue4 = stateFlag7.z
    number11 = 0.0
    number13 = 0.0
    workingValue7 = text3
    workingValue7 = workingValue7()
    number15 = 0.01
    number17 = 2
    workingValue26 = workingValue26(number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17)
    localValue5 = workingValue26
  end
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26
  localValue2 = RequestScaleformMovie
  localValue3 = localValue1
  -- Beginner: result below is scaleformHandle.
  localValue2 = localValue2(localValue3)
  while true do
    localValue3 = HasScaleformMovieLoaded
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "CLEAR_ALL"
  localValue3(localValue4, localValue5)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_CLEAR_SPACE"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 200
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_DATA_SLOT"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 1
  localValue3(localValue4)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  stateFlag7 = 194
  workingValue26 = true
  localValue4, localValue5, stateFlag7, workingValue26 = localValue4(localValue5, stateFlag7, workingValue26)
  localValue3(localValue4, localValue5, stateFlag7, workingValue26)
  localValue3 = ButtonMessage
  localValue4 = "Leave chair"
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_DATA_SLOT"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  stateFlag7 = 191
  workingValue26 = true
  localValue4, localValue5, stateFlag7, workingValue26 = localValue4(localValue5, stateFlag7, workingValue26)
  localValue3(localValue4, localValue5, stateFlag7, workingValue26)
  localValue3 = ButtonMessage
  localValue4 = "Place bet"
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_DATA_SLOT"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 2
  localValue3(localValue4)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  stateFlag7 = 11
  workingValue26 = true
  localValue4, localValue5, stateFlag7, workingValue26 = localValue4(localValue5, stateFlag7, workingValue26)
  localValue3(localValue4, localValue5, stateFlag7, workingValue26)
  localValue3 = ButtonMessage
  localValue4 = "Lower bet"
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_DATA_SLOT"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 3
  localValue3(localValue4)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  stateFlag7 = 10
  workingValue26 = true
  localValue4, localValue5, stateFlag7, workingValue26 = localValue4(localValue5, stateFlag7, workingValue26)
  localValue3(localValue4, localValue5, stateFlag7, workingValue26)
  localValue3 = ButtonMessage
  localValue4 = "Increase bet"
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_DATA_SLOT"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 4
  localValue3(localValue4)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  stateFlag7 = 22
  workingValue26 = true
  localValue4, localValue5, stateFlag7, workingValue26 = localValue4(localValue5, stateFlag7, workingValue26)
  localValue3(localValue4, localValue5, stateFlag7, workingValue26)
  localValue3 = ButtonMessage
  localValue4 = "Custom bet"
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "DRAW_INSTRUCTIONAL_BUTTONS"
  localValue3(localValue4, localValue5)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_BACKGROUND_COLOUR"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 80
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue19(localValue1, localValue2, localValue3, localValue4)
  local localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17
  localValue5 = 0.0
  if localValue2 then
    stateFlag7 = text3
    stateFlag7 = stateFlag7()
    localValue5 = stateFlag7
  else
    stateFlag7 = rageUiOperation2
    workingValue26 = localValue1
    stateFlag7 = stateFlag7(workingValue26)
    workingValue26 = GetAnimInitialOffsetRotation
    number44 = localValue3
    workingValue28 = localValue4
    workingValue29 = stateFlag7.x
    workingValue3 = stateFlag7.y
    workingValue4 = stateFlag7.z
    number11 = 0.0
    number13 = 0.0
    workingValue7 = text3
    workingValue7 = workingValue7()
    number15 = 0.01
    number17 = 2
    workingValue26 = workingValue26(number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17)
    localValue5 = workingValue26.z
  end
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1) ===
function workingValue20(localValue1)
  local localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20, number21, number30, number31, number33, number35, number37
  localValue2 = number36
  localValue3 = false
  localValue2(localValue3)
  localValue2 = text2
  localValue2 = localValue2()
  localValue3 = HasAnimDictLoaded
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = RequestAnimDict
    localValue4 = localValue2
    localValue3(localValue4)
    while true do
      localValue3 = HasAnimDictLoaded
      localValue4 = localValue2
      localValue3 = localValue3(localValue4)
      if localValue3 then
        break
      end
      localValue3 = Wait
      localValue4 = 0
      localValue3(localValue4)
    end
  end
  localValue3 = rageUiOperation4
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue4 = text5
  localValue5 = localValue1
  stateFlag7 = 0
  workingValue26 = localValue2
  number44 = localValue3
  localValue4 = localValue4(localValue5, stateFlag7, workingValue26, number44)
  localValue5 = workingValue19
  stateFlag7 = localValue1
  workingValue26 = 0
  number44 = localValue2
  workingValue28 = localValue3
  localValue5 = localValue5(stateFlag7, workingValue26, number44, workingValue28)
  stateFlag7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag7 = stateFlag7()
  workingValue26 = GetAnimInitialOffsetPosition
  number44 = localValue2
  workingValue28 = localValue3
  workingValue29 = localValue4.x
  workingValue3 = localValue4.y
  workingValue4 = localValue4.z
  number11 = 0.0
  number13 = 0.0
  workingValue7 = localValue5
  number15 = 0.0
  number17 = 2
  workingValue26 = workingValue26(number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17)
  number44 = GetAnimInitialOffsetRotation
  workingValue28 = localValue2
  workingValue29 = localValue3
  workingValue3 = localValue4.x
  workingValue4 = localValue4.y
  number11 = localValue4.z
  number13 = 0.0
  workingValue7 = 0.0
  number15 = localValue5
  number17 = 0.0
  number19 = 2
  number44 = number44(workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19)
  workingValue28 = TaskGoStraightToCoord
  workingValue29 = stateFlag7
  workingValue3 = workingValue26.x
  workingValue4 = workingValue26.y
  number11 = workingValue26.z
  number13 = 1.0
  workingValue7 = 20000
  number15 = localValue5 + 180.0
  number17 = 0.0
  workingValue28(workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17)
  while true do
    workingValue28 = GetScriptTaskStatus
    workingValue29 = stateFlag7
    workingValue3 = 2106541073
    workingValue28 = workingValue28(workingValue29, workingValue3)
    if 7 == workingValue28 then
      break
    end
    workingValue28 = Citizen
    workingValue28 = workingValue28.Wait
    workingValue29 = 0
    workingValue28(workingValue29)
  end
  workingValue28 = SetEntityCoordsNoOffset
  workingValue29 = stateFlag7
  workingValue3 = workingValue26.x
  workingValue4 = workingValue26.y
  number11 = workingValue26.z
  number13 = false
  workingValue7 = false
  number15 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workingValue28(workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15)
  workingValue28 = SetEntityRotation
  workingValue29 = stateFlag7
  workingValue3 = number44.x
  workingValue4 = number44.y
  number11 = number44.z
  number13 = 2
  workingValue7 = false
  workingValue28(workingValue29, workingValue3, workingValue4, number11, number13, workingValue7)
  workingValue28 = TaskPlayAnimAdvanced
  workingValue29 = stateFlag7
  workingValue3 = localValue2
  workingValue4 = localValue3
  number11 = localValue4.x
  number13 = localValue4.y
  workingValue7 = localValue4.z
  number15 = 0.0
  number17 = 0.0
  number19 = localValue5
  number20 = 2.0
  number21 = -2.0
  number30 = -1
  number31 = 790530
  number33 = 0.0
  number35 = 2
  number37 = 0
  workingValue28(workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20, number21, number30, number31, number33, number35, number37)
  workingValue28 = PlayFacialAnim
  workingValue29 = CMG
  workingValue29 = workingValue29.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workingValue29 = workingValue29()
  workingValue3 = "enter_left_readyidle_facial"
  workingValue4 = localValue2
  workingValue28(workingValue29, workingValue3, workingValue4)
  workingValue28 = RemoveAnimDict
  workingValue29 = localValue2
  workingValue28(workingValue29)
  workingValue28 = nil
  workingValue29 = nil
  workingValue3 = localValue1 + 1
  if workingValue3 >= 10 then
    workingValue4 = GetHashKey
    number11 = "vw_vwint01_betting_sreen_"
    number13 = tostring
    workingValue7 = workingValue3
    number13 = number13(workingValue7)
    number11 = number11 .. number13
    -- Beginner: result below is hash.
    workingValue4 = workingValue4(number11)
    workingValue28 = workingValue4
  else
    workingValue4 = GetHashKey
    number11 = "vw_vwint01_betting_sreen_0"
    number13 = tostring
    workingValue7 = workingValue3
    number13 = number13(workingValue7)
    number11 = number11 .. number13
    -- Beginner: result below is hash.
    workingValue4 = workingValue4(number11)
    workingValue28 = workingValue4
  end
  if workingValue3 >= 8 then
    workingValue4 = workingValue9
    number11 = "casinoscreen_"
    number13 = tostring
    workingValue7 = workingValue3 + 2
    number13 = number13(workingValue7)
    number11 = number11 .. number13
    number13 = workingValue28
    workingValue4 = workingValue4(number11, number13)
    workingValue29 = workingValue4
  else
    workingValue4 = workingValue9
    number11 = "casinoscreen_0"
    number13 = tostring
    workingValue7 = workingValue3 + 2
    number13 = number13(workingValue7)
    number11 = number11 .. number13
    number13 = workingValue28
    workingValue4 = workingValue4(number11, number13)
    workingValue29 = workingValue4
  end
  workingValue4 = true
  stateFlag8 = workingValue4
  workingValue4 = text6
  number11 = "instructional_buttons"
  workingValue4 = workingValue4(number11)
  number11 = Citizen
  number11 = number11.CreateThread

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local rageUiOperation, text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12, workingValue5, workingValue8
    while true do
      rageUiOperation = stateFlag
      if not rageUiOperation then
        break
      end
      rageUiOperation = SetTextRenderId
      text = workingValue29
      rageUiOperation(text)
      rageUiOperation = SetScriptGfxDrawOrder
      text = 4
      rageUiOperation(text)
      rageUiOperation = SetScriptGfxDrawBehindPausemenu
      text = true
      rageUiOperation(text)
      rageUiOperation = stateFlag2
      if rageUiOperation then
        rageUiOperation = DrawAdvancedText
        text = 0.584
        number39 = 0.181
        dataCollection2 = 0.005
        stateFlag6 = 0.0028
        number43 = 0.6
        mathHelper = math
        mathHelper = mathHelper.floor
        workingValue27 = number8
        workingValue27 = workingValue27 * 1000
        mathHelper = mathHelper(workingValue27)
        mathHelper = mathHelper / 1000
        workingValue27 = "% chance of winning!"
        mathHelper = mathHelper .. workingValue27
        workingValue27 = 255
        text9 = 255
        text10 = 255
        number7 = 255
        number9 = 0
        number12 = 0
        rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12)
        rageUiOperation = DrawAdvancedText
        text = 0.489
        number39 = 0.74
        dataCollection2 = 0.005
        stateFlag6 = 0.0028
        number43 = 0.6
        mathHelper = "Your colour is"
        workingValue27 = 255
        text9 = 255
        text10 = 255
        number7 = 255
        number9 = 0
        number12 = 0
        rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12)
        rageUiOperation = number32
        if nil ~= rageUiOperation then
          rageUiOperation = pairs
          text = number32
          rageUiOperation, text, number39, dataCollection2 = rageUiOperation(text)
          for stateFlag6, number43 in rageUiOperation, text, number39, dataCollection2 do
            mathHelper = number43.user_id
            workingValue27 = CMG
            workingValue27 = workingValue27.getClientUserId
            -- Beginner: result below is userId.
            workingValue27 = workingValue27()
            if mathHelper == workingValue27 then
              mathHelper = DrawRect
              workingValue27 = 0.72
              text9 = 0.82
              text10 = 0.115
              number7 = 0.156
              number9 = number32
              number9 = number9[stateFlag6]
              number9 = number9.colour
              number9 = number9.r
              number12 = number32
              number12 = number12[stateFlag6]
              number12 = number12.colour
              number12 = number12.g
              workingValue5 = number32
              workingValue5 = workingValue5[stateFlag6]
              workingValue5 = workingValue5.colour
              workingValue5 = workingValue5.b
              workingValue8 = number32
              workingValue8 = workingValue8[stateFlag6]
              workingValue8 = workingValue8.colour
              workingValue8 = workingValue8.a
              mathHelper(workingValue27, text9, text10, number7, number9, number12, workingValue5, workingValue8)
            end
          end
        end
      else
        rageUiOperation = DrawAdvancedText
        text = 0.584
        number39 = 0.181
        dataCollection2 = 0.005
        stateFlag6 = 0.0028
        number43 = 0.6
        mathHelper = "Buy Tickets"
        workingValue27 = 255
        text9 = 255
        text10 = 255
        number7 = 255
        number9 = 0
        number12 = 0
        rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12)
      end
      rageUiOperation = stateFlag10
      if rageUiOperation then
        rageUiOperation = DrawAdvancedText
        text = 0.584
        number39 = 0.465
        dataCollection2 = 0.005
        stateFlag6 = 0.0028
        number43 = 0.7
        mathHelper = getMoneyStringFormatted
        workingValue27 = number16
        mathHelper = mathHelper(workingValue27)
        workingValue27 = " tickets"
        mathHelper = mathHelper .. workingValue27
        workingValue27 = 0
        text9 = 153
        text10 = 255
        number7 = 255
        number9 = 0
        number12 = 0
        rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12)
        rageUiOperation = DrawAdvancedText
        text = 0.584
        number39 = 0.765
        dataCollection2 = 0.005
        stateFlag6 = 0.0028
        number43 = 0.6
        mathHelper = "Press [ENTER] to confirm bet!"
        workingValue27 = 255
        text9 = 255
        text10 = 255
        number7 = 255
        number9 = 0
        number12 = 0
        rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12)
      else
        rageUiOperation = DrawAdvancedText
        text = 0.584
        number39 = 0.465
        dataCollection2 = 0.005
        stateFlag6 = 0.0028
        number43 = 0.7
        mathHelper = getMoneyStringFormatted
        workingValue27 = number16
        mathHelper = mathHelper(workingValue27)
        workingValue27 = " tickets"
        mathHelper = mathHelper .. workingValue27
        workingValue27 = 0
        text9 = 204
        text10 = 102
        number7 = 255
        number9 = 0
        number12 = 0
        rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12)
      end
      rageUiOperation = SetTextRenderId
      text = GetDefaultScriptRendertargetRenderId
      text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12, workingValue5, workingValue8 = text()
      rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper, workingValue27, text9, text10, number7, number9, number12, workingValue5, workingValue8)
      rageUiOperation = SetScriptGfxDrawBehindPausemenu
      text = false
      rageUiOperation(text)
      rageUiOperation = Wait
      text = 0
      rageUiOperation(text)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number11(number13)
  number11 = Citizen
  number11 = number11.CreateThread

  -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
  function number13()
    local rageUiOperation, text, number39, dataCollection2, stateFlag6, number43, mathHelper
    while true do
      rageUiOperation = stateFlag8
      if not rageUiOperation then
        break
      end
      rageUiOperation = DrawScaleformMovieFullscreen
      text = workingValue4
      number39 = 255
      dataCollection2 = 255
      stateFlag6 = 255
      number43 = 255
      mathHelper = 0
      rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper)
      rageUiOperation = Wait
      text = 0
      rageUiOperation(text)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  number11(number13)
end
eventHandler = RegisterNetEvent
cmgOperation = "3dc617a9ae"
-- Beginner: this function handles network event "3dc617a9ae".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3
  number42 = localValue1
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  localValue3 = false
  localValue2(localValue3)
  localValue2 = true
  stateFlag = localValue2
  localValue2 = workingValue20
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3dc617a9ae".
eventHandler(cmgOperation, cmgOperation2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, localValue3
  localValue1 = stateFlag8
  if localValue1 then
    localValue1 = IsDisabledControlJustPressed
    localValue2 = 0
    localValue3 = 22
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.GetRageInputInt
      localValue2 = "Bet Amount"
      localValue1 = localValue1(localValue2)
      if localValue1 and localValue1 > 0 then
        number16 = localValue1
        localValue2 = false
        stateFlag10 = localValue2
      end
    end
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 201
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = stateFlag10
      if localValue1 then
        localValue1 = TriggerServerEvent
        localValue2 = "a1b3e3fa14"
        localValue3 = number16
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a1b3e3fa14".
        localValue1(localValue2, localValue3)
      else
        localValue1 = tonumber
        localValue2 = number16
        localValue1 = localValue1(localValue2)
        if localValue1 >= 0 then
          localValue1 = true
          stateFlag10 = localValue1
          localValue1 = Wait
          localValue2 = 100
          localValue1(localValue2)
        else
          localValue1 = tCMG
          localValue1 = localValue1.notify
          localValue2 = "~r~Invalid amount."
          -- Beginner: Show a notification to the player.
          localValue1(localValue2)
        end
      end
    end
    localValue1 = IsControlPressed
    localValue2 = 0
    localValue3 = 10
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = number16
      localValue1 = localValue1 + 100
      number16 = localValue1
      localValue1 = false
      stateFlag10 = localValue1
    end
    localValue1 = IsControlPressed
    localValue2 = 0
    localValue3 = 11
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = number16
      if localValue1 >= 100 then
        localValue1 = number16
        localValue1 = localValue1 - 100
        number16 = localValue1
        localValue1 = false
        stateFlag10 = localValue1
      end
    end
  end
end
cmgOperation = CMG
cmgOperation = cmgOperation.createThreadOnTick
cmgOperation2 = eventHandler
text7 = "Casino Jackpot Bet"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation(cmgOperation2, text7)
cmgOperation = Citizen
cmgOperation = cmgOperation.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3
  while true do
    localValue1 = number22
    if -1 ~= localValue1 then
      localValue1 = number38
      if localValue1 < 2 then
        localValue1 = IsControlJustPressed
        localValue2 = 0
        localValue3 = 38
        localValue1 = localValue1(localValue2, localValue3)
        if localValue1 then
          localValue2 = number22
          localValue1 = dataCollection4
          localValue1 = localValue1[localValue2]
          if false == localValue1 then
            localValue1 = TriggerServerEvent
            localValue2 = "5fa84f5579"
            localValue3 = number22
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5fa84f5579".
            localValue1(localValue2, localValue3)
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation(cmgOperation2)
cmgOperation = AddEventHandler
cmgOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2) ===
function text7(localValue1, localValue2)
  local localValue3, localValue4
  if localValue2 then
    localValue3 = TriggerServerEvent
    localValue4 = "36b442c245"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36b442c245".
    localValue3(localValue4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation(cmgOperation2, text7)
cmgOperation = RegisterNetEvent
cmgOperation2 = "7bd6881732"
-- Beginner: this function handles network event "7bd6881732".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2
  dataCollection4 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7bd6881732".
cmgOperation(cmgOperation2, text7)
-- Beginner: this function handles network event "7bd6881732".

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20, number21, number30, number31
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = stateFlag8
    if localValue1 then
      localValue1 = SetPedCapsule
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = 0.2
      localValue1(localValue2, localValue3)
      localValue1 = IsControlJustPressed
      localValue2 = 0
      localValue3 = 202
      localValue1 = localValue1(localValue2, localValue3)
      if localValue1 then
        localValue1 = stateFlag9
        if not localValue1 then
          localValue1 = number42
          localValue2 = text2
          localValue2 = localValue2()
          localValue3 = "exit_left"
          localValue4 = text5
          localValue5 = localValue1
          stateFlag7 = 0
          workingValue26 = localValue2
          number44 = localValue3
          localValue4 = localValue4(localValue5, stateFlag7, workingValue26, number44)
          localValue5 = workingValue19
          stateFlag7 = localValue1
          workingValue26 = 0
          number44 = localValue2
          workingValue28 = localValue3
          localValue5 = localValue5(stateFlag7, workingValue26, number44, workingValue28)
          stateFlag7 = TaskPlayAnimAdvanced
          workingValue26 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workingValue26 = workingValue26()
          number44 = localValue2
          workingValue28 = localValue3
          workingValue29 = localValue4.x
          workingValue3 = localValue4.y
          workingValue4 = localValue4.z
          number11 = 0.0
          number13 = 0.0
          workingValue7 = localValue5
          number15 = 2.0
          number17 = -2.0
          number19 = -1
          number20 = 790528
          number21 = 0.0
          number30 = 2
          number31 = 0
          stateFlag7(workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20, number21, number30, number31)
          stateFlag7 = PlayFacialAnim
          workingValue26 = CMG
          workingValue26 = workingValue26.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          workingValue26 = workingValue26()
          number44 = "exit_left_facial"
          workingValue28 = localValue2
          stateFlag7(workingValue26, number44, workingValue28)
          stateFlag7 = SetTimeout
          workingValue26 = 2500

          -- === HELPER FUNCTION (decompiler name: number44; parameters: none) ===
          function number44()
            local rageUiOperation, text
            rageUiOperation = ClearPedTasks
            text = CMG
            text = text.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            text = text()
            rageUiOperation(text)
          end
          stateFlag7(workingValue26, number44)
          stateFlag7 = tCMG
          stateFlag7 = stateFlag7.setCanAnim
          workingValue26 = true
          stateFlag7(workingValue26)
          stateFlag7 = false
          stateFlag = stateFlag7
          stateFlag7 = true
          stateFlag5 = stateFlag7
          stateFlag7 = false
          stateFlag8 = stateFlag7
          stateFlag7 = number36
          workingValue26 = false
          stateFlag7(workingValue26)
          stateFlag7 = TriggerServerEvent
          workingValue26 = "189c2ad027"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "189c2ad027".
          stateFlag7(workingValue26)
          stateFlag7 = -1
          number42 = stateFlag7
          stateFlag7 = SetTimeout
          workingValue26 = 5000

          -- === HELPER FUNCTION (decompiler name: number44; parameters: none) ===
          function number44()
            local rageUiOperation, text
            rageUiOperation = false
            stateFlag5 = rageUiOperation
          end
          stateFlag7(workingValue26, number44)
        end
      end
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
text7 = cmgOperation
text8 = "Casino Jackpot Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(text7, text8)
cmgOperation2 = RegisterNetEvent
text7 = "5b098b67a8"
-- Beginner: this function handles network event "5b098b67a8".

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function text8(localValue1, localValue2, localValue3, localValue4, localValue5)
  local stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20, number21
  stateFlag7 = number32
  stateFlag7 = stateFlag7[localValue1]
  if not stateFlag7 then
    return
  end
  stateFlag7 = 0.5
  number45 = stateFlag7
  stateFlag7 = number32
  stateFlag7 = stateFlag7[localValue1]
  stateFlag7 = stateFlag7.centerXPos
  workingValue26 = number32
  workingValue26 = workingValue26[localValue1]
  workingValue26 = workingValue26.rectLength
  number44 = workingValue26 / 2
  number44 = stateFlag7 - number44
  workingValue28 = localValue2 * workingValue26
  stateFlag7 = number44 + workingValue28
  number44 = 0.5
  workingValue28 = stateFlag7
  workingValue29 = 0
  workingValue3 = false
  workingValue4 = 0
  number11 = GetEntityCoords
  number13 = CMG
  number13 = number13.getPlayerPed
  number13, workingValue7, number15, number17, number19, number20, number21 = number13()
  -- Beginner: result below is entityCoords.
  number11 = number11(number13, workingValue7, number15, number17, number19, number20, number21)
  number13 = vector3
  workingValue7 = 1096.3543701172
  number15 = 261.18997192383
  number17 = -51.241153717041
  number13 = number13(workingValue7, number15, number17)
  number13 = number11 - number13
  number13 = #number13
  workingValue7 = false
  if number13 <= 10 then
    number15 = SendNUIMessage
    number17 = {}
    number17.transactionType = "jackpotroll"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    number15(number17)
    workingValue7 = true
  end
  number15 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  number15 = number15()
  while 0.0 ~= number44 do
    number17 = GetFrameTime
    number17 = number17()
    number19 = number45
    number20 = 0.9
    if number19 > number20 then
      number19 = 0.1
      number45 = number19
      workingValue29 = workingValue29 + 1
    end
    if 1 == workingValue29 and not workingValue3 then
      workingValue3 = true
      number19 = SetTimeout
      number20 = 4000

      -- === HELPER FUNCTION (decompiler name: number21; parameters: none) ===
      function number21()
        local rageUiOperation, text, number39
        rageUiOperation = 0.4
        number44 = rageUiOperation
        rageUiOperation = SetTimeout
        text = 2500

        -- === HELPER FUNCTION (decompiler name: number39; parameters: none) ===
        function number39()
          local localValue12, localValue22, localValue32
          localValue12 = 0.35
          number44 = localValue12
          localValue12 = SetTimeout
          localValue22 = 1250

          -- === HELPER FUNCTION: localValue32() ===
          function localValue32()
            local number2, number25, workingValue14
            number2 = 0.3
            number44 = number2
            number2 = SetTimeout
            number25 = 625

            -- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
            function workingValue14()
              local number3, number26, workingValue15
              number3 = 0.25
              number44 = number3
              number3 = SetTimeout
              number26 = 625

              -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
              function workingValue15()
                local number4, number27, workingValue16
                number4 = 0.2
                number44 = number4
                number4 = SetTimeout
                number27 = 500

                -- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
                function workingValue16()
                  local number5, number28, workingValue17
                  number5 = 0.15
                  number44 = number5
                  number5 = SetTimeout
                  number28 = 500

                  -- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
                  function workingValue17()
                    local number6, number29, workingValue18
                    number6 = 0.1
                    number44 = number6
                    number6 = SetTimeout
                    number29 = 1500

                    -- === HELPER FUNCTION (decompiler name: workingValue18; parameters: none) ===
                    function workingValue18()
                      local workingValue, number23, workingValue11
                      workingValue = SetTimeout
                      number23 = 1000

                      -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
                      function workingValue11()
                        local workingValue2, number24, workingValue12
                        workingValue2 = SetTimeout
                        number24 = 750

                        -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
                        function workingValue12()
                          local number, workingValue10, workingValue13, workingValue21
                          number = 0
                          workingValue10 = number45
                          workingValue13 = workingValue28
                          if workingValue10 > workingValue13 then
                            number = 0.9
                          end
                          workingValue10 = workingValue28
                          workingValue13 = number45
                          workingValue13 = workingValue13 - number
                          workingValue10 = workingValue10 - workingValue13
                          workingValue13 = number45
                          workingValue21 = workingValue28
                          if workingValue13 < workingValue21 then
                            while true do
                              workingValue13 = number45
                              workingValue13 = workingValue13 - number
                              workingValue21 = workingValue28
                              if not (workingValue13 < workingValue21) then
                                break
                              end
                              workingValue13 = GetGameTimer
                              -- Beginner: result below is gameTimeMs.
                              workingValue13 = workingValue13()
                              workingValue21 = number15
                              workingValue13 = workingValue13 - workingValue21
                              workingValue21 = 120000
                              if not (workingValue13 < workingValue21) then
                                break
                              end
                              workingValue13 = number45
                              workingValue21 = workingValue28
                              if workingValue13 > workingValue21 then
                                number = 0.9
                              else
                                number = 0.0
                              end
                              workingValue13 = workingValue28
                              workingValue21 = number45
                              workingValue21 = workingValue21 - number
                              workingValue10 = workingValue13 - workingValue21
                              workingValue13 = 0.1
                              if workingValue10 < workingValue13 then
                                workingValue13 = 0.025
                                number44 = workingValue13
                              else
                                workingValue13 = 0.3
                                if workingValue10 < workingValue13 then
                                  workingValue13 = 0.035
                                  number44 = workingValue13
                                else
                                  workingValue13 = 0.4
                                  if workingValue10 < workingValue13 then
                                    workingValue13 = 0.05
                                    number44 = workingValue13
                                  else
                                    workingValue13 = 0.5
                                    if workingValue10 < workingValue13 then
                                      workingValue13 = 0.075
                                      number44 = workingValue13
                                    end
                                  end
                                end
                              end
                              workingValue13 = Wait
                              workingValue21 = 0
                              workingValue13(workingValue21)
                            end
                          else
                            workingValue13 = number45
                            workingValue21 = workingValue28
                            if workingValue13 > workingValue21 then
                              while true do
                                workingValue13 = number45
                                workingValue13 = workingValue13 - number
                                workingValue21 = workingValue28
                                if not (workingValue13 < workingValue21) then
                                  break
                                end
                                workingValue13 = GetGameTimer
                                -- Beginner: result below is gameTimeMs.
                                workingValue13 = workingValue13()
                                workingValue21 = number15
                                workingValue13 = workingValue13 - workingValue21
                                workingValue21 = 120000
                                if not (workingValue13 < workingValue21) then
                                  break
                                end
                                workingValue13 = number45
                                workingValue21 = workingValue28
                                if workingValue13 > workingValue21 then
                                  number = 0.9
                                else
                                  number = 0.0
                                end
                                workingValue13 = workingValue28
                                workingValue21 = number45
                                workingValue21 = workingValue21 - number
                                workingValue10 = workingValue13 - workingValue21
                                workingValue13 = 0.1
                                if workingValue10 < workingValue13 then
                                  workingValue13 = 0.025
                                  number44 = workingValue13
                                else
                                  workingValue13 = 0.3
                                  if workingValue10 < workingValue13 then
                                    workingValue13 = 0.035
                                    number44 = workingValue13
                                  else
                                    workingValue13 = 0.4
                                    if workingValue10 < workingValue13 then
                                      workingValue13 = 0.05
                                      number44 = workingValue13
                                    else
                                      workingValue13 = 0.5
                                      if workingValue10 < workingValue13 then
                                        workingValue13 = 0.075
                                        number44 = workingValue13
                                      end
                                    end
                                  end
                                end
                                workingValue13 = Wait
                                workingValue21 = 0
                                workingValue13(workingValue21)
                              end
                            end
                          end
                          workingValue13 = 0.0
                          number44 = workingValue13
                          workingValue13 = localValue3
                          workingValue6 = workingValue13
                          workingValue13 = localValue4
                          number14 = workingValue13
                          workingValue13 = workingValue7
                          if workingValue13 then
                            workingValue13 = localValue5
                            workingValue21 = CMG
                            workingValue21 = workingValue21.getClientUserId
                            -- Beginner: result below is userId.
                            workingValue21 = workingValue21()
                            if workingValue13 == workingValue21 then
                              workingValue13 = SendNUIMessage
                              workingValue21 = {}
                              workingValue21.transactionType = "playCasinoWin"
                              -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                              workingValue13(workingValue21)
                              workingValue13 = TriggerServerEvent
                              workingValue21 = "9aef7155c0"
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9aef7155c0".
                              workingValue13(workingValue21)
                            else
                              workingValue13 = number42
                              if -1 ~= workingValue13 then
                                workingValue13 = SendNUIMessage
                                workingValue21 = {}
                                workingValue21.transactionType = "playCasinoLose"
                                -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                                workingValue13(workingValue21)
                              end
                            end
                          end
                        end
                        workingValue2(number24, workingValue12)
                      end
                      workingValue(number23, workingValue11)
                    end
                    number6(number29, workingValue18)
                  end
                  number5(number28, workingValue17)
                end
                number4(number27, workingValue16)
              end
              number3(number26, workingValue15)
            end
            number2(number25, workingValue14)
          end
          localValue12(localValue22, localValue32)
        end
        rageUiOperation(text, number39)
      end
      number19(number20, number21)
    end
    number19 = number45
    number20 = number44 * number17
    number19 = number19 + number20
    number45 = number19
    number19 = number44 * number17
    workingValue4 = workingValue4 + number19
    number19 = Wait
    number20 = 0
    number19(number20)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b098b67a8".
cmgOperation2(text7, text8)
cmgOperation2 = Citizen
cmgOperation2 = cmgOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20, number21, number30, number31
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isInsideDiamondCasino
    localValue1 = localValue1()
    if localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = Wait
  localValue2 = 5000
  localValue1(localValue2)
  localValue1 = -214651601
  localValue2 = workingValue9
  localValue3 = "casinoscreen_02"
  localValue4 = localValue1
  localValue2 = localValue2(localValue3, localValue4)
  while true do
    localValue3 = SetTextRenderId
    localValue4 = localValue2
    localValue3(localValue4)
    localValue3 = SetScriptGfxDrawOrder
    localValue4 = 4
    localValue3(localValue4)
    localValue3 = SetScriptGfxDrawBehindPausemenu
    localValue4 = true
    localValue3(localValue4)
    localValue3 = number32
    localValue3 = #localValue3
    if 0 ~= localValue3 then
      localValue3 = number32
      localValue4 = #localValue3
      localValue3 = number32
      localValue3 = localValue3[localValue4]
      localValue3 = localValue3.tickets_end
      localValue4 = 0.1
      localValue5 = 0.8
      stateFlag7 = 0.0
      workingValue26 = 1
      number44 = number32
      number44 = #number44
      workingValue28 = 1
      for workingValue29 = workingValue26, number44, workingValue28 do
        workingValue3 = number32
        workingValue3 = workingValue3[workingValue29]
        workingValue3 = workingValue3.tickets_end
        workingValue4 = number32
        workingValue4 = workingValue4[workingValue29]
        workingValue4 = workingValue4.tickets_start
        workingValue3 = workingValue3 - workingValue4
        workingValue3 = workingValue3 + 1
        workingValue4 = workingValue3 / localValue3
        number11 = workingValue4 * localValue5
        number13 = number32
        number13 = number13[workingValue29]
        workingValue7 = localValue5 * stateFlag7
        workingValue7 = localValue4 + workingValue7
        number15 = number11 / 2
        workingValue7 = workingValue7 + number15
        number13.centerXPos = workingValue7
        number13 = number32
        number13 = number13[workingValue29]
        number13.rectLength = number11
        number13 = DrawRect
        workingValue7 = localValue5 * stateFlag7
        workingValue7 = localValue4 + workingValue7
        number15 = number11 / 2
        workingValue7 = workingValue7 + number15
        number15 = 0.5
        number17 = localValue5 * workingValue4
        number19 = 0.2
        number20 = number32
        number20 = number20[workingValue29]
        number20 = number20.colour
        number20 = number20.r
        number21 = number32
        number21 = number21[workingValue29]
        number21 = number21.colour
        number21 = number21.g
        number30 = number32
        number30 = number30[workingValue29]
        number30 = number30.colour
        number30 = number30.b
        number31 = number32
        number31 = number31[workingValue29]
        number31 = number31.colour
        number31 = number31.a
        number13(workingValue7, number15, number17, number19, number20, number21, number30, number31)
        stateFlag7 = stateFlag7 + workingValue4
      end
      workingValue26 = stateFlag3
      if workingValue26 then
        workingValue26 = DrawAdvancedText
        number44 = 0.6
        workingValue28 = 0.161
        workingValue29 = 0.005
        workingValue3 = 0.0028
        workingValue4 = 1.12
        number11 = "Round starting in "
        number13 = number10
        workingValue7 = "s"
        number11 = number11 .. number13 .. workingValue7
        number13 = 255
        workingValue7 = 255
        number15 = 255
        number17 = 255
        number19 = 4
        number20 = 0
        workingValue26(number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20)
      else
        workingValue26 = stateFlag4
        if workingValue26 then
          workingValue26 = DrawAdvancedText
          number44 = 0.6
          workingValue28 = 0.161
          workingValue29 = 0.005
          workingValue3 = 0.0028
          workingValue4 = 1.12
          number11 = "Waiting for bets"
          number13 = 255
          workingValue7 = 255
          number15 = 255
          number17 = 255
          number19 = 4
          number20 = 0
          workingValue26(number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20)
        end
      end
      workingValue26 = workingValue6
      if workingValue26 then
        workingValue26 = DrawAdvancedText
        number44 = 0.6
        workingValue28 = 0.161
        workingValue29 = 0.005
        workingValue3 = 0.0028
        workingValue4 = 1.12
        number11 = workingValue6
        number13 = " wins with a chance of "
        workingValue7 = math
        workingValue7 = workingValue7.floor
        number15 = number14
        number15 = number15 * 1000
        workingValue7 = workingValue7(number15)
        workingValue7 = workingValue7 / 1000
        number15 = "%!"
        number11 = number11 .. number13 .. workingValue7 .. number15
        number13 = 255
        workingValue7 = 255
        number15 = 255
        number17 = 255
        number19 = 4
        number20 = 0
        workingValue26(number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20)
      end
      workingValue26 = number18
      if workingValue26 then
        workingValue26 = DrawAdvancedText
        number44 = 0.92
        workingValue28 = 0.161
        workingValue29 = 0.005
        workingValue3 = 0.0028
        workingValue4 = 1.12
        number11 = "Total Pot: "
        number13 = getMoneyStringFormatted
        workingValue7 = number18
        number13 = number13(workingValue7)
        number11 = number11 .. number13
        number13 = 255
        workingValue7 = 255
        number15 = 255
        number17 = 255
        number19 = 4
        number20 = 0
        workingValue26(number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20)
      end
      workingValue26 = DrawRect
      number44 = number45
      workingValue28 = 0.5
      workingValue29 = -0.0025
      workingValue3 = 0.346
      workingValue4 = 243
      number11 = 198
      number13 = 50
      workingValue7 = 255
      workingValue26(number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7)
    else
      localValue3 = DrawAdvancedText
      localValue4 = 0.6
      localValue5 = 0.161
      stateFlag7 = 0.005
      workingValue26 = 0.0028
      number44 = 1.12
      workingValue28 = "Waiting for bets"
      workingValue29 = 255
      workingValue3 = 255
      workingValue4 = 255
      number11 = 255
      number13 = 4
      workingValue7 = 0
      localValue3(localValue4, localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7)
    end
    localValue3 = SetTextRenderId
    localValue4 = GetDefaultScriptRendertargetRenderId
    localValue4, localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20, number21, number30, number31 = localValue4()
    localValue3(localValue4, localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17, number19, number20, number21, number30, number31)
    localValue3 = SetScriptGfxDrawBehindPausemenu
    localValue4 = false
    localValue3(localValue4)
    localValue3 = Wait
    localValue4 = 0
    localValue3(localValue4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation2(text7)
cmgOperation2 = RegisterNetEvent
text7 = "9dd018b9d1"
-- Beginner: this function handles network event "9dd018b9d1".

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = false
  stateFlag8 = localValue1
  localValue1 = false
  stateFlag10 = localValue1
  localValue1 = true
  stateFlag2 = localValue1
  localValue1 = PlaySoundFrontend
  localValue2 = -1
  localValue3 = "Hack_Success"
  localValue4 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  localValue5 = true
  localValue1(localValue2, localValue3, localValue4, localValue5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9dd018b9d1".
cmgOperation2(text7, text8)
cmgOperation2 = RegisterNetEvent
text7 = "2c2e2d6e33"
-- Beginner: this function handles network event "2c2e2d6e33".

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3
  localValue1 = false
  stateFlag4 = localValue1
  localValue1 = 60
  number10 = localValue1
  localValue1 = true
  stateFlag3 = localValue1
  localValue1 = SetTimeout
  localValue2 = 60000
  -- Beginner: this function handles network event "2c2e2d6e33".

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local rageUiOperation, text
    rageUiOperation = false
    stateFlag3 = rageUiOperation
  end
  localValue1(localValue2, localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2c2e2d6e33".
cmgOperation2(text7, text8)
cmgOperation2 = RegisterNetEvent
text7 = "13b75dfa73"
-- Beginner: this function handles network event "13b75dfa73".

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2
  number32 = localValue1
end
cmgOperation2(text7, text8)
cmgOperation2 = RegisterNetEvent
text7 = "e907964993"
-- Beginner: this function handles network event "e907964993".

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17
  localValue1 = {}
  number32 = localValue1
  localValue1 = number42
  if -1 ~= localValue1 then
    localValue1 = true
    stateFlag8 = localValue1
    localValue1 = text2
    localValue1 = localValue1()
    localValue2 = "playidle_var_01"
    localValue3 = text5
    localValue4 = number42
    localValue5 = 0
    stateFlag7 = localValue1
    workingValue26 = localValue2
    localValue3 = localValue3(localValue4, localValue5, stateFlag7, workingValue26)
    localValue4 = workingValue19
    localValue5 = number42
    stateFlag7 = 0
    workingValue26 = localValue1
    number44 = localValue2
    localValue4 = localValue4(localValue5, stateFlag7, workingValue26, number44)
    localValue5 = NetworkCreateSynchronisedScene
    stateFlag7 = localValue3.x
    workingValue26 = localValue3.y
    number44 = localValue3.z
    workingValue28 = 0.0
    workingValue29 = 0.0
    workingValue3 = localValue4
    workingValue4 = 2
    number11 = true
    number13 = false
    workingValue7 = 1065353216
    number15 = 0
    number17 = 1065353216
    localValue5 = localValue5(stateFlag7, workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15, number17)
    stateFlag7 = NetworkAddPedToSynchronisedScene
    workingValue26 = CMG
    workingValue26 = workingValue26.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    workingValue26 = workingValue26()
    number44 = localValue5
    workingValue28 = localValue1
    workingValue29 = localValue2
    workingValue3 = 2.0
    workingValue4 = -2.0
    number11 = 5
    number13 = 0
    workingValue7 = 1148846080
    number15 = 0
    stateFlag7(workingValue26, number44, workingValue28, workingValue29, workingValue3, workingValue4, number11, number13, workingValue7, number15)
    stateFlag7 = NetworkStartSynchronisedScene
    workingValue26 = localValue5
    stateFlag7(workingValue26)
    stateFlag7 = text6
    workingValue26 = "instructional_buttons"
    stateFlag7 = stateFlag7(workingValue26)
    workingValue26 = Citizen
    workingValue26 = workingValue26.CreateThread

    -- === HELPER FUNCTION (decompiler name: number44; parameters: none) ===
    function number44()
      local rageUiOperation, text, number39, dataCollection2, stateFlag6, number43, mathHelper
      while true do
        rageUiOperation = stateFlag8
        if not rageUiOperation then
          break
        end
        rageUiOperation = DrawScaleformMovieFullscreen
        text = stateFlag7
        number39 = 255
        dataCollection2 = 255
        stateFlag6 = 255
        number43 = 255
        mathHelper = 0
        rageUiOperation(text, number39, dataCollection2, stateFlag6, number43, mathHelper)
        rageUiOperation = Wait
        text = 0
        rageUiOperation(text)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    workingValue26(number44)
  end
  localValue1 = false
  stateFlag10 = localValue1
  localValue1 = false
  stateFlag2 = localValue1
  localValue1 = 0
  number16 = localValue1
  localValue1 = nil
  workingValue6 = localValue1
  localValue1 = 0
  number14 = localValue1
  localValue1 = true
  stateFlag4 = localValue1
  localValue1 = 0
  number18 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e907964993".
cmgOperation2(text7, text8)
cmgOperation2 = Citizen
cmgOperation2 = cmgOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2
  while true do
    localValue1 = number10
    if localValue1 >= 0 then
      localValue1 = number10
      localValue1 = localValue1 - 1
      number10 = localValue1
    end
    localValue1 = Wait
    localValue2 = 1000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation2(text7)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "c0475172e6"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c0475172e6".
  localValue1(localValue2)
end
text7 = CMG
text7 = text7.createArea
text8 = "casino_jackpot_scope"
workingValue22 = createVector3
number40 = 75.0
number41 = 50.0
workingValue23 = cmgOperation2

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: none) ===
function workingValue24()
  local localValue1, localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: none) ===
function workingValue25()
  local localValue1, localValue2
end
dataCollection3 = {}
-- Beginner: Create an interaction area around a world position.
text7(text8, workingValue22, number40, number41, workingValue23, workingValue24, workingValue25, dataCollection3)
