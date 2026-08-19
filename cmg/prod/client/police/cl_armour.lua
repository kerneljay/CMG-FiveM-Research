--[[
    LEVEL 1 BEGINNER GUIDE — Armour
    ====================================

    File: cmg/prod/client/police/cl_armour.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Armour feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 15
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
local dataCollection, dataCollection2, createVector36, createVector37, createVector38, createVector39, createVector310, createVector311, createVector312, createVector313, createVector3, createVector32, createVector33, createVector34, createVector35, number2, number4, number6
dataCollection = {}
dataCollection2 = {}
createVector36 = vector3
createVector37 = 459.33172607422
createVector38 = -979.49810791016
createVector39 = 30.689582824708
createVector36 = createVector36(createVector37, createVector38, createVector39)
dataCollection2.position = createVector36
dataCollection2.permission = "cop.whitelisted"
createVector36 = {}
createVector37 = vector3
createVector38 = 1841.6328125
createVector39 = 3690.603515625
createVector310 = 34.26708984375
createVector37 = createVector37(createVector38, createVector39, createVector310)
createVector36.position = createVector37
createVector36.permission = "cop.whitelisted"
createVector37 = {}
createVector38 = vector3
createVector39 = -1106.9595947266
createVector310 = -824.35784912109
createVector311 = 14.282789230347
createVector38 = createVector38(createVector39, createVector310, createVector311)
createVector37.position = createVector38
createVector37.permission = "cop.whitelisted"
createVector38 = {}
createVector39 = vector3
createVector310 = -447.70739746094
createVector311 = 6013.6123046875
createVector312 = 31.716396331787
createVector39 = createVector39(createVector310, createVector311, createVector312)
createVector38.position = createVector39
createVector38.permission = "cop.whitelisted"
createVector39 = {}
createVector310 = vector3
createVector311 = 1539.0798339844
createVector312 = 795.29608154297
createVector313 = 78.693008422852
createVector310 = createVector310(createVector311, createVector312, createVector313)
createVector39.position = createVector310
createVector39.permission = "cop.whitelisted"
createVector310 = {}
createVector311 = vector3
createVector312 = 1764.9135742188
createVector313 = 2587.9736328125
createVector3 = 46.001010894775
createVector311 = createVector311(createVector312, createVector313, createVector3)
createVector310.position = createVector311
createVector310.permission = "prisonguard.whitelisted"
createVector311 = {}
createVector312 = vector3
createVector313 = -2438.9677734375
createVector3 = -249.46469116211
createVector32 = 16.358680725098
createVector312 = createVector312(createVector313, createVector3, createVector32)
createVector311.position = createVector312
createVector311.permission = "borderforce.whitelisted"
createVector312 = {}
createVector313 = vector3
createVector3 = 1302.6427001953
createVector32 = 616.08892822266
createVector33 = 80.330574035645
createVector313 = createVector313(createVector3, createVector32, createVector33)
createVector312.position = createVector313
createVector312.permission = "borderforce.whitelisted"
createVector313 = {}
createVector3 = vector3
createVector32 = 2418.9753417969
createVector33 = -184.60707092285
createVector34 = 87.478393554688
createVector3 = createVector3(createVector32, createVector33, createVector34)
createVector313.position = createVector3
createVector313.permission = "borderforce.whitelisted"
createVector3 = {}
createVector32 = vector3
createVector33 = -433.68515014648
createVector34 = -319.22576904297
createVector35 = 34.910751342773
createVector32 = createVector32(createVector33, createVector34, createVector35)
createVector3.position = createVector32
createVector3.permission = "nhs.onduty.permission"
createVector32 = {}
createVector33 = vector3
createVector34 = 257.38790893555
createVector35 = 6333.384765625
number2 = 32.427223205566
createVector33 = createVector33(createVector34, createVector35, number2)
createVector32.position = createVector33
createVector32.permission = "nhs.onduty.permission"
createVector33 = {}
createVector34 = vector3
createVector35 = 314.72796630859
number2 = -566.34704589844
number4 = 75.724975585938
createVector34 = createVector34(createVector35, number2, number4)
createVector33.position = createVector34
createVector33.permission = "nhs.onduty.permission"
createVector34 = {}
createVector35 = vector3
number2 = 1838.9287109375
number4 = 3682.7348632812
number6 = 34.270023345947
createVector35 = createVector35(number2, number4, number6)
createVector34.position = createVector35
createVector34.permission = "nhs.onduty.permission"
dataCollection[1] = dataCollection2
dataCollection[2] = createVector36
dataCollection[3] = createVector37
dataCollection[4] = createVector38
dataCollection[5] = createVector39
dataCollection[6] = createVector310
dataCollection[7] = createVector311
dataCollection[8] = createVector312
dataCollection[9] = createVector313
dataCollection[10] = createVector3
dataCollection[11] = createVector32
dataCollection[12] = createVector33
dataCollection[13] = createVector34
dataCollection2 = {}
createVector36 = vector3
createVector37 = 454.01052856445
createVector38 = -1024.8431396484
createVector39 = 28.496109008789
createVector36, createVector37, createVector38, createVector39, createVector310, createVector311, createVector312, createVector313, createVector3, createVector32, createVector33, createVector34, createVector35, number2, number4, number6 = createVector36(createVector37, createVector38, createVector39)
dataCollection2[1] = createVector36
dataCollection2[2] = createVector37
dataCollection2[3] = createVector38
dataCollection2[4] = createVector39
dataCollection2[5] = createVector310
dataCollection2[6] = createVector311
dataCollection2[7] = createVector312
dataCollection2[8] = createVector313
dataCollection2[9] = createVector3
dataCollection2[10] = createVector32
dataCollection2[11] = createVector33
dataCollection2[12] = createVector34
dataCollection2[13] = createVector35
dataCollection2[14] = number2
dataCollection2[15] = number4
dataCollection2[16] = number6
createVector36 = AddEventHandler
createVector37 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: createVector38; parameters: localValue1, localValue2) ===
function createVector38(localValue1, localValue2)
  local workingValue, cmgOperation3, playerPed2, playerPed3, cmgOperation4, dataCollection3, cmgOperation5, text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
    function workingValue()
      local cmgOperation, text2
      cmgOperation = drawNativeNotification
      text2 = "Press ~INPUT_PICKUP~ to Pickup Armour"
      -- Beginner: Show a GTA-style notification/help prompt.
      cmgOperation(text2)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local cmgOperation, text2
    end

    -- === HELPER FUNCTION: playerPed2() ===
    function playerPed2()
      local cmgOperation, text2, number8, text3, text4, stateFlag10
      cmgOperation = IsControlJustPressed
      text2 = 1
      number8 = 51
      cmgOperation = cmgOperation(text2, number8)
      if cmgOperation then
        cmgOperation = CMG
        cmgOperation = cmgOperation.hasClientPermission
        text2 = "police.onduty.permission"
        cmgOperation = cmgOperation(text2)
        if not cmgOperation then
          cmgOperation = CMG
          cmgOperation = cmgOperation.hasClientPermission
          text2 = "prisonguard.onduty.permission"
          cmgOperation = cmgOperation(text2)
          if not cmgOperation then
            cmgOperation = CMG
            cmgOperation = cmgOperation.hasClientPermission
            text2 = "nhs.onduty.permission"
            cmgOperation = cmgOperation(text2)
            if not cmgOperation then
              goto continueAtStep40
            end
          end
        end
        cmgOperation = TriggerServerEvent
        text2 = "53d18271be"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53d18271be".
        cmgOperation(text2)
        cmgOperation = GetSoundId
        -- Beginner: result below is soundHandle.
        cmgOperation = cmgOperation()
        text2 = PlaySoundFrontend
        number8 = cmgOperation
        text3 = "Armour_On"
        text4 = "DLC_GR_Steal_Miniguns_Sounds"
        stateFlag10 = true
        text2(number8, text3, text4, stateFlag10)
        text2 = ReleaseSoundId
        number8 = cmgOperation
        text2(number8)
        goto continueAtStep44
        ::continueAtStep40::
        cmgOperation = tCMG
        cmgOperation = cmgOperation.notify
        text2 = "~r~You shouldn't be here...Engaging defenses in 3..2..1..."
        -- Beginner: Show a notification to the player.
        cmgOperation(text2)
      end
      ::continueAtStep44::
    end
    playerPed3 = pairs
    cmgOperation4 = dataCollection
    playerPed3, cmgOperation4, dataCollection3, cmgOperation5 = playerPed3(cmgOperation4)
    for text5, playerPed in playerPed3, cmgOperation4, dataCollection3, cmgOperation5 do
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.hasClientPermission
      text = playerPed.permission
      cmgOperation2 = cmgOperation2(text)
      if cmgOperation2 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.createArea
        text = "armour_"
        position = text5
        text = text .. position
        position = playerPed.position
        number = 1.5
        number3 = 6
        number5 = workingValue
        stateFlag = cmgOperation3
        stateFlag2 = playerPed2
        -- Beginner: Create an interaction area around a world position.
        cmgOperation2(text, position, number, number3, number5, stateFlag, stateFlag2)
        cmgOperation2 = tCMG
        cmgOperation2 = cmgOperation2.addPropMarker
        text = "bzzz_marker_mask_blue_anim"
        position = playerPed.position
        position = position.x
        number = playerPed.position
        number = number.y
        number3 = playerPed.position
        number3 = number3.z
        number5 = 20.0
        -- Beginner: Create a prop-style world marker.
        cmgOperation2(text, position, number, number3, number5)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
createVector36(createVector37, createVector38)
createVector36 = false
createVector37 = false
createVector38 = 0
createVector39 = CMG

-- === HELPER FUNCTION (decompiler name: createVector310; parameters: none) ===
function createVector310()
  local localValue1, localValue2
  localValue1 = createVector36
  if not localValue1 then
    localValue1 = GetPedType
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue1 = localValue1(localValue2)
    localValue1 = 28 == localValue1
  end
  return localValue1
end
createVector39.isPlayerInAnimalForm = createVector310
createVector39 = CMG

-- === HELPER FUNCTION (decompiler name: createVector310; parameters: none) ===
function createVector310()
  local localValue1, localValue2
  localValue1 = createVector37
  return localValue1
end
createVector39.isPoliceHorse = createVector310
createVector39 = CMG

-- === HELPER FUNCTION (decompiler name: createVector310; parameters: localValue1) ===
function createVector310(localValue1)
  local localValue2
  createVector37 = localValue1
end
createVector39.setInPoliceHorseDelayed = createVector310

-- === HELPER FUNCTION (decompiler name: createVector39; parameters: none) ===
function createVector39()
  local localValue1, localValue2, workingValue, cmgOperation3, playerPed2, playerPed3, cmgOperation4, dataCollection3, cmgOperation5, text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = IsPedFalling
  workingValue = localValue1
  localValue2 = localValue2(workingValue)
  if not localValue2 then
    localValue2 = IsPedRagdoll
    workingValue = localValue1
    localValue2 = localValue2(workingValue)
    if not localValue2 then
      localValue2 = GetEntityHealth
      workingValue = localValue1
      -- Beginner: result below is health.
      localValue2 = localValue2(workingValue)
      if not (localValue2 <= 102) then
        localValue2 = IsPedInParachuteFreeFall
        workingValue = localValue1
        localValue2 = localValue2(workingValue)
        if not localValue2 then
          goto continueAtStep27
        end
      end
    end
  end
  localValue2 = notify
  workingValue = "~r~You can not get a horse out at this time."
  -- Beginner: Show a notification to the player.
  localValue2(workingValue)
  return
  ::continueAtStep27::
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  workingValue = createVector38
  localValue2 = localValue2 - workingValue
  workingValue = 10000
  if localValue2 < workingValue then
    localValue2 = notify
    workingValue = "~r~Please wait at least 10 seconds before going on the horse again."
    localValue2(workingValue)
    return
  end
  localValue2 = GetEntityModel
  workingValue = PlayerPedId
  workingValue, cmgOperation3, playerPed2, playerPed3, cmgOperation4, dataCollection3, cmgOperation5, text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6 = workingValue()
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(workingValue, cmgOperation3, playerPed2, playerPed3, cmgOperation4, dataCollection3, cmgOperation5, text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6)
  if 1885233650 == localValue2 or -1667301416 == localValue2 then
    workingValue = true
    createVector36 = workingValue
    workingValue = true
    createVector37 = workingValue
    workingValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue = workingValue()
    createVector38 = workingValue
    workingValue = CMG
    workingValue = workingValue.loadModel
    cmgOperation3 = "a_c_deer"
    workingValue = workingValue(cmgOperation3)
    if not workingValue then
      return
    end
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.requestEntitySpawn
    playerPed2 = "police_horse_ped"
    playerPed3 = localValue2
    cmgOperation3(playerPed2, playerPed3)
    cmgOperation3 = ClonePed
    playerPed2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed2 = playerPed2()
    playerPed3 = true
    cmgOperation4 = true
    dataCollection3 = true
    cmgOperation3 = cmgOperation3(playerPed2, playerPed3, cmgOperation4, dataCollection3)
    playerPed2 = GetEntityHealth
    playerPed3 = PlayerPedId
    playerPed3, cmgOperation4, dataCollection3, cmgOperation5, text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6 = playerPed3()
    -- Beginner: result below is health.
    playerPed2 = playerPed2(playerPed3, cmgOperation4, dataCollection3, cmgOperation5, text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6)
    playerPed3 = tCMG
    playerPed3 = playerPed3.getCustomization
    playerPed3 = playerPed3()
    cmgOperation4 = tCMG
    cmgOperation4 = cmgOperation4.setCustomization
    dataCollection3 = {}
    dataCollection3.modelhash = -664053099
    cmgOperation4(dataCollection3)
    cmgOperation4 = SetModelAsNoLongerNeeded
    dataCollection3 = workingValue
    cmgOperation4(dataCollection3)
    cmgOperation4 = Citizen
    cmgOperation4 = cmgOperation4.CreateThread

    -- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: none) ===
    function dataCollection3()
      local cmgOperation, text2, number8
      cmgOperation = Citizen
      cmgOperation = cmgOperation.Wait
      text2 = 200
      cmgOperation(text2)
      cmgOperation = SetEntityHealth
      text2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      text2 = text2()
      number8 = playerPed2
      cmgOperation(text2, number8)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    cmgOperation4(dataCollection3)
    cmgOperation4 = 0.12
    dataCollection3 = -0.2
    cmgOperation5 = AttachEntityToEntity
    text5 = cmgOperation3
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    cmgOperation2 = GetPedBoneIndex
    text = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text = text()
    position = 24816
    cmgOperation2 = cmgOperation2(text, position)
    text = dataCollection3
    position = 0.0
    number = cmgOperation4
    number3 = 0.0
    number5 = 0.0
    stateFlag = -90.0
    stateFlag2 = false
    stateFlag3 = false
    stateFlag4 = false
    stateFlag5 = true
    number7 = 2
    stateFlag6 = true
    -- Beginner: Attach one entity to another entity.
    cmgOperation5(text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6)
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.loadAnimDict
    text5 = "amb@prop_human_seat_chair@male@generic@base"
    -- Beginner: Load a GTA animation dictionary before using it.
    cmgOperation5(text5)
    cmgOperation5 = TaskPlayAnim
    text5 = cmgOperation3
    playerPed = "amb@prop_human_seat_chair@male@generic@base"
    cmgOperation2 = "base"
    text = 8.0
    position = 1
    number = -1
    number3 = 1
    number5 = 1.0
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = false
    -- Beginner: Play an animation on a ped.
    cmgOperation5(text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3)
    cmgOperation5 = RemoveAnimDict
    text5 = "amb@prop_human_seat_chair@male@generic@base"
    cmgOperation5(text5)
    cmgOperation5 = FreezeEntityPosition
    text5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text5 = text5()
    playerPed = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgOperation5(text5, playerPed)
    cmgOperation5 = FreezeEntityPosition
    text5 = cmgOperation3
    playerPed = false
    cmgOperation5(text5, playerPed)
    cmgOperation5 = SetPedComponentVariation
    text5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text5 = text5()
    playerPed = 0
    cmgOperation2 = 0
    text = 0
    position = 0
    cmgOperation5(text5, playerPed, cmgOperation2, text, position)
    cmgOperation5 = SetBlockingOfNonTemporaryEvents
    text5 = cmgOperation3
    playerPed = true
    cmgOperation5(text5, playerPed)
    cmgOperation5 = SetPedFleeAttributes
    text5 = cmgOperation3
    playerPed = 0
    cmgOperation2 = false
    cmgOperation5(text5, playerPed, cmgOperation2)
    cmgOperation5 = SetPedRelationshipGroupHash
    text5 = cmgOperation3
    playerPed = 1191392768
    cmgOperation5(text5, playerPed)
    while true do
      cmgOperation5 = createVector36
      if not cmgOperation5 then
        break
      end
      cmgOperation5 = Wait
      text5 = 0
      cmgOperation5(text5)
      cmgOperation5 = drawNativeNotification
      text5 = "~s~~INPUT_JUMP~ to exit horse"
      -- Beginner: Show a GTA-style notification/help prompt.
      cmgOperation5(text5)
      cmgOperation5 = CMG
      cmgOperation5 = cmgOperation5.setWeapon
      text5 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      text5 = text5()
      playerPed = "weapon_unarmed"
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 263
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 264
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 257
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 140
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 141
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 142
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 143
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 24
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = DisableControlAction
      text5 = 0
      playerPed = 25
      cmgOperation2 = true
      cmgOperation5(text5, playerPed, cmgOperation2)
      cmgOperation5 = SetPedDropsWeaponsWhenDead
      text5 = cmgOperation3
      playerPed = false
      cmgOperation5(text5, playerPed)
      cmgOperation5 = IsDisabledControlPressed
      text5 = 0
      playerPed = 22
      cmgOperation5 = cmgOperation5(text5, playerPed)
      if cmgOperation5 then
        cmgOperation5 = false
        createVector36 = cmgOperation5
      end
    end
    cmgOperation5 = DeleteEntity
    text5 = cmgOperation3
    -- Beginner: Delete a GTA entity.
    cmgOperation5(text5)
    cmgOperation5 = DetachEntity
    text5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text5 = text5()
    playerPed = false
    cmgOperation2 = false
    cmgOperation5(text5, playerPed, cmgOperation2)
    cmgOperation5 = GetEntityHealth
    text5 = PlayerPedId
    text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6 = text5()
    -- Beginner: result below is health.
    cmgOperation5 = cmgOperation5(text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6)
    text5 = tCMG
    text5 = text5.setCustomization
    playerPed = playerPed3
    text5(playerPed)
    text5 = Citizen
    text5 = text5.CreateThread

    -- === HELPER FUNCTION: playerPed() ===
    function playerPed()
      local cmgOperation, text2, number8
      cmgOperation = Citizen
      cmgOperation = cmgOperation.Wait
      text2 = 200
      cmgOperation(text2)
      cmgOperation = SetEntityHealth
      text2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      text2 = text2()
      number8 = cmgOperation5
      cmgOperation(text2, number8)
      cmgOperation = Citizen
      cmgOperation = cmgOperation.Wait
      text2 = 1000
      cmgOperation(text2)
      cmgOperation = false
      createVector37 = cmgOperation
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    text5(playerPed)
  else
    workingValue = tCMG
    workingValue = workingValue.notify
    cmgOperation3 = "~r~Custom peds cannot be used with horses."
    -- Beginner: Show a notification to the player.
    workingValue(cmgOperation3)
  end
