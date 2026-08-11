--[[
    LEVEL 1 BEGINNER GUIDE — Pushcar
    =====================================

    File: cmg/prod/client/misc/cl_pushcar.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Pushcar feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 3
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
local dataTable, flag, dataTable2, workValue5, workValue6, cmgCall2, workValue7, textValue2
dataTable = {}
dataTable.DamageNeeded = 200.0
dataTable.MaxWidth = 5.0
dataTable.MaxHeight = 5.0
dataTable.MaxLength = 5.0
flag = false
dataTable2 = {}
dataTable2.ESC = 322
dataTable2.F1 = 288
dataTable2.F2 = 289
dataTable2.F3 = 170
dataTable2.F5 = 166
dataTable2.F6 = 167
dataTable2.F7 = 168
dataTable2.F8 = 169
dataTable2.F9 = 56
dataTable2.F10 = 57
dataTable2["~"] = 243
dataTable2["1"] = 157
dataTable2["2"] = 158
dataTable2["3"] = 160
dataTable2["4"] = 164
dataTable2["5"] = 165
dataTable2["6"] = 159
dataTable2["7"] = 161
dataTable2["8"] = 162
dataTable2["9"] = 163
dataTable2["-"] = 84
dataTable2["="] = 83
dataTable2.BACKSPACE = 177
dataTable2.TAB = 37
dataTable2.Q = 44
dataTable2.W = 32
dataTable2.E = 38
dataTable2.R = 45
dataTable2.T = 245
dataTable2.Y = 246
dataTable2.U = 303
dataTable2.P = 199
dataTable2["["] = 39
dataTable2["]"] = 40
dataTable2.ENTER = 18
dataTable2.CAPS = 137
dataTable2.A = 34
dataTable2.S = 8
dataTable2.D = 9
dataTable2.F = 23
dataTable2.G = 47
dataTable2.H = 74
dataTable2.K = 311
dataTable2.L = 182
dataTable2.LEFTSHIFT = 21
dataTable2.Z = 20
dataTable2.X = 73
dataTable2.C = 26
dataTable2.V = 0
dataTable2.B = 29
dataTable2.N = 249
dataTable2.M = 244
dataTable2[","] = 82
dataTable2["."] = 81
dataTable2.LEFTCTRL = 36
dataTable2.LEFTALT = 19
dataTable2.SPACE = 22
dataTable2.RIGHTCTRL = 70
dataTable2.HOME = 213
dataTable2.PAGEUP = 10
dataTable2.PAGEDOWN = 11
dataTable2.DELETE = 178
dataTable2.LEFT = 174
dataTable2.RIGHT = 175
dataTable2.TOP = 27
dataTable2.DOWN = 173
dataTable2.NENTER = 201
dataTable2.N4 = 108
dataTable2.N5 = 60
dataTable2.N6 = 107
dataTable2["N+"] = 96
dataTable2["N-"] = 97
dataTable2.N7 = 117
dataTable2.N8 = 61
dataTable2.N9 = 118

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local vehicle, coords, modelHash, vector3Builder, vector3Builder2, numberValue7, numberValue8, coords2, workValue8, workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3
  vehicle = GetEntityForwardVector
  coords = arg1
  vehicle = vehicle(coords)
  vehicle = -vehicle
  coords = {}
  modelHash = "wheel_lr"
  vector3Builder = "wheel_rr"
  coords[1] = modelHash
  coords[2] = vector3Builder
  modelHash = ipairs
  vector3Builder = coords
  modelHash, vector3Builder, vector3Builder2, numberValue7 = modelHash(vector3Builder)
  for numberValue8, coords2 in modelHash, vector3Builder, vector3Builder2, numberValue7 do
    workValue8 = GetEntityBoneIndexByName
    workValue = arg1
    workValue2 = coords2
    workValue8 = workValue8(workValue, workValue2)
    workValue = GetWorldPositionOfEntityBone
    workValue2 = arg1
    workValue3 = workValue8
    workValue = workValue(workValue2, workValue3)
    workValue2 = vehicle * 4.0
    workValue2 = workValue + workValue2
    workValue3 = _ENV
    textValue = "StartExpensiveSynchronousShapeTestLosProbe"
    workValue3 = workValue3[textValue]
    textValue = workValue.x
    playerPed = workValue.y
    playerPed2 = workValue.z
    numberValue = workValue2.x
    numberValue2 = workValue2.y
    numberValue3 = workValue2.z
    numberValue4 = -1
    flag2 = arg1
    flag3 = 1
    workValue3 = workValue3(textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3)
    textValue = GetShapeTestResult
    playerPed = workValue3
    textValue, playerPed = textValue(playerPed)
    if 1 == playerPed then
      playerPed2 = true
      return playerPed2
    end
  end
  modelHash = GetEntityModel
  vector3Builder = arg1
  -- Beginner: result below is modelHash.
  modelHash = modelHash(vector3Builder)
  if 0 ~= modelHash then
    vector3Builder = vector3
    vector3Builder2 = 0.0
    numberValue7 = 0.0
    numberValue8 = 0.0
    vector3Builder = vector3Builder(vector3Builder2, numberValue7, numberValue8)
    vector3Builder2 = vector3
    numberValue7 = 5.0
    numberValue8 = 5.0
    coords2 = 5.0
    vector3Builder2 = vector3Builder2(numberValue7, numberValue8, coords2)
    numberValue7 = GetModelDimensions
    numberValue8 = modelHash
    coords2 = vector3Builder
    workValue8 = vector3Builder2
    numberValue7 = numberValue7(numberValue8, coords2, workValue8)
    numberValue8 = GetOffsetFromEntityInWorldCoords
    coords2 = arg1
    workValue8 = 0.0
    workValue = numberValue7.y
    workValue = workValue - 0.3
    workValue2 = numberValue7.z
    workValue2 = workValue2 + 1.0
    numberValue8 = numberValue8(coords2, workValue8, workValue, workValue2)
    coords2 = GetEntityCoords
    workValue8 = arg1
    workValue = true
    -- Beginner: result below is entityCoords.
    coords2 = coords2(workValue8, workValue)
    workValue8 = _ENV
    workValue = "StartExpensiveSynchronousShapeTestLosProbe"
    workValue8 = workValue8[workValue]
    workValue = numberValue8.x
    workValue2 = numberValue8.y
    workValue3 = numberValue8.z
    textValue = coords2.x
    playerPed = coords2.y
    playerPed2 = coords2.z
    numberValue = -1
    numberValue2 = arg1
    numberValue3 = 1
    workValue8 = workValue8(workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3)
    workValue = GetShapeTestResult
    workValue2 = workValue8
    workValue, workValue2, workValue3, textValue, playerPed = workValue(workValue2)
    if 0 ~= playerPed and playerPed ~= arg1 then
      playerPed2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed2 = playerPed2()
      if playerPed ~= playerPed2 then
        playerPed2 = true
        return playerPed2
      end
    end
  end
  vector3Builder = false
  return vector3Builder
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, vehicle, coords, modelHash, vector3Builder, vector3Builder2, numberValue7, numberValue8, coords2, workValue8, workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6
  arg1 = flag
  if arg1 then
    return
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  vehicle = GetVehiclePedIsIn
  coords = arg1
  modelHash = true
  -- Beginner: result below is currentVehicle.
  vehicle = vehicle(coords, modelHash)
  if 0 ~= vehicle then
    coords = GetEntityCoords
    modelHash = vehicle
    -- Beginner: result below is entityCoords.
    coords = coords(modelHash)
    modelHash = GetEntityCoords
    vector3Builder = vehicle
    -- Beginner: result below is entityCoords.
    modelHash = modelHash(vector3Builder)
    vector3Builder = GetEntityCoords
    vector3Builder2 = arg1
    -- Beginner: result below is entityCoords.
    vector3Builder = vector3Builder(vector3Builder2)
    vector3Builder2 = modelHash - vector3Builder
    vector3Builder2 = #vector3Builder2
    numberValue7 = IsVehicleSeatFree
    numberValue8 = vehicle
    coords2 = -1
    numberValue7 = numberValue7(numberValue8, coords2)
    if numberValue7 then
      numberValue7 = GetVehicleEngineHealth
      numberValue8 = vehicle
      numberValue7 = numberValue7(numberValue8)
      numberValue8 = dataTable.DamageNeeded
      if numberValue7 <= numberValue8 then
        numberValue7 = IsEntityInWater
        numberValue8 = vehicle
        numberValue7 = numberValue7(numberValue8)
        if not numberValue7 then
          if vector3Builder2 < 10 then
            numberValue7 = CMG
            numberValue7 = numberValue7.DrawText3D
            numberValue8 = coords
            coords2 = "Press [~g~SHIFT~w~] and [~g~E~w~] to push the vehicle"
            workValue8 = 0.2
            numberValue7(numberValue8, coords2, workValue8)
          end
      end
    end
    else
      numberValue7 = GetVehiclePedIsTryingToEnter
      numberValue8 = CMG
      numberValue8 = numberValue8.getPlayerPed
      numberValue8, coords2, workValue8, workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6 = numberValue8()
      numberValue7 = numberValue7(numberValue8, coords2, workValue8, workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6)
      vehicle = numberValue7
    end
    numberValue7 = IsControlPressed
    numberValue8 = 0
    coords2 = dataTable2.LEFTSHIFT
    numberValue7 = numberValue7(numberValue8, coords2)
    if numberValue7 then
      numberValue7 = GetEntityHealth
      numberValue8 = CMG
      numberValue8 = numberValue8.getPlayerPed
      numberValue8, coords2, workValue8, workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6 = numberValue8()
      -- Beginner: result below is health.
      numberValue7 = numberValue7(numberValue8, coords2, workValue8, workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6)
      if numberValue7 > 102 then
        numberValue7 = IsVehicleSeatFree
        numberValue8 = vehicle
        coords2 = -1
        numberValue7 = numberValue7(numberValue8, coords2)
        if numberValue7 then
          numberValue7 = IsEntityAttachedToEntity
          numberValue8 = arg1
          coords2 = vehicle
          numberValue7 = numberValue7(numberValue8, coords2)
          if not numberValue7 then
            numberValue7 = IsControlJustPressed
            numberValue8 = 0
            coords2 = dataTable2.E
            numberValue7 = numberValue7(numberValue8, coords2)
            if numberValue7 then
              numberValue7 = GetVehicleEngineHealth
              numberValue8 = vehicle
              numberValue7 = numberValue7(numberValue8)
              numberValue8 = dataTable.DamageNeeded
              if numberValue7 <= numberValue8 then
                numberValue7 = tCMG
                numberValue7 = numberValue7.canAnim
                numberValue7 = numberValue7()
                if numberValue7 then
                  numberValue7 = tCMG
                  numberValue7 = numberValue7.isTazed
                  numberValue7 = numberValue7()
                  if not numberValue7 then
                    numberValue7 = GetEntityCoords
                    numberValue8 = vehicle
                    -- Beginner: result below is entityCoords.
                    numberValue7 = numberValue7(numberValue8)
                    modelHash = numberValue7
                    numberValue7 = GetEntityCoords
                    numberValue8 = CMG
                    numberValue8 = numberValue8.getPlayerPed
                    numberValue8, coords2, workValue8, workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6 = numberValue8()
                    -- Beginner: result below is entityCoords.
                    numberValue7 = numberValue7(numberValue8, coords2, workValue8, workValue, workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6)
                    vector3Builder = numberValue7
                    numberValue7 = modelHash - vector3Builder
                    vector3Builder2 = #numberValue7
                    if vector3Builder2 < 10 then
                      numberValue7 = workValue5
                      numberValue8 = vehicle
                      numberValue7 = numberValue7(numberValue8)
                      if not numberValue7 then
                        numberValue7 = false
                        numberValue8 = GetEntityCoords
                        coords2 = arg1
                        -- Beginner: result below is entityCoords.
                        numberValue8 = numberValue8(coords2)
                        coords = numberValue8
                        numberValue8 = GetEntityCoords
                        coords2 = vehicle
                        -- Beginner: result below is entityCoords.
                        numberValue8 = numberValue8(coords2)
                        coords2 = GetEntityForwardVector
                        workValue8 = vehicle
                        coords2 = coords2(workValue8)
                        numberValue8 = numberValue8 + coords2
                        coords2 = GetEntityCoords
                        workValue8 = arg1
                        -- Beginner: result below is entityCoords.
                        coords2 = coords2(workValue8)
                        numberValue8 = numberValue8 - coords2
                        numberValue8 = #numberValue8
                        coords2 = GetEntityCoords
                        workValue8 = vehicle
                        -- Beginner: result below is entityCoords.
                        coords2 = coords2(workValue8)
                        workValue8 = GetEntityForwardVector
                        workValue = vehicle
                        workValue8 = workValue8(workValue)
                        workValue8 = workValue8 * -1
                        coords2 = coords2 + workValue8
                        workValue8 = GetEntityCoords
                        workValue = arg1
                        -- Beginner: result below is entityCoords.
                        workValue8 = workValue8(workValue)
                        coords2 = coords2 - workValue8
                        coords2 = #coords2
                        if numberValue8 > coords2 then
                          numberValue7 = false
                        else
                          numberValue7 = true
                        end
                        numberValue8 = vector3
                        coords2 = 0.0
                        workValue8 = 0.0
                        workValue = 0.0
                        numberValue8 = numberValue8(coords2, workValue8, workValue)
                        coords2 = vector3
                        workValue8 = 5.0
                        workValue = 5.0
                        workValue2 = 5.0
                        coords2 = coords2(workValue8, workValue, workValue2)
                        workValue8 = GetModelDimensions
                        workValue = GetEntityModel
                        workValue2 = vehicle
                        -- Beginner: result below is modelHash.
                        workValue = workValue(workValue2)
                        workValue2 = numberValue8
                        workValue3 = coords2
                        workValue8 = workValue8(workValue, workValue2, workValue3)
                        if numberValue7 then
                          workValue = AttachEntityToEntity
                          workValue2 = CMG
                          workValue2 = workValue2.getPlayerPed
                          -- Beginner: result below is localPlayerPed.
                          workValue2 = workValue2()
                          workValue3 = vehicle
                          textValue = GetPedBoneIndex
                          playerPed = PlayerPedId
                          -- Beginner: result below is localPlayerPed.
                          playerPed = playerPed()
                          playerPed2 = 6286
                          textValue = textValue(playerPed, playerPed2)
                          playerPed = 0.0
                          playerPed2 = workValue8.y
                          playerPed2 = playerPed2 * -1
                          playerPed2 = playerPed2 + 0.1
                          numberValue = workValue8.z
                          numberValue = numberValue + 1.0
                          numberValue2 = 0.0
                          numberValue3 = 0.0
                          numberValue4 = 180.0
                          flag2 = true
                          flag3 = false
                          flag4 = false
                          flag5 = true
                          numberValue5 = 0
                          flag6 = true
                          -- Beginner: Attach one entity to another entity.
                          workValue(workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6)
                        else
                          workValue = AttachEntityToEntity
                          workValue2 = CMG
                          workValue2 = workValue2.getPlayerPed
                          -- Beginner: result below is localPlayerPed.
                          workValue2 = workValue2()
                          workValue3 = vehicle
                          textValue = -1
                          playerPed = 0.0
                          playerPed2 = workValue8.y
                          playerPed2 = playerPed2 - 0.3
                          numberValue = workValue8.z
                          numberValue = numberValue + 1.0
                          numberValue2 = 0.0
                          numberValue3 = 0.0
                          numberValue4 = 0.0
                          flag2 = true
                          flag3 = false
                          flag4 = false
                          flag5 = true
                          numberValue5 = 0
                          flag6 = true
                          workValue(workValue2, workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4, flag5, numberValue5, flag6)
                        end
                        workValue = "missfinale_c2ig_11"
                        workValue2 = RequestAnimDict
                        workValue3 = workValue
                        workValue2(workValue3)
                        while true do
                          workValue2 = HasAnimDictLoaded
                          workValue3 = workValue
                          workValue2 = workValue2(workValue3)
                          if workValue2 then
                            break
                          end
                          workValue2 = Citizen
                          workValue2 = workValue2.Wait
                          workValue3 = 100
                          workValue2(workValue3)
                        end
                        workValue2 = TaskPlayAnim
                        workValue3 = arg1
                        textValue = "missfinale_c2ig_11"
                        playerPed = "pushcar_offcliff_m"
                        playerPed2 = 2.0
                        numberValue = -8.0
                        numberValue2 = -1
                        numberValue3 = 35
                        numberValue4 = 0
                        flag2 = false
                        flag3 = false
                        flag4 = false
                        -- Beginner: Play an animation on a ped.
                        workValue2(workValue3, textValue, playerPed, playerPed2, numberValue, numberValue2, numberValue3, numberValue4, flag2, flag3, flag4)
                        workValue2 = RemoveAnimDict
                        workValue3 = workValue
                        workValue2(workValue3)
                        workValue2 = Citizen
                        workValue2 = workValue2.Wait
                        workValue3 = 200
                        workValue2(workValue3)
                        workValue2 = vehicle
                        workValue3 = true
                        flag = workValue3
                        workValue3 = Citizen
                        workValue3 = workValue3.CreateThread

                        -- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
                        function textValue()
                          local waitCall, cmgCall, workValue4, flag7, numberValue6
                          while true do
                            waitCall = Citizen
                            waitCall = waitCall.Wait
                            cmgCall = 5
                            waitCall(cmgCall)
                            waitCall = IsDisabledControlPressed
                            cmgCall = 0
                            workValue4 = dataTable2.A
                            waitCall = waitCall(cmgCall, workValue4)
                            if waitCall then
                              waitCall = TaskVehicleTempAction
                              cmgCall = CMG
                              cmgCall = cmgCall.getPlayerPed
                              -- Beginner: result below is localPlayerPed.
                              cmgCall = cmgCall()
                              workValue4 = workValue2
                              flag7 = 11
                              numberValue6 = 1000
                              waitCall(cmgCall, workValue4, flag7, numberValue6)
                            end
                            waitCall = IsDisabledControlPressed
                            cmgCall = 0
                            workValue4 = dataTable2.D
                            waitCall = waitCall(cmgCall, workValue4)
                            if waitCall then
                              waitCall = TaskVehicleTempAction
                              cmgCall = CMG
                              cmgCall = cmgCall.getPlayerPed
                              -- Beginner: result below is localPlayerPed.
                              cmgCall = cmgCall()
                              workValue4 = workValue2
                              flag7 = 10
                              numberValue6 = 1000
                              waitCall(cmgCall, workValue4, flag7, numberValue6)
                            end
                            waitCall = numberValue7
                            if waitCall then
                              waitCall = SetVehicleForwardSpeed
                              cmgCall = workValue2
                              workValue4 = -1.0
                              waitCall(cmgCall, workValue4)
                            else
                              waitCall = SetVehicleForwardSpeed
                              cmgCall = workValue2
                              workValue4 = 1.0
                              waitCall(cmgCall, workValue4)
                            end
                            waitCall = HasEntityCollidedWithAnything
                            cmgCall = workValue2
                            waitCall = waitCall(cmgCall)
                            if waitCall then
                              waitCall = SetVehicleOnGroundProperly
                              cmgCall = workValue2
                              waitCall(cmgCall)
                            end
                            waitCall = IsDisabledControlPressed
                            cmgCall = 0
                            workValue4 = dataTable2.E
                            waitCall = waitCall(cmgCall, workValue4)
                            if waitCall then
                              waitCall = IsEntityInWater
                              cmgCall = workValue2
                              waitCall = waitCall(cmgCall)
                              if not waitCall then
                                goto flow_label_80
                              end
                            end
                            waitCall = DetachEntity
                            cmgCall = arg1
                            workValue4 = false
                            flag7 = false
                            waitCall(cmgCall, workValue4, flag7)
                            waitCall = StopAnimTask
                            cmgCall = arg1
                            workValue4 = "missfinale_c2ig_11"
                            flag7 = "pushcar_offcliff_m"
                            numberValue6 = 2.0
                            waitCall(cmgCall, workValue4, flag7, numberValue6)
                            waitCall = FreezeEntityPosition
                            cmgCall = arg1
                            workValue4 = false
                            -- Beginner: Freeze or unfreeze an entity in place.
                            waitCall(cmgCall, workValue4)
                            do break end
                            ::flow_label_80::
                          end
                          waitCall = false
                          flag = waitCall
                        end
                        -- Beginner: Start a separate FiveM thread so this code can run independently.
                        workValue3(textValue)
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
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
workValue7 = workValue6
textValue2 = "Push Car"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(workValue7, textValue2)
