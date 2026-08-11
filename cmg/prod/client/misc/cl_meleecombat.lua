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
local flag, dataTable, dataTable2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, vector3Builder8, vector3Builder9, vector3Builder, vector3Builder2, numberValue, numberValue2, numberValue4, cmgCall2, numberValue6, numberValue7
flag = false
dataTable = {}
dataTable2 = {}
vector3Builder3 = vector3
vector3Builder4 = -50.477890014648
vector3Builder5 = -1282.771484375
vector3Builder6 = 29.429399490356
vector3Builder3 = vector3Builder3(vector3Builder4, vector3Builder5, vector3Builder6)
dataTable2.pos = vector3Builder3
dataTable2.radius = 2
dataTable2.disableDamage = false
vector3Builder3 = {}
vector3Builder4 = vector3
vector3Builder5 = -575.4462890625
vector3Builder6 = 286.91946411133
vector3Builder7 = 94.939964294434
vector3Builder4 = vector3Builder4(vector3Builder5, vector3Builder6, vector3Builder7)
vector3Builder3.pos = vector3Builder4
vector3Builder3.radius = 2
vector3Builder3.disableDamage = false
vector3Builder4 = {}
vector3Builder5 = vector3
vector3Builder6 = -294.72583007812
vector3Builder7 = -1992.2838134766
vector3Builder8 = 30.966064453125
vector3Builder5 = vector3Builder5(vector3Builder6, vector3Builder7, vector3Builder8)
vector3Builder4.pos = vector3Builder5
vector3Builder4.radius = 4
vector3Builder4.disableDamage = false
vector3Builder5 = {}
vector3Builder6 = vector3
vector3Builder7 = -301.53894042969
vector3Builder8 = 6267.5932617188
vector3Builder9 = 24.484985351562
vector3Builder6 = vector3Builder6(vector3Builder7, vector3Builder8, vector3Builder9)
vector3Builder5.pos = vector3Builder6
vector3Builder5.radius = 2
vector3Builder5.disableDamage = false
vector3Builder6 = {}
vector3Builder7 = vector3
vector3Builder8 = 2094.1101074219
vector3Builder9 = 5091.1928710938
vector3Builder = 42.724578857422
vector3Builder7 = vector3Builder7(vector3Builder8, vector3Builder9, vector3Builder)
vector3Builder6.pos = vector3Builder7
vector3Builder6.radius = 4.0
vector3Builder6.disableDamage = false
vector3Builder7 = {}
vector3Builder8 = vector3
vector3Builder9 = 3911.664
vector3Builder = 4875.601
vector3Builder2 = 12.624
vector3Builder8 = vector3Builder8(vector3Builder9, vector3Builder, vector3Builder2)
vector3Builder7.pos = vector3Builder8
vector3Builder7.radius = 3.8
vector3Builder7.disableDamage = false
vector3Builder8 = {}
vector3Builder9 = vector3
vector3Builder = 251.41473388672
vector3Builder2 = 3032.279296875
numberValue = 43.412635803223
vector3Builder9 = vector3Builder9(vector3Builder, vector3Builder2, numberValue)
vector3Builder8.pos = vector3Builder9
vector3Builder8.radius = 3.8
vector3Builder8.disableDamage = false
vector3Builder9 = {}
vector3Builder = vector3
vector3Builder2 = -2974.4343261719
numberValue = 48.462585449219
numberValue2 = 12.358516693115
vector3Builder = vector3Builder(vector3Builder2, numberValue, numberValue2)
vector3Builder9.pos = vector3Builder
vector3Builder9.radius = 3.8
vector3Builder9.disableDamage = false
vector3Builder = {}
vector3Builder2 = vector3
numberValue = 1710.6134033203
numberValue2 = 2524.2023925781
numberValue4 = 42.9660034179695
vector3Builder2 = vector3Builder2(numberValue, numberValue2, numberValue4)
vector3Builder.pos = vector3Builder2
vector3Builder.radius = 5.0
vector3Builder.disableDamage = false
dataTable[1] = dataTable2
dataTable[2] = vector3Builder3
dataTable[3] = vector3Builder4
dataTable[4] = vector3Builder5
dataTable[5] = vector3Builder6
dataTable[6] = vector3Builder7
dataTable[7] = vector3Builder8
dataTable[8] = vector3Builder9
dataTable[9] = vector3Builder
dataTable2 = true
vector3Builder3 = false
vector3Builder4 = 0
vector3Builder5 = 0
vector3Builder6 = RegisterCommand
vector3Builder7 = "cancelmelee"
-- Beginner: this function is the command handler for "cancelmelee".