end
createVector310 = AddEventHandler
createVector311 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: createVector312; parameters: localValue1, localValue2) ===
function createVector312(localValue1, localValue2)
  local workingValue, cmgOperation3, playerPed2, playerPed3, cmgOperation4, dataCollection3, cmgOperation5, text5, playerPed, cmgOperation2, text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag9
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
    function workingValue()
      local cmgOperation, text2
      cmgOperation = drawNativeNotification
      text2 = "Press ~INPUT_PICKUP~ to spawn police horse!"
      -- Beginner: Show a GTA-style notification/help prompt.
      cmgOperation(text2)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local cmgOperation, text2
    end

    -- === HELPER FUNCTION: playerPed2() ===
    function playerPed2()
      local cmgOperation, text2, number8
      cmgOperation = IsControlJustPressed
      text2 = 1
      number8 = 51
      cmgOperation = cmgOperation(text2, number8)
      if cmgOperation then
        cmgOperation = createVector36
        if not cmgOperation then
          cmgOperation = CMG
          cmgOperation = cmgOperation.hasClientPermission
          text2 = "police.onduty.permission"
          cmgOperation = cmgOperation(text2)
          if cmgOperation then
            cmgOperation = CMG
            cmgOperation = cmgOperation.inOrganHesit
            cmgOperation = cmgOperation()
            if not cmgOperation then
              cmgOperation = createVector39
              cmgOperation()
          end
          else
            cmgOperation = tCMG
            cmgOperation = cmgOperation.notify
            text2 = "~r~This is only available to the MET Police only."
            -- Beginner: Show a notification to the player.
            cmgOperation(text2)
          end
        end
      end
    end
    playerPed3 = pairs
    cmgOperation4 = dataCollection2
    playerPed3, cmgOperation4, dataCollection3, cmgOperation5 = playerPed3(cmgOperation4)
    for text5, playerPed in playerPed3, cmgOperation4, dataCollection3, cmgOperation5 do
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.createArea
      text = "horse_"
      position = text5
      text = text .. position
      position = playerPed
      number = 1.5
      number3 = 6
      number5 = workingValue
      stateFlag = cmgOperation3
      stateFlag2 = playerPed2
      -- Beginner: Create an interaction area around a world position.
      cmgOperation2(text, position, number, number3, number5, stateFlag, stateFlag2)
      cmgOperation2 = tCMG
      cmgOperation2 = cmgOperation2.addMarker
      text = playerPed.x
      position = playerPed.y
      number = playerPed.z
      number3 = 1.0
      number5 = 1.0
      stateFlag = 1.0
      stateFlag2 = 0
      stateFlag3 = 50
      stateFlag4 = 255
      stateFlag5 = 170
      number7 = 50
      stateFlag6 = 42
      stateFlag7 = false
      stateFlag8 = false
      stateFlag9 = true
      -- Beginner: Create a world marker.
      cmgOperation2(text, position, number, number3, number5, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag5, number7, stateFlag6, stateFlag7, stateFlag8, stateFlag9)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
createVector310(createVector311, createVector312)
createVector310 = RegisterCommand
createVector311 = "policehorse"
-- Beginner: this function is the command handler for "policehorse".

-- === HELPER FUNCTION (decompiler name: createVector312; parameters: none) ===
function createVector312()
  local localValue1, localValue2
  localValue1 = createVector36
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.inOrganHesit
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.hasClientPermission
      localValue2 = "police.onduty.permission"
      localValue1 = localValue1(localValue2)
      if localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.hasClientPermission
        localValue2 = "horsetrained.whitelisted"
        localValue1 = localValue1(localValue2)
        if localValue1 then
          localValue1 = createVector39
          localValue1()
        else
          localValue1 = tCMG
          localValue1 = localValue1.notify
          localValue2 = "~r~You do not have the [Horse Trained] whitelist."
          -- Beginner: Show a notification to the player.
          localValue1(localValue2)
        end
      else
        localValue1 = tCMG
        localValue1 = localValue1.notify
        localValue2 = "~r~This is only available to the MET Police only."
        localValue1(localValue2)
      end
    end
  end
end
createVector313 = false
-- Beginner: Register a chat/console command. Event/command: "policehorse".
createVector310(createVector311, createVector312, createVector313)
