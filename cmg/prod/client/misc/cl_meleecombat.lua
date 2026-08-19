--[[
    LEVEL 1 BEGINNER GUIDE — Meleecombat
    =========================================

    File: cmg/prod/client/misc/cl_meleecombat.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Meleecombat feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
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
local stateFlag, dataCollection, dataCollection2, createVector33, createVector34, createVector35, createVector36, createVector37, createVector38, createVector39, createVector3, createVector32, number, number2, number4, cmgOperation2, number6, number7
stateFlag = false
dataCollection = {}
dataCollection2 = {}
createVector33 = vector3
createVector34 = -50.477890014648
createVector35 = -1282.771484375
createVector36 = 29.429399490356
createVector33 = createVector33(createVector34, createVector35, createVector36)
dataCollection2.pos = createVector33
dataCollection2.radius = 2
dataCollection2.disableDamage = false
createVector33 = {}
createVector34 = vector3
createVector35 = -575.4462890625
createVector36 = 286.91946411133
createVector37 = 94.939964294434
createVector34 = createVector34(createVector35, createVector36, createVector37)
createVector33.pos = createVector34
createVector33.radius = 2
createVector33.disableDamage = false
createVector34 = {}
createVector35 = vector3
createVector36 = -294.72583007812
createVector37 = -1992.2838134766
createVector38 = 30.966064453125
createVector35 = createVector35(createVector36, createVector37, createVector38)
createVector34.pos = createVector35
createVector34.radius = 4
createVector34.disableDamage = false
createVector35 = {}
createVector36 = vector3
createVector37 = -301.53894042969
createVector38 = 6267.5932617188
createVector39 = 24.484985351562
createVector36 = createVector36(createVector37, createVector38, createVector39)
createVector35.pos = createVector36
createVector35.radius = 2
createVector35.disableDamage = false
createVector36 = {}
createVector37 = vector3
createVector38 = 2094.1101074219
createVector39 = 5091.1928710938
createVector3 = 42.724578857422
createVector37 = createVector37(createVector38, createVector39, createVector3)
createVector36.pos = createVector37
createVector36.radius = 4.0
createVector36.disableDamage = false
createVector37 = {}
createVector38 = vector3
createVector39 = 3911.664
createVector3 = 4875.601
createVector32 = 12.624
createVector38 = createVector38(createVector39, createVector3, createVector32)
createVector37.pos = createVector38
createVector37.radius = 3.8
createVector37.disableDamage = false
createVector38 = {}
createVector39 = vector3
createVector3 = 251.41473388672
createVector32 = 3032.279296875
number = 43.412635803223
createVector39 = createVector39(createVector3, createVector32, number)
createVector38.pos = createVector39
createVector38.radius = 3.8
createVector38.disableDamage = false
createVector39 = {}
createVector3 = vector3
createVector32 = -2974.4343261719
number = 48.462585449219
number2 = 12.358516693115
createVector3 = createVector3(createVector32, number, number2)
createVector39.pos = createVector3
createVector39.radius = 3.8
createVector39.disableDamage = false
createVector3 = {}
createVector32 = vector3
number = 1710.6134033203
number2 = 2524.2023925781
number4 = 42.9660034179695
createVector32 = createVector32(number, number2, number4)
createVector3.pos = createVector32
createVector3.radius = 5.0
createVector3.disableDamage = false
dataCollection[1] = dataCollection2
dataCollection[2] = createVector33
dataCollection[3] = createVector34
dataCollection[4] = createVector35
dataCollection[5] = createVector36
dataCollection[6] = createVector37
dataCollection[7] = createVector38
dataCollection[8] = createVector39
dataCollection[9] = createVector3
dataCollection2 = true
createVector33 = false
createVector34 = 0
createVector35 = 0
createVector36 = RegisterCommand
createVector37 = "cancelmelee"
-- Beginner: this function is the command handler for "cancelmelee".

-- === HELPER FUNCTION (decompiler name: createVector38; parameters: none) ===
function createVector38()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.getClientUserId
  -- Beginner: result below is userId.
  localValue1 = localValue1()
  if 1 ~= localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getClientUserId
    -- Beginner: result below is userId.
    localValue1 = localValue1()
    if 2 ~= localValue1 then
      goto continueAtStep13
    end
  end
  localValue1 = true
  createVector33 = localValue1
  ::continueAtStep13::
end
createVector39 = false
-- Beginner: Register a chat/console command. Event/command: "cancelmelee".
createVector36(createVector37, createVector38, createVector39)
createVector36 = CMG

-- === HELPER FUNCTION (decompiler name: createVector37; parameters: localValue1) ===
function createVector37(localValue1)
  local localValue2
  createVector33 = localValue1
end
createVector36.enablePunching = createVector37
createVector36 = CMG
createVector36 = createVector36.enablePunching
createVector37 = false
createVector36(createVector37)

-- === HELPER FUNCTION (decompiler name: createVector36; parameters: none) ===
function createVector36()
  local localValue1, localValue2, workingValue, weaponHash, number14, number16, stateFlag11, number17, stateFlag12
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  workingValue = PlayerId
  -- Beginner: result below is localPlayerIndex.
  workingValue = workingValue()
  weaponHash = stateFlag
  if not weaponHash then
    weaponHash = createVector33
    if not weaponHash then
      weaponHash = GetSelectedPedWeapon
      number14 = localValue1
      -- Beginner: result below is weaponHash.
      weaponHash = weaponHash(number14)
      if -1569615261 == weaponHash then
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 263
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 264
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 257
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 140
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 141
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 142
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 143
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 24
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
        weaponHash = DisableControlAction
        number14 = 0
        number16 = 25
        stateFlag11 = true
        weaponHash(number14, number16, stateFlag11)
      end
    end
  end
  weaponHash = SetPedCanBeDraggedOut
  number14 = localValue1
  number16 = false
  weaponHash(number14, number16)
  weaponHash = SetPedConfigFlag
  number14 = localValue1
  number16 = 149
  stateFlag11 = true
  weaponHash(number14, number16, stateFlag11)
  weaponHash = SetPedConfigFlag
  number14 = localValue1
  number16 = 438
  stateFlag11 = true
  weaponHash(number14, number16, stateFlag11)
  weaponHash = SetPedConfigFlag
  number14 = localValue1
  number16 = 250
  stateFlag11 = false
  weaponHash(number14, number16, stateFlag11)
  weaponHash = SetPedConfigFlag
  number14 = localValue1
  number16 = 35
  stateFlag11 = false
  weaponHash(number14, number16, stateFlag11)
  weaponHash = SetPlayerTargetingMode
  number14 = 3
  weaponHash(number14)
  weaponHash = GetSelectedPedWeapon
  number14 = PlayerPedId
  number14, number16, stateFlag11, number17, stateFlag12 = number14()
  -- Beginner: result below is weaponHash.
  weaponHash = weaponHash(number14, number16, stateFlag11, number17, stateFlag12)
  number14 = GetWeapontypeGroup
  number16 = weaponHash
  number14 = number14(number16)
  if -1569615261 == weaponHash or -1609580060 == number14 or -728555052 == number14 then
    number16 = SetPlayerLockonRangeOverride
    stateFlag11 = workingValue
    number17 = 10.0
    number16(stateFlag11, number17)
  else
    number16 = SetPlayerLockonRangeOverride
    stateFlag11 = workingValue
    number17 = 0.0
    number16(stateFlag11, number17)
  end
  number16 = RestorePlayerStamina
  stateFlag11 = workingValue
  number17 = 1.0
  number16(stateFlag11, number17)
  if 0 ~= localValue2 then
    number16 = dataCollection2
    if number16 then
      number16 = GetPedInVehicleSeat
      stateFlag11 = localValue2
      number17 = 0
      number16 = number16(stateFlag11, number17)
      if number16 == localValue1 then
        number16 = GetIsTaskActive
        stateFlag11 = localValue1
        number17 = 165
        number16 = number16(stateFlag11, number17)
        if number16 then
          number16 = SetPedIntoVehicle
          stateFlag11 = localValue1
          number17 = localValue2
          stateFlag12 = 0
          number16(stateFlag11, number17, stateFlag12)
        end
      end
    end
  end
end
createVector37 = CMG
createVector37 = createVector37.createThreadOnTick
createVector38 = createVector36
createVector39 = "Melee Combat"
-- Beginner: Run a helper every game frame while this script is active.
createVector37(createVector38, createVector39)
createVector37 = AddEventHandler
createVector38 = "1e1208e937"
-- Beginner: this function runs when client event "1e1208e937" fires.

-- === HELPER FUNCTION (decompiler name: createVector39; parameters: localValue1) ===
function createVector39(localValue1)
  local localValue2, workingValue
  localValue2 = stateFlag
  if localValue2 then
    localValue2 = createVector35
    if localValue2 > 0 then
      localValue2 = IsPedAPlayer
      workingValue = localValue1
      localValue2 = localValue2(workingValue)
      if localValue2 then
        localValue2 = createVector34
        localValue2 = localValue2 + 1
        createVector34 = localValue2
        localValue2 = createVector34
        workingValue = createVector35
        if localValue2 >= workingValue then
          localValue2 = 0
          createVector34 = localValue2
          localValue2 = TriggerEvent
          workingValue = "8e08db8961"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "8e08db8961".
          localValue2(workingValue)
          localValue2 = Citizen
          localValue2 = localValue2.Wait
          workingValue = 15000
          localValue2(workingValue)
          localValue2 = CMG
          localValue2 = localValue2.isKnockedOut
          localValue2 = localValue2()
          if localValue2 then
            localValue2 = TriggerEvent
            workingValue = "259d5b120c"
            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
            localValue2(workingValue)
          end
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "1e1208e937".
createVector37(createVector38, createVector39)

-- === HELPER FUNCTION (decompiler name: createVector37; parameters: localValue1) ===
function createVector37(localValue1)
  local localValue2
  dataCollection2 = localValue1
end
createVector38 = AddEventHandler
createVector39 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1, localValue2) ===
function createVector3(localValue1, localValue2)
  local workingValue, weaponHash, number14, number16, stateFlag11, number17, stateFlag12, stateFlag13, stateFlag2, cmgOperation, text, number3, number5, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number8
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue12) ===
    function workingValue(localValue12)
      local mathHelper, number12, number13
      mathHelper = true
      stateFlag = mathHelper
      mathHelper = localValue12.disableDamage
      if mathHelper then
        mathHelper = 0
        createVector34 = mathHelper
        mathHelper = math
        mathHelper = mathHelper.random
        number12 = 8
        number13 = 12
        mathHelper = mathHelper(number12, number13)
        createVector35 = mathHelper
      end
    end

    -- === HELPER FUNCTION: weaponHash(localValue12) ===
    function weaponHash(localValue12)
      local mathHelper, number12, number13, number15
      mathHelper = false
      stateFlag = mathHelper
      mathHelper = localValue12.disableDamage
      if mathHelper then
        mathHelper = PlayerId
        -- Beginner: result below is localPlayerIndex.
        mathHelper = mathHelper()
        number12 = SetPlayerMeleeWeaponDamageModifier
        number13 = mathHelper
        number15 = 1.0
        number12(number13, number15)
        number12 = SetPlayerWeaponDamageModifier
        number13 = mathHelper
        number15 = 1.0
        number12(number13, number15)
        number12 = SetWeaponDamageModifier
        number13 = -1569615261
        number15 = 1.0
        number12(number13, number15)
        number12 = SetPedSuffersCriticalHits
        number13 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        number13 = number13()
        number15 = true
        number12(number13, number15)
        number12 = 0
        createVector34 = number12
        number12 = 0
        createVector35 = number12
      end
    end

    -- === HELPER FUNCTION (decompiler name: number14; parameters: localValue12) ===
    function number14(localValue12)
      local mathHelper, number12, number13, number15
      mathHelper = localValue12.disableDamage
      if mathHelper then
        mathHelper = PlayerId
        -- Beginner: result below is localPlayerIndex.
        mathHelper = mathHelper()
        number12 = SetPlayerMeleeWeaponDamageModifier
        number13 = mathHelper
        number15 = 0.01
        number12(number13, number15)
        number12 = SetPlayerWeaponDamageModifier
        number13 = mathHelper
        number15 = 0.01
        number12(number13, number15)
        number12 = SetWeaponDamageModifier
        number13 = -1569615261
        number15 = 0.01
        number12(number13, number15)
        number12 = SetPedSuffersCriticalHits
        number13 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        number13 = number13()
        number15 = false
        number12(number13, number15)
      end
    end
    number16 = pairs
    stateFlag11 = dataCollection
    number16, stateFlag11, number17, stateFlag12 = number16(stateFlag11)
    for stateFlag13, stateFlag2 in number16, stateFlag11, number17, stateFlag12 do
      cmgOperation = CMG
      cmgOperation = cmgOperation.createArea
      text = "boxing_"
      number3 = stateFlag13
      text = text .. number3
      number3 = stateFlag2.pos
      number5 = stateFlag2.radius
      stateFlag3 = 6
      stateFlag4 = workingValue
      stateFlag5 = weaponHash
      stateFlag6 = number14
      number8 = stateFlag2
      -- Beginner: Create an interaction area around a world position.
      cmgOperation(text, number3, number5, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number8)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