-- === HELPER FUNCTION (decompiler name: vector3Builder8; parameters: none) ===
function vector3Builder8()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  if 1 ~= arg1 then
    arg1 = CMG
    arg1 = arg1.getClientUserId
    -- Beginner: result below is userId.
    arg1 = arg1()
    if 2 ~= arg1 then
      goto flow_label_13
    end
  end
  arg1 = true
  vector3Builder3 = arg1
  ::flow_label_13::
end
vector3Builder9 = false
-- Beginner: Register a chat/console command. Event/command: "cancelmelee".
vector3Builder6(vector3Builder7, vector3Builder8, vector3Builder9)
vector3Builder6 = CMG

-- === HELPER FUNCTION (decompiler name: vector3Builder7; parameters: arg1) ===
function vector3Builder7(arg1)
  local arg2
  vector3Builder3 = arg1
end
vector3Builder6.enablePunching = vector3Builder7
vector3Builder6 = CMG
vector3Builder6 = vector3Builder6.enablePunching
vector3Builder7 = false
vector3Builder6(vector3Builder7)

-- === HELPER FUNCTION (decompiler name: vector3Builder6; parameters: none) ===
function vector3Builder6()
  local arg1, arg2, workValue, weaponHash, numberValue14, numberValue16, flag11, numberValue17, flag12
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  workValue = PlayerId
  -- Beginner: result below is localPlayerIndex.
  workValue = workValue()
  weaponHash = flag
  if not weaponHash then
    weaponHash = vector3Builder3
    if not weaponHash then
      weaponHash = GetSelectedPedWeapon
      numberValue14 = arg1
      -- Beginner: result below is weaponHash.
      weaponHash = weaponHash(numberValue14)
      if -1569615261 == weaponHash then
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 263
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 264
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 257
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 140
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 141
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 142
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 143
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 24
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
        weaponHash = DisableControlAction
        numberValue14 = 0
        numberValue16 = 25
        flag11 = true
        weaponHash(numberValue14, numberValue16, flag11)
      end
    end
  end
  weaponHash = SetPedCanBeDraggedOut
  numberValue14 = arg1
  numberValue16 = false
  weaponHash(numberValue14, numberValue16)
  weaponHash = SetPedConfigFlag
  numberValue14 = arg1
  numberValue16 = 149
  flag11 = true
  weaponHash(numberValue14, numberValue16, flag11)
  weaponHash = SetPedConfigFlag
  numberValue14 = arg1
  numberValue16 = 438
  flag11 = true
  weaponHash(numberValue14, numberValue16, flag11)
  weaponHash = SetPedConfigFlag
  numberValue14 = arg1
  numberValue16 = 250
  flag11 = false
  weaponHash(numberValue14, numberValue16, flag11)
  weaponHash = SetPedConfigFlag
  numberValue14 = arg1
  numberValue16 = 35
  flag11 = false
  weaponHash(numberValue14, numberValue16, flag11)
  weaponHash = SetPlayerTargetingMode
  numberValue14 = 3
  weaponHash(numberValue14)
  weaponHash = GetSelectedPedWeapon
  numberValue14 = PlayerPedId
  numberValue14, numberValue16, flag11, numberValue17, flag12 = numberValue14()
  -- Beginner: result below is weaponHash.
  weaponHash = weaponHash(numberValue14, numberValue16, flag11, numberValue17, flag12)
  numberValue14 = GetWeapontypeGroup
  numberValue16 = weaponHash
  numberValue14 = numberValue14(numberValue16)
  if -1569615261 == weaponHash or -1609580060 == numberValue14 or -728555052 == numberValue14 then
    numberValue16 = SetPlayerLockonRangeOverride
    flag11 = workValue
    numberValue17 = 10.0
    numberValue16(flag11, numberValue17)
  else
    numberValue16 = SetPlayerLockonRangeOverride
    flag11 = workValue
    numberValue17 = 0.0
    numberValue16(flag11, numberValue17)
  end
  numberValue16 = RestorePlayerStamina
  flag11 = workValue
  numberValue17 = 1.0
  numberValue16(flag11, numberValue17)
  if 0 ~= arg2 then
    numberValue16 = dataTable2
    if numberValue16 then
      numberValue16 = GetPedInVehicleSeat
      flag11 = arg2
      numberValue17 = 0
      numberValue16 = numberValue16(flag11, numberValue17)
      if numberValue16 == arg1 then
        numberValue16 = GetIsTaskActive
        flag11 = arg1
        numberValue17 = 165
        numberValue16 = numberValue16(flag11, numberValue17)
        if numberValue16 then
          numberValue16 = SetPedIntoVehicle
          flag11 = arg1
          numberValue17 = arg2
          flag12 = 0
          numberValue16(flag11, numberValue17, flag12)
        end
      end
    end
  end
