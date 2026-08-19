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
local dataCollection, stateFlag, dataCollection2, workingValue5, workingValue6, cmgOperation2, workingValue7, text2
dataCollection = {}
dataCollection.DamageNeeded = 200.0
dataCollection.MaxWidth = 5.0
dataCollection.MaxHeight = 5.0
dataCollection.MaxLength = 5.0
stateFlag = false
dataCollection2 = {}
dataCollection2.ESC = 322
dataCollection2.F1 = 288
dataCollection2.F2 = 289
dataCollection2.F3 = 170
dataCollection2.F5 = 166
dataCollection2.F6 = 167
dataCollection2.F7 = 168
dataCollection2.F8 = 169
dataCollection2.F9 = 56
dataCollection2.F10 = 57
dataCollection2["~"] = 243
dataCollection2["1"] = 157
dataCollection2["2"] = 158
dataCollection2["3"] = 160
dataCollection2["4"] = 164
dataCollection2["5"] = 165
dataCollection2["6"] = 159
dataCollection2["7"] = 161
dataCollection2["8"] = 162
dataCollection2["9"] = 163
dataCollection2["-"] = 84
dataCollection2["="] = 83
dataCollection2.BACKSPACE = 177
dataCollection2.TAB = 37
dataCollection2.Q = 44
dataCollection2.W = 32
dataCollection2.E = 38
dataCollection2.R = 45
dataCollection2.T = 245
dataCollection2.Y = 246
dataCollection2.U = 303
dataCollection2.P = 199
dataCollection2["["] = 39
dataCollection2["]"] = 40
dataCollection2.ENTER = 18
dataCollection2.CAPS = 137
dataCollection2.A = 34
dataCollection2.S = 8
dataCollection2.D = 9
dataCollection2.F = 23
dataCollection2.G = 47
dataCollection2.H = 74
dataCollection2.K = 311
dataCollection2.L = 182
dataCollection2.LEFTSHIFT = 21
dataCollection2.Z = 20
dataCollection2.X = 73
dataCollection2.C = 26
dataCollection2.V = 0
dataCollection2.B = 29
dataCollection2.N = 249
dataCollection2.M = 244
dataCollection2[","] = 82
dataCollection2["."] = 81
dataCollection2.LEFTCTRL = 36
dataCollection2.LEFTALT = 19
dataCollection2.SPACE = 22
dataCollection2.RIGHTCTRL = 70
dataCollection2.HOME = 213
dataCollection2.PAGEUP = 10
dataCollection2.PAGEDOWN = 11
dataCollection2.DELETE = 178
dataCollection2.LEFT = 174
dataCollection2.RIGHT = 175
dataCollection2.TOP = 27
dataCollection2.DOWN = 173
dataCollection2.NENTER = 201
dataCollection2.N4 = 108
dataCollection2.N5 = 60
dataCollection2.N6 = 107
dataCollection2["N+"] = 96
dataCollection2["N-"] = 97
dataCollection2.N7 = 117
dataCollection2.N8 = 61
dataCollection2.N9 = 118

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local vehicle, coords, modelHash, createVector3, createVector32, number7, number8, coords2, workingValue8, workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3
  vehicle = GetEntityForwardVector
  coords = localValue1
  vehicle = vehicle(coords)
  vehicle = -vehicle
  coords = {}
  modelHash = "wheel_lr"
  createVector3 = "wheel_rr"
  coords[1] = modelHash
  coords[2] = createVector3
  modelHash = ipairs
  createVector3 = coords
  modelHash, createVector3, createVector32, number7 = modelHash(createVector3)
  for number8, coords2 in modelHash, createVector3, createVector32, number7 do
    workingValue8 = GetEntityBoneIndexByName
    workingValue = localValue1
    workingValue2 = coords2
    workingValue8 = workingValue8(workingValue, workingValue2)
    workingValue = GetWorldPositionOfEntityBone
    workingValue2 = localValue1
    workingValue3 = workingValue8
    workingValue = workingValue(workingValue2, workingValue3)
    workingValue2 = vehicle * 4.0
    workingValue2 = workingValue + workingValue2
    workingValue3 = _ENV
    text = "StartExpensiveSynchronousShapeTestLosProbe"
    workingValue3 = workingValue3[text]
    text = workingValue.x
    playerPed = workingValue.y
    playerPed2 = workingValue.z
    number = workingValue2.x
    number2 = workingValue2.y
    number3 = workingValue2.z
    number4 = -1
    stateFlag2 = localValue1
    stateFlag3 = 1
    workingValue3 = workingValue3(text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3)
    text = GetShapeTestResult
    playerPed = workingValue3
    text, playerPed = text(playerPed)
    if 1 == playerPed then
      playerPed2 = true
      return playerPed2
    end
  end
  modelHash = GetEntityModel
  createVector3 = localValue1
  -- Beginner: result below is modelHash.
  modelHash = modelHash(createVector3)
  if 0 ~= modelHash then
    createVector3 = vector3
    createVector32 = 0.0
    number7 = 0.0
    number8 = 0.0
    createVector3 = createVector3(createVector32, number7, number8)
    createVector32 = vector3
    number7 = 5.0
    number8 = 5.0
    coords2 = 5.0
    createVector32 = createVector32(number7, number8, coords2)
    number7 = GetModelDimensions
    number8 = modelHash
    coords2 = createVector3
    workingValue8 = createVector32
    number7 = number7(number8, coords2, workingValue8)
    number8 = GetOffsetFromEntityInWorldCoords
    coords2 = localValue1
    workingValue8 = 0.0
    workingValue = number7.y
    workingValue = workingValue - 0.3
    workingValue2 = number7.z
    workingValue2 = workingValue2 + 1.0
    number8 = number8(coords2, workingValue8, workingValue, workingValue2)
    coords2 = GetEntityCoords
    workingValue8 = localValue1
    workingValue = true
    -- Beginner: result below is entityCoords.
    coords2 = coords2(workingValue8, workingValue)
    workingValue8 = _ENV
    workingValue = "StartExpensiveSynchronousShapeTestLosProbe"
    workingValue8 = workingValue8[workingValue]
    workingValue = number8.x
    workingValue2 = number8.y
    workingValue3 = number8.z
    text = coords2.x
    playerPed = coords2.y
    playerPed2 = coords2.z
    number = -1
    number2 = localValue1
    number3 = 1
    workingValue8 = workingValue8(workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3)
    workingValue = GetShapeTestResult
    workingValue2 = workingValue8
    workingValue, workingValue2, workingValue3, text, playerPed = workingValue(workingValue2)
    if 0 ~= playerPed and playerPed ~= localValue1 then
      playerPed2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed2 = playerPed2()
      if playerPed ~= playerPed2 then
        playerPed2 = true
        return playerPed2
      end
    end
  end
  createVector3 = false
  return createVector3
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, vehicle, coords, modelHash, createVector3, createVector32, number7, number8, coords2, workingValue8, workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6
  localValue1 = stateFlag
  if localValue1 then
    return
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  vehicle = GetVehiclePedIsIn
  coords = localValue1
  modelHash = true
  -- Beginner: result below is currentVehicle.
  vehicle = vehicle(coords, modelHash)
  if 0 ~= vehicle then
    coords = GetEntityCoords
    modelHash = vehicle
    -- Beginner: result below is entityCoords.
    coords = coords(modelHash)
    modelHash = GetEntityCoords
    createVector3 = vehicle
    -- Beginner: result below is entityCoords.
    modelHash = modelHash(createVector3)
    createVector3 = GetEntityCoords
    createVector32 = localValue1
    -- Beginner: result below is entityCoords.
    createVector3 = createVector3(createVector32)
    createVector32 = modelHash - createVector3
    createVector32 = #createVector32
    number7 = IsVehicleSeatFree
    number8 = vehicle
    coords2 = -1
    number7 = number7(number8, coords2)
    if number7 then
      number7 = GetVehicleEngineHealth
      number8 = vehicle
      number7 = number7(number8)
      number8 = dataCollection.DamageNeeded
      if number7 <= number8 then
        number7 = IsEntityInWater
        number8 = vehicle
        number7 = number7(number8)
        if not number7 then
          if createVector32 < 10 then
            number7 = CMG
            number7 = number7.DrawText3D
            number8 = coords
            coords2 = "Press [~g~SHIFT~w~] and [~g~E~w~] to push the vehicle"
            workingValue8 = 0.2
            number7(number8, coords2, workingValue8)
          end
      end
    end
    else
      number7 = GetVehiclePedIsTryingToEnter
      number8 = CMG
      number8 = number8.getPlayerPed
      number8, coords2, workingValue8, workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6 = number8()
      number7 = number7(number8, coords2, workingValue8, workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6)
      vehicle = number7
    end
    number7 = IsControlPressed
    number8 = 0
    coords2 = dataCollection2.LEFTSHIFT
    number7 = number7(number8, coords2)
    if number7 then
      number7 = GetEntityHealth
      number8 = CMG
      number8 = number8.getPlayerPed
      number8, coords2, workingValue8, workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6 = number8()
      -- Beginner: result below is health.
      number7 = number7(number8, coords2, workingValue8, workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6)
      if number7 > 102 then
        number7 = IsVehicleSeatFree
        number8 = vehicle
        coords2 = -1
        number7 = number7(number8, coords2)
        if number7 then
          number7 = IsEntityAttachedToEntity
          number8 = localValue1
          coords2 = vehicle
          number7 = number7(number8, coords2)
          if not number7 then
            number7 = IsControlJustPressed
            number8 = 0
            coords2 = dataCollection2.E
            number7 = number7(number8, coords2)
            if number7 then
              number7 = GetVehicleEngineHealth
              number8 = vehicle
              number7 = number7(number8)
              number8 = dataCollection.DamageNeeded
              if number7 <= number8 then
                number7 = tCMG
                number7 = number7.canAnim
                number7 = number7()
                if number7 then
                  number7 = tCMG
                  number7 = number7.isTazed
                  number7 = number7()
                  if not number7 then
                    number7 = GetEntityCoords
                    number8 = vehicle
                    -- Beginner: result below is entityCoords.
                    number7 = number7(number8)
                    modelHash = number7
                    number7 = GetEntityCoords
                    number8 = CMG
                    number8 = number8.getPlayerPed
                    number8, coords2, workingValue8, workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6 = number8()
                    -- Beginner: result below is entityCoords.
                    number7 = number7(number8, coords2, workingValue8, workingValue, workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6)
                    createVector3 = number7
                    number7 = modelHash - createVector3
                    createVector32 = #number7
                    if createVector32 < 10 then
                      number7 = workingValue5
                      number8 = vehicle
                      number7 = number7(number8)
                      if not number7 then
                        number7 = false
                        number8 = GetEntityCoords
                        coords2 = localValue1
                        -- Beginner: result below is entityCoords.
                        number8 = number8(coords2)
                        coords = number8
                        number8 = GetEntityCoords
                        coords2 = vehicle
                        -- Beginner: result below is entityCoords.
                        number8 = number8(coords2)
                        coords2 = GetEntityForwardVector
                        workingValue8 = vehicle
                        coords2 = coords2(workingValue8)
                        number8 = number8 + coords2
                        coords2 = GetEntityCoords
                        workingValue8 = localValue1
                        -- Beginner: result below is entityCoords.
                        coords2 = coords2(workingValue8)
                        number8 = number8 - coords2
                        number8 = #number8
                        coords2 = GetEntityCoords
                        workingValue8 = vehicle
                        -- Beginner: result below is entityCoords.
                        coords2 = coords2(workingValue8)
                        workingValue8 = GetEntityForwardVector
                        workingValue = vehicle
                        workingValue8 = workingValue8(workingValue)
                        workingValue8 = workingValue8 * -1
                        coords2 = coords2 + workingValue8
                        workingValue8 = GetEntityCoords
                        workingValue = localValue1
                        -- Beginner: result below is entityCoords.
                        workingValue8 = workingValue8(workingValue)
                        coords2 = coords2 - workingValue8
                        coords2 = #coords2
                        if number8 > coords2 then
                          number7 = false
                        else
                          number7 = true
                        end
                        number8 = vector3
                        coords2 = 0.0
                        workingValue8 = 0.0
                        workingValue = 0.0
                        number8 = number8(coords2, workingValue8, workingValue)
                        coords2 = vector3
                        workingValue8 = 5.0
                        workingValue = 5.0
                        workingValue2 = 5.0
                        coords2 = coords2(workingValue8, workingValue, workingValue2)
                        workingValue8 = GetModelDimensions
                        workingValue = GetEntityModel
                        workingValue2 = vehicle
                        -- Beginner: result below is modelHash.
                        workingValue = workingValue(workingValue2)
                        workingValue2 = number8
                        workingValue3 = coords2
                        workingValue8 = workingValue8(workingValue, workingValue2, workingValue3)
                        if number7 then
                          workingValue = AttachEntityToEntity
                          workingValue2 = CMG
                          workingValue2 = workingValue2.getPlayerPed
                          -- Beginner: result below is localPlayerPed.
                          workingValue2 = workingValue2()
                          workingValue3 = vehicle
                          text = GetPedBoneIndex
                          playerPed = PlayerPedId
                          -- Beginner: result below is localPlayerPed.
                          playerPed = playerPed()
                          playerPed2 = 6286
                          text = text(playerPed, playerPed2)
                          playerPed = 0.0
                          playerPed2 = workingValue8.y
                          playerPed2 = playerPed2 * -1
                          playerPed2 = playerPed2 + 0.1
                          number = workingValue8.z
                          number = number + 1.0
                          number2 = 0.0
                          number3 = 0.0
                          number4 = 180.0
                          stateFlag2 = true
                          stateFlag3 = false
                          stateFlag4 = false
                          stateFlag5 = true
                          number5 = 0
                          stateFlag6 = true
                          -- Beginner: Attach one entity to another entity.
                          workingValue(workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6)
                        else
                          workingValue = AttachEntityToEntity
                          workingValue2 = CMG
                          workingValue2 = workingValue2.getPlayerPed
                          -- Beginner: result below is localPlayerPed.
                          workingValue2 = workingValue2()
                          workingValue3 = vehicle
                          text = -1
                          playerPed = 0.0
                          playerPed2 = workingValue8.y
                          playerPed2 = playerPed2 - 0.3
                          number = workingValue8.z
                          number = number + 1.0
                          number2 = 0.0
                          number3 = 0.0
                          number4 = 0.0
                          stateFlag2 = true
                          stateFlag3 = false
                          stateFlag4 = false
                          stateFlag5 = true
                          number5 = 0
                          stateFlag6 = true
                          workingValue(workingValue2, workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number5, stateFlag6)
                        end
                        workingValue = "missfinale_c2ig_11"
                        workingValue2 = RequestAnimDict
                        workingValue3 = workingValue
                        workingValue2(workingValue3)
                        while true do
                          workingValue2 = HasAnimDictLoaded
                          workingValue3 = workingValue
                          workingValue2 = workingValue2(workingValue3)
                          if workingValue2 then
                            break
                          end
                          workingValue2 = Citizen
                          workingValue2 = workingValue2.Wait
                          workingValue3 = 100
                          workingValue2(workingValue3)
                        end
                        workingValue2 = TaskPlayAnim
                        workingValue3 = localValue1
                        text = "missfinale_c2ig_11"
                        playerPed = "pushcar_offcliff_m"
                        playerPed2 = 2.0
                        number = -8.0
                        number2 = -1
                        number3 = 35
                        number4 = 0
                        stateFlag2 = false
                        stateFlag3 = false
                        stateFlag4 = false
                        -- Beginner: Play an animation on a ped.
                        workingValue2(workingValue3, text, playerPed, playerPed2, number, number2, number3, number4, stateFlag2, stateFlag3, stateFlag4)
                        workingValue2 = RemoveAnimDict
                        workingValue3 = workingValue
                        workingValue2(workingValue3)
                        workingValue2 = Citizen
                        workingValue2 = workingValue2.Wait
                        workingValue3 = 200
                        workingValue2(workingValue3)
                        workingValue2 = vehicle
                        workingValue3 = true
                        stateFlag = workingValue3
                        workingValue3 = Citizen
                        workingValue3 = workingValue3.CreateThread

                        -- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
                        function text()
                          local waitCall, cmgOperation, workingValue4, stateFlag7, number6
                          while true do
                            waitCall = Citizen
                            waitCall = waitCall.Wait
                            cmgOperation = 5
                            waitCall(cmgOperation)
                            waitCall = IsDisabledControlPressed
                            cmgOperation = 0
                            workingValue4 = dataCollection2.A
                            waitCall = waitCall(cmgOperation, workingValue4)
                            if waitCall then
                              waitCall = TaskVehicleTempAction
                              cmgOperation = CMG
                              cmgOperation = cmgOperation.getPlayerPed
                              -- Beginner: result below is localPlayerPed.
                              cmgOperation = cmgOperation()
                              workingValue4 = workingValue2
                              stateFlag7 = 11
                              number6 = 1000
                              waitCall(cmgOperation, workingValue4, stateFlag7, number6)
                            end
                            waitCall = IsDisabledControlPressed
                            cmgOperation = 0
                            workingValue4 = dataCollection2.D
                            waitCall = waitCall(cmgOperation, workingValue4)
                            if waitCall then
                              waitCall = TaskVehicleTempAction
                              cmgOperation = CMG
                              cmgOperation = cmgOperation.getPlayerPed
                              -- Beginner: result below is localPlayerPed.
                              cmgOperation = cmgOperation()
                              workingValue4 = workingValue2
                              stateFlag7 = 10
                              number6 = 1000
                              waitCall(cmgOperation, workingValue4, stateFlag7, number6)
                            end
                            waitCall = number7
                            if waitCall then
                              waitCall = SetVehicleForwardSpeed
                              cmgOperation = workingValue2
                              workingValue4 = -1.0
                              waitCall(cmgOperation, workingValue4)
                            else
                              waitCall = SetVehicleForwardSpeed
                              cmgOperation = workingValue2
                              workingValue4 = 1.0
                              waitCall(cmgOperation, workingValue4)
                            end
                            waitCall = HasEntityCollidedWithAnything
                            cmgOperation = workingValue2
                            waitCall = waitCall(cmgOperation)
                            if waitCall then
                              waitCall = SetVehicleOnGroundProperly
                              cmgOperation = workingValue2
                              waitCall(cmgOperation)
                            end
                            waitCall = IsDisabledControlPressed
                            cmgOperation = 0
                            workingValue4 = dataCollection2.E
                            waitCall = waitCall(cmgOperation, workingValue4)
                            if waitCall then
                              waitCall = IsEntityInWater
                              cmgOperation = workingValue2
                              waitCall = waitCall(cmgOperation)
                              if not waitCall then
                                goto continueAtStep80
                              end
                            end
                            waitCall = DetachEntity
                            cmgOperation = localValue1
                            workingValue4 = false
                            stateFlag7 = false
                            waitCall(cmgOperation, workingValue4, stateFlag7)
                            waitCall = StopAnimTask
                            cmgOperation = localValue1
                            workingValue4 = "missfinale_c2ig_11"
                            stateFlag7 = "pushcar_offcliff_m"
                            number6 = 2.0
                            waitCall(cmgOperation, workingValue4, stateFlag7, number6)
                            waitCall = FreezeEntityPosition
                            cmgOperation = localValue1
                            workingValue4 = false
                            -- Beginner: Freeze or unfreeze an entity in place.
                            waitCall(cmgOperation, workingValue4)
                            do break end
                            ::continueAtStep80::
                          end
                          waitCall = false
                          stateFlag = waitCall
                        end
                        -- Beginner: Start a separate FiveM thread so this code can run independently.
                        workingValue3(text)
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
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
workingValue7 = workingValue6
text2 = "Push Car"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(workingValue7, text2)