createVector38(createVector39, createVector3)
createVector38 = RegisterCommand
createVector39 = "shuff"
-- Beginner: this function is the command handler for "shuff".

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2, workingValue
  localValue1 = IsPedInAnyVehicle
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  workingValue = false
  localValue1 = localValue1(localValue2, workingValue)
  if localValue1 then
    localValue1 = createVector37
    localValue2 = false
    localValue1(localValue2)
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 5000
    localValue1(localValue2)
    localValue1 = createVector37
    localValue2 = true
    -- Beginner: Register a client-side event handler. Event/command: true.
    localValue1(localValue2)
  else
    localValue1 = CancelEvent
    localValue1()
  end
end
createVector32 = false
-- Beginner: Register a chat/console command. Event/command: "shuff".
createVector38(createVector39, createVector3, createVector32)
createVector38 = false
createVector39 = 0
createVector3 = {}
createVector32 = vector3
number = -60.958786010742
number2 = -1291.7238769531
number4 = 29.905078887939
createVector32 = createVector32(number, number2, number4)
number = vector3
number2 = 3913.345703125
number4 = 4882.3188476562
cmgOperation2 = 12.603978157043
number = number(number2, number4, cmgOperation2)
number2 = vector3
number4 = -2966.6594238281
cmgOperation2 = 44.978782653809
number6 = 11.609387397766
number2 = number2(number4, cmgOperation2, number6)
number4 = vector3
cmgOperation2 = 1707.8901367188
number6 = 2519.1606445312
number7 = 44.566337585449
number4, cmgOperation2, number6, number7 = number4(cmgOperation2, number6, number7)
createVector3[1] = createVector32
createVector3[2] = number
createVector3[3] = number2
createVector3[4] = number4
createVector3[5] = cmgOperation2
createVector3[6] = number6
createVector3[7] = number7
createVector32 = {}

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, workingValue, weaponHash, number14, number16, stateFlag11, number17, stateFlag12, stateFlag13, stateFlag2, cmgOperation, text, number3, number5, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number8, stateFlag7
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  workingValue = 335898267
  localValue2 = localValue2(workingValue)
  workingValue = GetEntityCoords
  weaponHash = localValue1
  -- Beginner: result below is entityCoords.
  workingValue = workingValue(weaponHash)
  weaponHash = CMG
  weaponHash = weaponHash.requestEntitySpawn
  number14 = "boxing_glove_a"
  weaponHash(number14)
  weaponHash = CreateObject
  number14 = localValue2
  number16 = workingValue.x
  stateFlag11 = workingValue.y
  number17 = workingValue.z
  number17 = number17 + 0.5
  stateFlag12 = true
  stateFlag13 = false
  stateFlag2 = false
  -- Beginner: result below is objectEntity.
  weaponHash = weaponHash(number14, number16, stateFlag11, number17, stateFlag12, stateFlag13, stateFlag2)
  number14 = CMG
  number14 = number14.requestEntitySpawn
  number16 = "boxing_glove_b"
  number14(number16)
  number14 = CreateObject
  number16 = localValue2
  stateFlag11 = workingValue.x
  number17 = workingValue.y
  stateFlag12 = workingValue.z
  stateFlag12 = stateFlag12 + 0.5
  stateFlag13 = true
  stateFlag2 = false
  cmgOperation = false
  -- Beginner: result below is objectEntity.
  number14 = number14(number16, stateFlag11, number17, stateFlag12, stateFlag13, stateFlag2, cmgOperation)
  number16 = table
  number16 = number16.insert
  stateFlag11 = createVector32
  number17 = weaponHash
  number16(stateFlag11, number17)
  number16 = table
  number16 = number16.insert
  stateFlag11 = createVector32
  number17 = number14
  number16(stateFlag11, number17)
  number16 = SetModelAsNoLongerNeeded
  stateFlag11 = localValue2
  number16(stateFlag11)
  number16 = FreezeEntityPosition
  stateFlag11 = weaponHash
  number17 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  number16(stateFlag11, number17)
  number16 = SetEntityCollision
  stateFlag11 = weaponHash
  number17 = false
  stateFlag12 = true
  number16(stateFlag11, number17, stateFlag12)
  number16 = ActivatePhysics
  stateFlag11 = weaponHash
  number16(stateFlag11)
  number16 = FreezeEntityPosition
  stateFlag11 = number14
  number17 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  number16(stateFlag11, number17)
  number16 = SetEntityCollision
  stateFlag11 = number14
  number17 = false
  stateFlag12 = true
  number16(stateFlag11, number17, stateFlag12)
  number16 = ActivatePhysics
  stateFlag11 = number14
  number16(stateFlag11)
  if not localValue1 then
    number16 = CMG
    number16 = number16.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    number16 = number16()
    localValue1 = number16
  end
  number16 = AttachEntityToEntity
  stateFlag11 = weaponHash
  number17 = localValue1
  stateFlag12 = GetPedBoneIndex
  stateFlag13 = localValue1
  stateFlag2 = 61007
  stateFlag12 = stateFlag12(stateFlag13, stateFlag2)
  stateFlag13 = 0.05
  stateFlag2 = 0.0
  cmgOperation = 0.04
  text = 0.0
  number3 = 90.0
  number5 = -90.0
  stateFlag3 = true
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = true
  number8 = 1
  stateFlag7 = true
  -- Beginner: Attach one entity to another entity.
  number16(stateFlag11, number17, stateFlag12, stateFlag13, stateFlag2, cmgOperation, text, number3, number5, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number8, stateFlag7)
  number16 = AttachEntityToEntity
  stateFlag11 = number14
  number17 = localValue1
  stateFlag12 = GetPedBoneIndex
  stateFlag13 = localValue1
  stateFlag2 = 43810
  stateFlag12 = stateFlag12(stateFlag13, stateFlag2)
  stateFlag13 = 0.05
  stateFlag2 = 0.0
  cmgOperation = -0.04
  text = 0.0
  number3 = 90.0
  number5 = 90.0
  stateFlag3 = true
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = true
  number8 = 1
  stateFlag7 = true
  number16(stateFlag11, number17, stateFlag12, stateFlag13, stateFlag2, cmgOperation, text, number3, number5, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number8, stateFlag7)