end
vector3Builder7 = CMG
vector3Builder7 = vector3Builder7.createThreadOnTick
vector3Builder8 = vector3Builder6
vector3Builder9 = "Melee Combat"
-- Beginner: Run a helper every game frame while this script is active.
vector3Builder7(vector3Builder8, vector3Builder9)
vector3Builder7 = AddEventHandler
vector3Builder8 = "1e1208e937"
-- Beginner: this function runs when client event "1e1208e937" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder9; parameters: arg1) ===
function vector3Builder9(arg1)
  local arg2, workValue
  arg2 = flag
  if arg2 then
    arg2 = vector3Builder5
    if arg2 > 0 then
      arg2 = IsPedAPlayer
      workValue = arg1
      arg2 = arg2(workValue)
      if arg2 then
        arg2 = vector3Builder4
        arg2 = arg2 + 1
        vector3Builder4 = arg2
        arg2 = vector3Builder4
        workValue = vector3Builder5
        if arg2 >= workValue then
          arg2 = 0
          vector3Builder4 = arg2
          arg2 = TriggerEvent
          workValue = "8e08db8961"
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "8e08db8961".
          arg2(workValue)
          arg2 = Citizen
          arg2 = arg2.Wait
          workValue = 15000
          arg2(workValue)
          arg2 = CMG
          arg2 = arg2.isKnockedOut
          arg2 = arg2()
          if arg2 then
            arg2 = TriggerEvent
            workValue = "259d5b120c"
            -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
            arg2(workValue)
          end
        end
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "1e1208e937".
vector3Builder7(vector3Builder8, vector3Builder9)

-- === HELPER FUNCTION (decompiler name: vector3Builder7; parameters: arg1) ===
function vector3Builder7(arg1)
  local arg2
  dataTable2 = arg1
