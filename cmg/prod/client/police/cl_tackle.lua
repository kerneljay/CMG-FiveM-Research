--[[
    LEVEL 1 BEGINNER GUIDE — Tackle
    ====================================

    File: cmg/prod/client/police/cl_tackle.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Tackle feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 6
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
local dataTable, flag8, flag9, textValue2, textValue3, textValue4, numberValue2, flag12, cmgCall2, textValue5, workValue, cmgCall, workValue2, textValue
dataTable = {}
dataTable.ESC = 322
dataTable.F1 = 288
dataTable.F2 = 289
dataTable.F3 = 170
dataTable.F5 = 166
dataTable.F6 = 167
dataTable.F7 = 168
dataTable.F8 = 169
dataTable.F9 = 56
dataTable.F10 = 57
dataTable["~"] = 243
dataTable["1"] = 157
dataTable["2"] = 158
dataTable["3"] = 160
dataTable["4"] = 164
dataTable["5"] = 165
dataTable["6"] = 159
dataTable["7"] = 161
dataTable["8"] = 162
dataTable["9"] = 163
dataTable["-"] = 84
dataTable["="] = 83
dataTable.BACKSPACE = 177
dataTable.TAB = 37
dataTable.Q = 44
dataTable.W = 32
dataTable.E = 38
dataTable.R = 45
dataTable.T = 245
dataTable.Y = 246
dataTable.U = 303
dataTable.P = 199
dataTable["["] = 39
dataTable["]"] = 40
dataTable.ENTER = 18
dataTable.CAPS = 137
dataTable.A = 34
dataTable.S = 8
dataTable.D = 9
dataTable.F = 23
dataTable.G = 47
dataTable.H = 74
dataTable.K = 311
dataTable.L = 182
dataTable.LEFTSHIFT = 21
dataTable.Z = 20
dataTable.X = 73
dataTable.C = 26
dataTable.V = 0
dataTable.B = 29
dataTable.N = 249
dataTable.M = 244
dataTable[","] = 82
dataTable["."] = 81
dataTable.LEFTCTRL = 36
dataTable.LEFTALT = 19
dataTable.SPACE = 22
dataTable.RIGHTCTRL = 70
dataTable.HOME = 213
dataTable.PAGEUP = 10
dataTable.PAGEDOWN = 11
dataTable.DELETE = 178
dataTable.LEFT = 174
dataTable.RIGHT = 175
dataTable.TOP = 27
dataTable.DOWN = 173
dataTable.NENTER = 201
dataTable.N4 = 108
dataTable.N5 = 60
dataTable.N6 = 107
dataTable["N+"] = 96
dataTable["N-"] = 97
dataTable.N7 = 117
dataTable.N8 = 61
dataTable.N9 = 118
flag8 = false
flag9 = false
textValue2 = "missmic2ig_11"
textValue3 = "mic_2_ig_11_intro_goon"
textValue4 = "mic_2_ig_11_intro_p_one"
numberValue2 = 0
flag12 = false
cmgCall2 = RegisterNetEvent
textValue5 = "8913dc97ca"
-- Beginner: this function handles network event "8913dc97ca".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3, playerPed, flag4, flag5, flag6, numberValue, flag7
  arg2 = true
  flag9 = arg2
  arg2 = TriggerEvent
  arg3 = "56e6172373"
  playerIndex = false
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
  arg2(arg3, playerIndex)
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetPlayerPed
  playerIndex = GetPlayerFromServerId
  workValue3 = arg1
  playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3, playerPed, flag4, flag5, flag6, numberValue, flag7 = playerIndex(workValue3)
  -- Beginner: result below is playerPed.
  arg3 = arg3(playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3, playerPed, flag4, flag5, flag6, numberValue, flag7)
  playerIndex = RequestAnimDict
  workValue3 = textValue2
  playerIndex(workValue3)
  while true do
    playerIndex = HasAnimDictLoaded
    workValue3 = textValue2
    playerIndex = playerIndex(workValue3)
    if playerIndex then
      break
    end
    playerIndex = Citizen
    playerIndex = playerIndex.Wait
    workValue3 = 10
    playerIndex(workValue3)
  end
  playerIndex = tCMG
  playerIndex = playerIndex.setCanAnim
  workValue3 = false
  playerIndex(workValue3)
  playerIndex = AttachEntityToEntity
  workValue3 = CMG
  workValue3 = workValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  flag10 = arg3
  flag11 = 11816
  numberValue3 = 0.25
  numberValue4 = 0.5
  numberValue5 = 0.0
  flag = 0.5
  flag2 = 0.5
  flag3 = 180.0
  playerPed = false
  flag4 = false
  flag5 = false
  flag6 = false
  numberValue = 2
  flag7 = false
  -- Beginner: Attach one entity to another entity.
  playerIndex(workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3, playerPed, flag4, flag5, flag6, numberValue, flag7)
  playerIndex = TaskPlayAnim
  workValue3 = arg2
  flag10 = textValue2
  flag11 = textValue4
  numberValue3 = 8.0
  numberValue4 = -8.0
  numberValue5 = 3000
  flag = 0
  flag2 = 0
  flag3 = false
  playerPed = false
  flag4 = false
  -- Beginner: Play an animation on a ped.
  playerIndex(workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3, playerPed, flag4)
  playerIndex = RemoveAnimDict
  workValue3 = textValue2
  playerIndex(workValue3)
  playerIndex = Citizen
  playerIndex = playerIndex.Wait
  workValue3 = 3000
  playerIndex(workValue3)
  playerIndex = DetachEntity
  workValue3 = CMG
  workValue3 = workValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  flag10 = true
  flag11 = false
  playerIndex(workValue3, flag10, flag11)
  playerIndex = tCMG
  playerIndex = playerIndex.setCanAnim
  workValue3 = true
  playerIndex(workValue3)
  playerIndex = true
  flag12 = playerIndex
  playerIndex = Citizen
  playerIndex = playerIndex.Wait
  workValue3 = 3000
  playerIndex(workValue3)
  playerIndex = false
  flag12 = playerIndex
  playerIndex = false
  flag9 = playerIndex
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8913dc97ca".
cmgCall2(textValue5, workValue)
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2
  arg1 = flag12
  return arg1
end
cmgCall2.isPedBeingTackled = textValue5
cmgCall2 = RegisterNetEvent
textValue5 = "11c53fdb49"
-- Beginner: this function handles network event "11c53fdb49".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = RequestAnimDict
  arg3 = textValue2
  arg2(arg3)
  while true do
    arg2 = HasAnimDictLoaded
    arg3 = textValue2
    arg2 = arg2(arg3)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 10
    arg2(arg3)
  end
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  arg3 = false
  arg2(arg3)
  arg2 = TaskPlayAnim
  arg3 = arg1
  playerIndex = textValue2
  workValue3 = textValue3
  flag10 = 8.0
  flag11 = -8.0
  numberValue3 = 3000
  numberValue4 = 0
  numberValue5 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  arg2(arg3, playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3)
  arg2 = RemoveAnimDict
  arg3 = textValue2
  arg2(arg3)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 3000
  arg2(arg3)
  arg2 = false
  flag8 = arg2
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  arg3 = true
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "11c53fdb49".
cmgCall2(textValue5, workValue)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2, arg3) ===
function cmgCall2(arg1, arg2, arg3)
  local playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5
  if "metpd" ~= arg1 then
    playerIndex = true
    return playerIndex
  end
  if "CID" == arg2 then
    playerIndex = GetPlayerPed
    workValue3 = arg3
    -- Beginner: result below is playerPed.
    playerIndex = playerIndex(workValue3)
    if 0 ~= playerIndex then
      workValue3 = GetPedDrawableVariation
      flag10 = playerIndex
      flag11 = 9
      workValue3 = workValue3(flag10, flag11)
      flag10 = CMG
      flag10 = flag10.doesClothingDrawableRequirePermission
      flag11 = CMG
      flag11 = flag11.getModelGender
      numberValue3 = playerIndex
      flag11 = flag11(numberValue3)
      numberValue3 = "Vests"
      numberValue4 = workValue3
      numberValue5 = "police"
      flag10 = flag10(flag11, numberValue3, numberValue4, numberValue5)
      if not flag10 then
        flag10 = true
        return flag10
      end
    end
  end
  playerIndex = false
  return playerIndex
end

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3, playerPed, flag4, flag5
  arg1 = 2.0
  arg2 = nil
  arg3 = ipairs
  playerIndex = GetActivePlayers
  playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3, playerPed, flag4, flag5 = playerIndex()
  arg3, playerIndex, workValue3, flag10 = arg3(playerIndex, workValue3, flag10, flag11, numberValue3, numberValue4, numberValue5, flag, flag2, flag3, playerPed, flag4, flag5)
  for flag11, numberValue3 in arg3, playerIndex, workValue3, flag10 do
    numberValue4 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    numberValue4 = numberValue4()
    if numberValue3 ~= numberValue4 then
      numberValue4 = GetPlayerServerId
      numberValue5 = numberValue3
      -- Beginner: result below is serverId.
      numberValue4 = numberValue4(numberValue5)
      numberValue5 = CMG
      numberValue5 = numberValue5.clientGetUserIdFromSource
      flag = numberValue4
      -- Beginner: result below is userId.
      numberValue5 = numberValue5(flag)
      flag = CMG
      flag = flag.getJobType
      flag2 = numberValue5
      flag, flag2 = flag(flag2)
      flag3 = cmgCall2
      playerPed = flag
      flag4 = flag2
      flag5 = numberValue3
      flag3 = flag3(playerPed, flag4, flag5)
      if flag3 and "hmp" ~= flag and "borderforce" ~= flag then
        flag3 = GetEntityCoords
        playerPed = GetPlayerPed
        flag4 = numberValue3
        -- Beginner: result below is playerPed.
        playerPed = playerPed(flag4)
        flag4 = true
        -- Beginner: result below is entityCoords.
        flag3 = flag3(playerPed, flag4)
        playerPed = CMG
        playerPed = playerPed.getPlayerCoords
        -- Beginner: result below is playerCoords.
        playerPed = playerPed()
        playerPed = flag3 - playerPed
        playerPed = #playerPed
        if arg1 > playerPed then
          arg1 = playerPed
          arg2 = numberValue4
        end
      end
    end
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2, arg3, playerIndex, workValue3, flag10, flag11, numberValue3
  arg1 = flag12
  if arg1 then
    arg1 = SetPedToRagdoll
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = 1000
    playerIndex = 1000
    workValue3 = 0
    flag10 = false
    flag11 = false
    numberValue3 = false
    arg1(arg2, arg3, playerIndex, workValue3, flag10, flag11, numberValue3)
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "prisonguard.onduty.permission"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.isPlayerNearPrison
      arg1 = arg1()
      if arg1 then
        goto flow_label_38
      end
    end
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "borderforce.onduty.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      goto flow_label_107
    end
  end
  ::flow_label_38::
  arg1 = IsControlPressed
  arg2 = 0
  arg3 = dataTable.LEFTSHIFT
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = dataTable.G
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = flag8
      if not arg1 then
        arg1 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg1 = arg1()
        arg2 = numberValue2
        arg1 = arg1 - arg2
        arg2 = 10000
        if arg1 > arg2 then
          arg1 = GetEntityHealth
          arg2 = PlayerPedId
          arg2, arg3, playerIndex, workValue3, flag10, flag11, numberValue3 = arg2()
          -- Beginner: result below is health.
          arg1 = arg1(arg2, arg3, playerIndex, workValue3, flag10, flag11, numberValue3)
          if arg1 > 102 then
            arg1 = CMG
            arg1 = arg1.isKnockedOut
            arg1 = arg1()
            if not arg1 then
              arg1 = textValue5
              arg1 = arg1()
              if arg1 then
                arg2 = flag8
                if not arg2 then
                  arg2 = flag9
                  if not arg2 then
                    arg2 = IsPedInAnyVehicle
                    arg3 = CMG
                    arg3 = arg3.getPlayerPed
                    -- Beginner: result below is localPlayerPed.
                    arg3 = arg3()
                    playerIndex = true
                    arg2 = arg2(arg3, playerIndex)
                    if not arg2 then
                      arg2 = IsPedInAnyVehicle
                      arg3 = GetPlayerPed
                      playerIndex = arg1
                      -- Beginner: result below is playerPed.
                      arg3 = arg3(playerIndex)
                      playerIndex = true
                      arg2 = arg2(arg3, playerIndex)
                      if not arg2 then
                        arg2 = true
                        flag8 = arg2
                        arg2 = GetGameTimer
                        -- Beginner: result below is gameTimeMs.
                        arg2 = arg2()
                        numberValue2 = arg2
                        arg2 = TriggerServerEvent
                        arg3 = "e17f0a16fb"
                        playerIndex = arg1
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e17f0a16fb".
                        arg2(arg3, playerIndex)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  ::flow_label_107::
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
workValue2 = workValue
textValue = "Tackling"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(workValue2, textValue)