end

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, localValue2, workingValue, weaponHash, number14, number16, stateFlag11, number17
  localValue1 = pairs
  localValue2 = createVector32
  localValue1, localValue2, workingValue, weaponHash = localValue1(localValue2)
  for number14, number16 in localValue1, localValue2, workingValue, weaponHash do
    stateFlag11 = DeleteObject
    number17 = number16
    stateFlag11(number17)
  end
  localValue1 = {}
  createVector32 = localValue1
end
number4 = AddEventHandler
cmgOperation2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: number6; parameters: localValue1, localValue2) ===
function number6(localValue1, localValue2)
  local workingValue, weaponHash, number14, number16, stateFlag11, number17, stateFlag12, stateFlag13, stateFlag2, cmgOperation, text, number3, number5, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number8, stateFlag7, number9, number10, number11, stateFlag8, stateFlag9, stateFlag10
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
    function workingValue()
      local localValue12, mathHelper
      localValue12 = createVector38
      if not localValue12 then
        localValue12 = drawNativeNotification
        mathHelper = "Press ~INPUT_PICKUP~ to  pick up \240\159\165\138"
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue12(mathHelper)
      else
        localValue12 = drawNativeNotification
        mathHelper = "Press ~INPUT_PICKUP~ to take off \240\159\165\138"
        localValue12(mathHelper)
      end
    end

    -- === HELPER FUNCTION: weaponHash() ===
    function weaponHash()
      local localValue12, mathHelper
    end

    -- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
    function number14()
      local localValue12, mathHelper, number12
      localValue12 = IsControlJustPressed
      mathHelper = 1
      number12 = 51
      localValue12 = localValue12(mathHelper, number12)
      if localValue12 then
        localValue12 = createVector38
        if not localValue12 then
          localValue12 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue12 = localValue12()
          mathHelper = createVector39
          localValue12 = localValue12 - mathHelper
          mathHelper = 5000
          if localValue12 > mathHelper then
            localValue12 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            localValue12 = localValue12()
            createVector39 = localValue12
            localValue12 = number
            localValue12()
            localValue12 = true
            createVector38 = localValue12
          else
            localValue12 = notify
            mathHelper = "~r~Please wait before adding gloves again."
            -- Beginner: Show a notification to the player.
            localValue12(mathHelper)
          end
        else
          localValue12 = number2
          localValue12()
          localValue12 = false
          createVector38 = localValue12
        end
      end
    end
    number16 = pairs
    stateFlag11 = createVector3
    number16, stateFlag11, number17, stateFlag12 = number16(stateFlag11)
    for stateFlag13, stateFlag2 in number16, stateFlag11, number17, stateFlag12 do
      cmgOperation = tCMG
      cmgOperation = cmgOperation.addMarker
      text = stateFlag2.x
      number3 = stateFlag2.y
      number5 = stateFlag2.z
      stateFlag3 = 1.0
      stateFlag4 = 1.0
      stateFlag5 = 1.0
      stateFlag6 = 0
      number8 = 0
      stateFlag7 = 255
      number9 = 100
      number10 = 50
      number11 = 27
      stateFlag8 = false
      stateFlag9 = false
      stateFlag10 = true
      -- Beginner: Create a world marker.
      cmgOperation(text, number3, number5, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number8, stateFlag7, number9, number10, number11, stateFlag8, stateFlag9, stateFlag10)
      cmgOperation = CMG
      cmgOperation = cmgOperation.createArea
      text = stateFlag13
      number3 = "_boxingGloves"
      text = text .. number3
      number3 = stateFlag2
      number5 = 1.5
      stateFlag3 = 6
      stateFlag4 = workingValue
      stateFlag5 = weaponHash
      stateFlag6 = number14
      number8 = {}
      -- Beginner: Create an interaction area around a world position.
      cmgOperation(text, number3, number5, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number8)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