end
vector3Builder8 = AddEventHandler
vector3Builder9 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: arg1, arg2) ===
function vector3Builder(arg1, arg2)
  local workValue, weaponHash, numberValue14, numberValue16, flag11, numberValue17, flag12, flag13, flag2, cmgCall, textValue, numberValue3, numberValue5, flag3, flag4, flag5, flag6, numberValue8
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: workValue; parameters: arg12) ===
    function workValue(arg12)
      local mathHelper, numberValue12, numberValue13
      mathHelper = true
      flag = mathHelper
      mathHelper = arg12.disableDamage
      if mathHelper then
        mathHelper = 0
        vector3Builder4 = mathHelper
        mathHelper = math
        mathHelper = mathHelper.random
        numberValue12 = 8
        numberValue13 = 12
        mathHelper = mathHelper(numberValue12, numberValue13)
        vector3Builder5 = mathHelper
      end
    end

    -- === HELPER FUNCTION: weaponHash(arg12) ===
    function weaponHash(arg12)
      local mathHelper, numberValue12, numberValue13, numberValue15
      mathHelper = false
      flag = mathHelper
      mathHelper = arg12.disableDamage
      if mathHelper then
        mathHelper = PlayerId
        -- Beginner: result below is localPlayerIndex.
        mathHelper = mathHelper()
        numberValue12 = SetPlayerMeleeWeaponDamageModifier
        numberValue13 = mathHelper
        numberValue15 = 1.0
        numberValue12(numberValue13, numberValue15)
        numberValue12 = SetPlayerWeaponDamageModifier
        numberValue13 = mathHelper
        numberValue15 = 1.0
        numberValue12(numberValue13, numberValue15)
        numberValue12 = SetWeaponDamageModifier
        numberValue13 = -1569615261
        numberValue15 = 1.0
        numberValue12(numberValue13, numberValue15)
        numberValue12 = SetPedSuffersCriticalHits
        numberValue13 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        numberValue13 = numberValue13()
        numberValue15 = true
        numberValue12(numberValue13, numberValue15)
        numberValue12 = 0
        vector3Builder4 = numberValue12
        numberValue12 = 0
        vector3Builder5 = numberValue12
      end
    end

    -- === HELPER FUNCTION (decompiler name: numberValue14; parameters: arg12) ===
    function numberValue14(arg12)
      local mathHelper, numberValue12, numberValue13, numberValue15
      mathHelper = arg12.disableDamage
      if mathHelper then
        mathHelper = PlayerId
        -- Beginner: result below is localPlayerIndex.
        mathHelper = mathHelper()
        numberValue12 = SetPlayerMeleeWeaponDamageModifier
        numberValue13 = mathHelper
        numberValue15 = 0.01
        numberValue12(numberValue13, numberValue15)
        numberValue12 = SetPlayerWeaponDamageModifier
        numberValue13 = mathHelper
        numberValue15 = 0.01
        numberValue12(numberValue13, numberValue15)
        numberValue12 = SetWeaponDamageModifier
        numberValue13 = -1569615261
        numberValue15 = 0.01
        numberValue12(numberValue13, numberValue15)
        numberValue12 = SetPedSuffersCriticalHits
        numberValue13 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        numberValue13 = numberValue13()
        numberValue15 = false
        numberValue12(numberValue13, numberValue15)
      end
    end
    numberValue16 = pairs
    flag11 = dataTable
    numberValue16, flag11, numberValue17, flag12 = numberValue16(flag11)
    for flag13, flag2 in numberValue16, flag11, numberValue17, flag12 do
      cmgCall = CMG
      cmgCall = cmgCall.createArea
      textValue = "boxing_"
      numberValue3 = flag13
      textValue = textValue .. numberValue3
      numberValue3 = flag2.pos
      numberValue5 = flag2.radius
      flag3 = 6
      flag4 = workValue
      flag5 = weaponHash
      flag6 = numberValue14
      numberValue8 = flag2
      -- Beginner: Create an interaction area around a world position.
      cmgCall(textValue, numberValue3, numberValue5, flag3, flag4, flag5, flag6, numberValue8)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
vector3Builder8(vector3Builder9, vector3Builder)
vector3Builder8 = RegisterCommand
vector3Builder9 = "shuff"
-- Beginner: this function is the command handler for "shuff".

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2, workValue
  arg1 = IsPedInAnyVehicle
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  workValue = false
  arg1 = arg1(arg2, workValue)
  if arg1 then
    arg1 = vector3Builder7
    arg2 = false
    arg1(arg2)
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 5000
    arg1(arg2)
    arg1 = vector3Builder7
    arg2 = true
    -- Beginner: Register a client-side event handler. Event/command: true.
    arg1(arg2)
  else
    arg1 = CancelEvent
    arg1()
  end
end
vector3Builder2 = false
-- Beginner: Register a chat/console command. Event/command: "shuff".
vector3Builder8(vector3Builder9, vector3Builder, vector3Builder2)
vector3Builder8 = false
vector3Builder9 = 0
vector3Builder = {}
vector3Builder2 = vector3
numberValue = -60.958786010742
numberValue2 = -1291.7238769531
numberValue4 = 29.905078887939
vector3Builder2 = vector3Builder2(numberValue, numberValue2, numberValue4)
numberValue = vector3
numberValue2 = 3913.345703125
numberValue4 = 4882.3188476562
cmgCall2 = 12.603978157043
numberValue = numberValue(numberValue2, numberValue4, cmgCall2)
numberValue2 = vector3
numberValue4 = -2966.6594238281
cmgCall2 = 44.978782653809
numberValue6 = 11.609387397766
numberValue2 = numberValue2(numberValue4, cmgCall2, numberValue6)
numberValue4 = vector3
cmgCall2 = 1707.8901367188
numberValue6 = 2519.1606445312
numberValue7 = 44.566337585449
numberValue4, cmgCall2, numberValue6, numberValue7 = numberValue4(cmgCall2, numberValue6, numberValue7)
vector3Builder[1] = vector3Builder2
vector3Builder[2] = numberValue
vector3Builder[3] = numberValue2
vector3Builder[4] = numberValue4
vector3Builder[5] = cmgCall2
vector3Builder[6] = numberValue6
vector3Builder[7] = numberValue7
vector3Builder2 = {}

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, workValue, weaponHash, numberValue14, numberValue16, flag11, numberValue17, flag12, flag13, flag2, cmgCall, textValue, numberValue3, numberValue5, flag3, flag4, flag5, flag6, numberValue8, flag7
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.loadModel
  workValue = 335898267
  arg2 = arg2(workValue)
  workValue = GetEntityCoords
  weaponHash = arg1
  -- Beginner: result below is entityCoords.
  workValue = workValue(weaponHash)
  weaponHash = CMG
  weaponHash = weaponHash.requestEntitySpawn
  numberValue14 = "boxing_glove_a"
  weaponHash(numberValue14)
  weaponHash = CreateObject
  numberValue14 = arg2
  numberValue16 = workValue.x
  flag11 = workValue.y
  numberValue17 = workValue.z
  numberValue17 = numberValue17 + 0.5
  flag12 = true
  flag13 = false
  flag2 = false
  -- Beginner: result below is objectEntity.
  weaponHash = weaponHash(numberValue14, numberValue16, flag11, numberValue17, flag12, flag13, flag2)
  numberValue14 = CMG
  numberValue14 = numberValue14.requestEntitySpawn
  numberValue16 = "boxing_glove_b"
  numberValue14(numberValue16)
  numberValue14 = CreateObject
  numberValue16 = arg2
  flag11 = workValue.x
  numberValue17 = workValue.y
  flag12 = workValue.z
  flag12 = flag12 + 0.5
  flag13 = true
  flag2 = false
  cmgCall = false
  -- Beginner: result below is objectEntity.
  numberValue14 = numberValue14(numberValue16, flag11, numberValue17, flag12, flag13, flag2, cmgCall)
  numberValue16 = table
  numberValue16 = numberValue16.insert
  flag11 = vector3Builder2
  numberValue17 = weaponHash
  numberValue16(flag11, numberValue17)
  numberValue16 = table
  numberValue16 = numberValue16.insert
  flag11 = vector3Builder2
  numberValue17 = numberValue14
  numberValue16(flag11, numberValue17)
  numberValue16 = SetModelAsNoLongerNeeded
  flag11 = arg2
  numberValue16(flag11)
  numberValue16 = FreezeEntityPosition
  flag11 = weaponHash
  numberValue17 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue16(flag11, numberValue17)
  numberValue16 = SetEntityCollision
  flag11 = weaponHash
  numberValue17 = false
  flag12 = true
  numberValue16(flag11, numberValue17, flag12)
  numberValue16 = ActivatePhysics
  flag11 = weaponHash
  numberValue16(flag11)
  numberValue16 = FreezeEntityPosition
  flag11 = numberValue14
  numberValue17 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue16(flag11, numberValue17)
  numberValue16 = SetEntityCollision
  flag11 = numberValue14
  numberValue17 = false
  flag12 = true
  numberValue16(flag11, numberValue17, flag12)
  numberValue16 = ActivatePhysics
  flag11 = numberValue14
  numberValue16(flag11)
  if not arg1 then
    numberValue16 = CMG
    numberValue16 = numberValue16.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    numberValue16 = numberValue16()
    arg1 = numberValue16
  end
  numberValue16 = AttachEntityToEntity
  flag11 = weaponHash
  numberValue17 = arg1
  flag12 = GetPedBoneIndex
  flag13 = arg1
  flag2 = 61007
  flag12 = flag12(flag13, flag2)
  flag13 = 0.05
  flag2 = 0.0
  cmgCall = 0.04
  textValue = 0.0
  numberValue3 = 90.0
  numberValue5 = -90.0
  flag3 = true
  flag4 = true
  flag5 = false
  flag6 = true
  numberValue8 = 1
  flag7 = true
  -- Beginner: Attach one entity to another entity.
  numberValue16(flag11, numberValue17, flag12, flag13, flag2, cmgCall, textValue, numberValue3, numberValue5, flag3, flag4, flag5, flag6, numberValue8, flag7)
  numberValue16 = AttachEntityToEntity
  flag11 = numberValue14
  numberValue17 = arg1
  flag12 = GetPedBoneIndex
  flag13 = arg1
  flag2 = 43810
  flag12 = flag12(flag13, flag2)
  flag13 = 0.05
  flag2 = 0.0
  cmgCall = -0.04
  textValue = 0.0
  numberValue3 = 90.0
  numberValue5 = 90.0
  flag3 = true
  flag4 = true
  flag5 = false
  flag6 = true
  numberValue8 = 1
  flag7 = true
  numberValue16(flag11, numberValue17, flag12, flag13, flag2, cmgCall, textValue, numberValue3, numberValue5, flag3, flag4, flag5, flag6, numberValue8, flag7)