number4(cmgOperation2, number6)
number4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
number4.inBoxingZone = cmgOperation2
number4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, workingValue, weaponHash, number14
  localValue1 = GetSelectedPedWeapon
  localValue2 = PlayerPedId
  localValue2, workingValue, weaponHash, number14 = localValue2()
  -- Beginner: result below is weaponHash.
  localValue1 = localValue1(localValue2, workingValue, weaponHash, number14)
  if 203923196 == localValue1 or 818285584 == localValue1 then
    return
  end
  if -1569615261 ~= localValue1 then
    localValue2 = DisableControlAction
    workingValue = 0
    weaponHash = 140
    number14 = true
    localValue2(workingValue, weaponHash, number14)
    localValue2 = DisableControlAction
    workingValue = 0
    weaponHash = 141
    number14 = true
    localValue2(workingValue, weaponHash, number14)
    localValue2 = DisableControlAction
    workingValue = 0
    weaponHash = 142
    number14 = true
    localValue2(workingValue, weaponHash, number14)
    return
  end
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 140
  number14 = true
  localValue2(workingValue, weaponHash, number14)
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 141
  number14 = true
  localValue2(workingValue, weaponHash, number14)
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 142
  number14 = true
  localValue2(workingValue, weaponHash, number14)
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 143
  number14 = true
  localValue2(workingValue, weaponHash, number14)
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 263
  number14 = true
  localValue2(workingValue, weaponHash, number14)
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 264
  number14 = true
  localValue2(workingValue, weaponHash, number14)
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 257
  number14 = true
  localValue2(workingValue, weaponHash, number14)
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 24
  number14 = true
  localValue2(workingValue, weaponHash, number14)
  localValue2 = DisableControlAction
  workingValue = 0
  weaponHash = 25
  number14 = true
  localValue2(workingValue, weaponHash, number14)
end
number4.disableMeleeControls = cmgOperation2