end

-- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
function numberValue2()
  local arg1, arg2, workValue, weaponHash, numberValue14, numberValue16, flag11, numberValue17
  arg1 = pairs
  arg2 = vector3Builder2
  arg1, arg2, workValue, weaponHash = arg1(arg2)
  for numberValue14, numberValue16 in arg1, arg2, workValue, weaponHash do
    flag11 = DeleteObject
    numberValue17 = numberValue16
    flag11(numberValue17)
  end
  arg1 = {}
  vector3Builder2 = arg1
end
numberValue4 = AddEventHandler
cmgCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: numberValue6; parameters: arg1, arg2) ===
function numberValue6(arg1, arg2)
  local workValue, weaponHash, numberValue14, numberValue16, flag11, numberValue17, flag12, flag13, flag2, cmgCall, textValue, numberValue3, numberValue5, flag3, flag4, flag5, flag6, numberValue8, flag7, numberValue9, numberValue10, numberValue11, flag8, flag9, flag10
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
    function workValue()
      local arg12, mathHelper
      arg12 = vector3Builder8
      if not arg12 then
        arg12 = drawNativeNotification
        mathHelper = "Press ~INPUT_PICKUP~ to  pick up \240\159\165\138"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg12(mathHelper)
      else
        arg12 = drawNativeNotification
        mathHelper = "Press ~INPUT_PICKUP~ to take off \240\159\165\138"
        arg12(mathHelper)
      end
    end

    -- === HELPER FUNCTION: weaponHash() ===
    function weaponHash()
      local arg12, mathHelper
    end

    -- === HELPER FUNCTION (decompiler name: numberValue14; parameters: none) ===
    function numberValue14()
      local arg12, mathHelper, numberValue12
      arg12 = IsControlJustPressed
      mathHelper = 1
      numberValue12 = 51
      arg12 = arg12(mathHelper, numberValue12)
      if arg12 then
        arg12 = vector3Builder8
        if not arg12 then
          arg12 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg12 = arg12()
          mathHelper = vector3Builder9
          arg12 = arg12 - mathHelper
          mathHelper = 5000
          if arg12 > mathHelper then
            arg12 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            arg12 = arg12()
            vector3Builder9 = arg12
            arg12 = numberValue
            arg12()
            arg12 = true
            vector3Builder8 = arg12
          else
            arg12 = notify
            mathHelper = "~r~Please wait before adding gloves again."
            -- Beginner: Show a notification to the player.
            arg12(mathHelper)
          end
        else
          arg12 = numberValue2
          arg12()
          arg12 = false
          vector3Builder8 = arg12
        end
      end
    end
    numberValue16 = pairs
    flag11 = vector3Builder
    numberValue16, flag11, numberValue17, flag12 = numberValue16(flag11)
    for flag13, flag2 in numberValue16, flag11, numberValue17, flag12 do
      cmgCall = tCMG
      cmgCall = cmgCall.addMarker
      textValue = flag2.x
      numberValue3 = flag2.y
      numberValue5 = flag2.z
      flag3 = 1.0
      flag4 = 1.0
      flag5 = 1.0
      flag6 = 0
      numberValue8 = 0
      flag7 = 255
      numberValue9 = 100
      numberValue10 = 50
      numberValue11 = 27
      flag8 = false
      flag9 = false
      flag10 = true
      -- Beginner: Create a world marker.
      cmgCall(textValue, numberValue3, numberValue5, flag3, flag4, flag5, flag6, numberValue8, flag7, numberValue9, numberValue10, numberValue11, flag8, flag9, flag10)
      cmgCall = CMG
      cmgCall = cmgCall.createArea
      textValue = flag13
      numberValue3 = "_boxingGloves"
      textValue = textValue .. numberValue3
      numberValue3 = flag2
      numberValue5 = 1.5
      flag3 = 6
      flag4 = workValue
      flag5 = weaponHash
      flag6 = numberValue14
      numberValue8 = {}
      -- Beginner: Create an interaction area around a world position.
      cmgCall(textValue, numberValue3, numberValue5, flag3, flag4, flag5, flag6, numberValue8)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
numberValue4(cmgCall2, numberValue6)
numberValue4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2
  arg1 = flag
  return arg1
end
numberValue4.inBoxingZone = cmgCall2
numberValue4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2, workValue, weaponHash, numberValue14
  arg1 = GetSelectedPedWeapon
  arg2 = PlayerPedId
  arg2, workValue, weaponHash, numberValue14 = arg2()
  -- Beginner: result below is weaponHash.
  arg1 = arg1(arg2, workValue, weaponHash, numberValue14)
  if 203923196 == arg1 or 818285584 == arg1 then
    return
  end
  if -1569615261 ~= arg1 then
    arg2 = DisableControlAction
    workValue = 0
    weaponHash = 140
    numberValue14 = true
    arg2(workValue, weaponHash, numberValue14)
    arg2 = DisableControlAction
    workValue = 0
    weaponHash = 141
    numberValue14 = true
    arg2(workValue, weaponHash, numberValue14)
    arg2 = DisableControlAction
    workValue = 0
    weaponHash = 142
    numberValue14 = true
    arg2(workValue, weaponHash, numberValue14)
    return
  end
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 140
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 141
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 142
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 143
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 263
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 264
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 257
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 24
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
  arg2 = DisableControlAction
  workValue = 0
  weaponHash = 25
  numberValue14 = true
  arg2(workValue, weaponHash, numberValue14)
end
numberValue4.disableMeleeControls = cmgCall2
