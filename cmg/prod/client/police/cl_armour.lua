--[[
    Beginner Guide: cl_armour.lua
    =============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Armour
    =======================

    File: cmg/prod/client/police/cl_armour.lua
    Purpose: This file contains police gameplay.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Commands/command-like entries found:
      * policehorse

    Network/hash identifiers found: 1
      They are intentionally left unchanged because matching server code may use them.
      * 53d18271be

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * Press ~INPUT_PICKUP~ to Pickup Armour
      * ~r~You shouldn
      * ~r~You can not get a horse out at this time.
      * ~s~~INPUT_JUMP~ to exit horse
      * Press ~INPUT_PICKUP~ to spawn police horse!

]]
local dataTable, dataTable2, vector3Builder6, vector3Builder7, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, vector3Builder13, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, numberValue2, numberValue4, numberValue6
dataTable = {}
dataTable2 = {}
vector3Builder6 = vector3
vector3Builder7 = 459.33172607422
vector3Builder8 = -979.49810791016
vector3Builder9 = 30.689582824708
vector3Builder6 = vector3Builder6(vector3Builder7, vector3Builder8, vector3Builder9)
dataTable2.position = vector3Builder6
dataTable2.permission = "cop.whitelisted"
vector3Builder6 = {}
vector3Builder7 = vector3
vector3Builder8 = 1841.6328125
vector3Builder9 = 3690.603515625
vector3Builder10 = 34.26708984375
vector3Builder7 = vector3Builder7(vector3Builder8, vector3Builder9, vector3Builder10)
vector3Builder6.position = vector3Builder7
vector3Builder6.permission = "cop.whitelisted"
vector3Builder7 = {}
vector3Builder8 = vector3
vector3Builder9 = -1106.9595947266
vector3Builder10 = -824.35784912109
vector3Builder11 = 14.282789230347
vector3Builder8 = vector3Builder8(vector3Builder9, vector3Builder10, vector3Builder11)
vector3Builder7.position = vector3Builder8
vector3Builder7.permission = "cop.whitelisted"
vector3Builder8 = {}
vector3Builder9 = vector3
vector3Builder10 = -447.70739746094
vector3Builder11 = 6013.6123046875
vector3Builder12 = 31.716396331787
vector3Builder9 = vector3Builder9(vector3Builder10, vector3Builder11, vector3Builder12)
vector3Builder8.position = vector3Builder9
vector3Builder8.permission = "cop.whitelisted"
vector3Builder9 = {}
vector3Builder10 = vector3
vector3Builder11 = 1539.0798339844
vector3Builder12 = 795.29608154297
vector3Builder13 = 78.693008422852
vector3Builder10 = vector3Builder10(vector3Builder11, vector3Builder12, vector3Builder13)
vector3Builder9.position = vector3Builder10
vector3Builder9.permission = "cop.whitelisted"
vector3Builder10 = {}
vector3Builder11 = vector3
vector3Builder12 = 1764.9135742188
vector3Builder13 = 2587.9736328125
vector3Builder = 46.001010894775
vector3Builder11 = vector3Builder11(vector3Builder12, vector3Builder13, vector3Builder)
vector3Builder10.position = vector3Builder11
vector3Builder10.permission = "prisonguard.whitelisted"
vector3Builder11 = {}
vector3Builder12 = vector3
vector3Builder13 = -2438.9677734375
vector3Builder = -249.46469116211
vector3Builder2 = 16.358680725098
vector3Builder12 = vector3Builder12(vector3Builder13, vector3Builder, vector3Builder2)
vector3Builder11.position = vector3Builder12
vector3Builder11.permission = "borderforce.whitelisted"
vector3Builder12 = {}
vector3Builder13 = vector3
vector3Builder = 1302.6427001953
vector3Builder2 = 616.08892822266
vector3Builder3 = 80.330574035645
vector3Builder13 = vector3Builder13(vector3Builder, vector3Builder2, vector3Builder3)
vector3Builder12.position = vector3Builder13
vector3Builder12.permission = "borderforce.whitelisted"
vector3Builder13 = {}
vector3Builder = vector3
vector3Builder2 = 2418.9753417969
vector3Builder3 = -184.60707092285
vector3Builder4 = 87.478393554688
vector3Builder = vector3Builder(vector3Builder2, vector3Builder3, vector3Builder4)
vector3Builder13.position = vector3Builder
vector3Builder13.permission = "borderforce.whitelisted"
vector3Builder = {}
vector3Builder2 = vector3
vector3Builder3 = -433.68515014648
vector3Builder4 = -319.22576904297
vector3Builder5 = 34.910751342773
vector3Builder2 = vector3Builder2(vector3Builder3, vector3Builder4, vector3Builder5)
vector3Builder.position = vector3Builder2
vector3Builder.permission = "nhs.onduty.permission"
vector3Builder2 = {}
vector3Builder3 = vector3
vector3Builder4 = 257.38790893555
vector3Builder5 = 6333.384765625
numberValue2 = 32.427223205566
vector3Builder3 = vector3Builder3(vector3Builder4, vector3Builder5, numberValue2)
vector3Builder2.position = vector3Builder3
vector3Builder2.permission = "nhs.onduty.permission"
vector3Builder3 = {}
vector3Builder4 = vector3
vector3Builder5 = 314.72796630859
numberValue2 = -566.34704589844
numberValue4 = 75.724975585938
vector3Builder4 = vector3Builder4(vector3Builder5, numberValue2, numberValue4)
vector3Builder3.position = vector3Builder4
vector3Builder3.permission = "nhs.onduty.permission"
vector3Builder4 = {}
vector3Builder5 = vector3
numberValue2 = 1838.9287109375
numberValue4 = 3682.7348632812
numberValue6 = 34.270023345947
vector3Builder5 = vector3Builder5(numberValue2, numberValue4, numberValue6)
vector3Builder4.position = vector3Builder5
vector3Builder4.permission = "nhs.onduty.permission"
dataTable[1] = dataTable2
dataTable[2] = vector3Builder6
dataTable[3] = vector3Builder7
dataTable[4] = vector3Builder8
dataTable[5] = vector3Builder9
dataTable[6] = vector3Builder10
dataTable[7] = vector3Builder11
dataTable[8] = vector3Builder12
dataTable[9] = vector3Builder13
dataTable[10] = vector3Builder
dataTable[11] = vector3Builder2
dataTable[12] = vector3Builder3
dataTable[13] = vector3Builder4
dataTable2 = {}
vector3Builder6 = vector3
vector3Builder7 = 454.01052856445
vector3Builder8 = -1024.8431396484
vector3Builder9 = 28.496109008789
vector3Builder6, vector3Builder7, vector3Builder8, vector3Builder9, vector3Builder10, vector3Builder11, vector3Builder12, vector3Builder13, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, numberValue2, numberValue4, numberValue6 = vector3Builder6(vector3Builder7, vector3Builder8, vector3Builder9)
dataTable2[1] = vector3Builder6
dataTable2[2] = vector3Builder7
dataTable2[3] = vector3Builder8
dataTable2[4] = vector3Builder9
dataTable2[5] = vector3Builder10
dataTable2[6] = vector3Builder11
dataTable2[7] = vector3Builder12
dataTable2[8] = vector3Builder13
dataTable2[9] = vector3Builder
dataTable2[10] = vector3Builder2
dataTable2[11] = vector3Builder3
dataTable2[12] = vector3Builder4
dataTable2[13] = vector3Builder5
dataTable2[14] = numberValue2
dataTable2[15] = numberValue4
dataTable2[16] = numberValue6
vector3Builder6 = AddEventHandler
vector3Builder7 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function vector3Builder8(arg1, arg2)
  local workValue, cmgCall3, playerPed2, playerPed3, cmgCall4, dataTable3, cmgCall5, textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function workValue()
      local cmgCall, textValue2
      cmgCall = drawNativeNotification
      textValue2 = "Press ~INPUT_PICKUP~ to Pickup Armour"
      -- Beginner: Show a GTA-style notification/help prompt.
      cmgCall(textValue2)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function cmgCall3()
      local cmgCall, textValue2
    end
    function playerPed2()
      local cmgCall, textValue2, numberValue8, textValue3, textValue4, flag10
      cmgCall = IsControlJustPressed
      textValue2 = 1
      numberValue8 = 51
      cmgCall = cmgCall(textValue2, numberValue8)
      if cmgCall then
        cmgCall = CMG
        cmgCall = cmgCall.hasClientPermission
        textValue2 = "police.onduty.permission"
        cmgCall = cmgCall(textValue2)
        if not cmgCall then
          cmgCall = CMG
          cmgCall = cmgCall.hasClientPermission
          textValue2 = "prisonguard.onduty.permission"
          cmgCall = cmgCall(textValue2)
          if not cmgCall then
            cmgCall = CMG
            cmgCall = cmgCall.hasClientPermission
            textValue2 = "nhs.onduty.permission"
            cmgCall = cmgCall(textValue2)
            if not cmgCall then
              goto flow_label_40
            end
          end
        end
        cmgCall = TriggerServerEvent
        textValue2 = "53d18271be"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53d18271be".
        cmgCall(textValue2)
        cmgCall = GetSoundId
        -- Beginner: result below is soundHandle.
        cmgCall = cmgCall()
        textValue2 = PlaySoundFrontend
        numberValue8 = cmgCall
        textValue3 = "Armour_On"
        textValue4 = "DLC_GR_Steal_Miniguns_Sounds"
        flag10 = true
        textValue2(numberValue8, textValue3, textValue4, flag10)
        textValue2 = ReleaseSoundId
        numberValue8 = cmgCall
        textValue2(numberValue8)
        goto flow_label_44
        ::flow_label_40::
        cmgCall = tCMG
        cmgCall = cmgCall.notify
        textValue2 = "~r~You shouldn't be here...Engaging defenses in 3..2..1..."
        -- Beginner: Show a notification to the player.
        cmgCall(textValue2)
      end
      ::flow_label_44::
    end
    playerPed3 = pairs
    cmgCall4 = dataTable
    playerPed3, cmgCall4, dataTable3, cmgCall5 = playerPed3(cmgCall4)
    for textValue5, playerPed in playerPed3, cmgCall4, dataTable3, cmgCall5 do
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.hasClientPermission
      textValue = playerPed.permission
      cmgCall2 = cmgCall2(textValue)
      if cmgCall2 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.createArea
        textValue = "armour_"
        position = textValue5
        textValue = textValue .. position
        position = playerPed.position
        numberValue = 1.5
        numberValue3 = 6
        numberValue5 = workValue
        flag = cmgCall3
        flag2 = playerPed2
        -- Beginner: Create an interaction area around a world position.
        cmgCall2(textValue, position, numberValue, numberValue3, numberValue5, flag, flag2)
        cmgCall2 = tCMG
        cmgCall2 = cmgCall2.addPropMarker
        textValue = "bzzz_marker_mask_blue_anim"
        position = playerPed.position
        position = position.x
        numberValue = playerPed.position
        numberValue = numberValue.y
        numberValue3 = playerPed.position
        numberValue3 = numberValue3.z
        numberValue5 = 20.0
        -- Beginner: Create a prop-style world marker.
        cmgCall2(textValue, position, numberValue, numberValue3, numberValue5)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
vector3Builder6(vector3Builder7, vector3Builder8)
vector3Builder6 = false
vector3Builder7 = false
vector3Builder8 = 0
vector3Builder9 = CMG
function vector3Builder10()
  local arg1, arg2
  arg1 = vector3Builder6
  if not arg1 then
    arg1 = GetPedType
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg1 = arg1(arg2)
    arg1 = 28 == arg1
  end
  return arg1
end
vector3Builder9.isPlayerInAnimalForm = vector3Builder10
vector3Builder9 = CMG
function vector3Builder10()
  local arg1, arg2
  arg1 = vector3Builder7
  return arg1
end
vector3Builder9.isPoliceHorse = vector3Builder10
vector3Builder9 = CMG
function vector3Builder10(arg1)
  local arg2
  vector3Builder7 = arg1
end
vector3Builder9.setInPoliceHorseDelayed = vector3Builder10
function vector3Builder9()
  local arg1, arg2, workValue, cmgCall3, playerPed2, playerPed3, cmgCall4, dataTable3, cmgCall5, textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = IsPedFalling
  workValue = arg1
  arg2 = arg2(workValue)
  if not arg2 then
    arg2 = IsPedRagdoll
    workValue = arg1
    arg2 = arg2(workValue)
    if not arg2 then
      arg2 = GetEntityHealth
      workValue = arg1
      -- Beginner: result below is health.
      arg2 = arg2(workValue)
      if not (arg2 <= 102) then
        arg2 = IsPedInParachuteFreeFall
        workValue = arg1
        arg2 = arg2(workValue)
        if not arg2 then
          goto flow_label_27
        end
      end
    end
  end
  arg2 = notify
  workValue = "~r~You can not get a horse out at this time."
  -- Beginner: Show a notification to the player.
  arg2(workValue)
  return
  ::flow_label_27::
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  workValue = vector3Builder8
  arg2 = arg2 - workValue
  workValue = 10000
  if arg2 < workValue then
    arg2 = notify
    workValue = "~r~Please wait at least 10 seconds before going on the horse again."
    arg2(workValue)
    return
  end
  arg2 = GetEntityModel
  workValue = PlayerPedId
  workValue, cmgCall3, playerPed2, playerPed3, cmgCall4, dataTable3, cmgCall5, textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6 = workValue()
  -- Beginner: result below is modelHash.
  arg2 = arg2(workValue, cmgCall3, playerPed2, playerPed3, cmgCall4, dataTable3, cmgCall5, textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6)
  if 1885233650 == arg2 or -1667301416 == arg2 then
    workValue = true
    vector3Builder6 = workValue
    workValue = true
    vector3Builder7 = workValue
    workValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue = workValue()
    vector3Builder8 = workValue
    workValue = CMG
    workValue = workValue.loadModel
    cmgCall3 = "a_c_deer"
    workValue = workValue(cmgCall3)
    if not workValue then
      return
    end
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.requestEntitySpawn
    playerPed2 = "police_horse_ped"
    playerPed3 = arg2
    cmgCall3(playerPed2, playerPed3)
    cmgCall3 = ClonePed
    playerPed2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed2 = playerPed2()
    playerPed3 = true
    cmgCall4 = true
    dataTable3 = true
    cmgCall3 = cmgCall3(playerPed2, playerPed3, cmgCall4, dataTable3)
    playerPed2 = GetEntityHealth
    playerPed3 = PlayerPedId
    playerPed3, cmgCall4, dataTable3, cmgCall5, textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6 = playerPed3()
    -- Beginner: result below is health.
    playerPed2 = playerPed2(playerPed3, cmgCall4, dataTable3, cmgCall5, textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6)
    playerPed3 = tCMG
    playerPed3 = playerPed3.getCustomization
    playerPed3 = playerPed3()
    cmgCall4 = tCMG
    cmgCall4 = cmgCall4.setCustomization
    dataTable3 = {}
    dataTable3.modelhash = -664053099
    cmgCall4(dataTable3)
    cmgCall4 = SetModelAsNoLongerNeeded
    dataTable3 = workValue
    cmgCall4(dataTable3)
    cmgCall4 = Citizen
    cmgCall4 = cmgCall4.CreateThread
    function dataTable3()
      local cmgCall, textValue2, numberValue8
      cmgCall = Citizen
      cmgCall = cmgCall.Wait
      textValue2 = 200
      cmgCall(textValue2)
      cmgCall = SetEntityHealth
      textValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      textValue2 = textValue2()
      numberValue8 = playerPed2
      cmgCall(textValue2, numberValue8)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    cmgCall4(dataTable3)
    cmgCall4 = 0.12
    dataTable3 = -0.2
    cmgCall5 = AttachEntityToEntity
    textValue5 = cmgCall3
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    cmgCall2 = GetPedBoneIndex
    textValue = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue = textValue()
    position = 24816
    cmgCall2 = cmgCall2(textValue, position)
    textValue = dataTable3
    position = 0.0
    numberValue = cmgCall4
    numberValue3 = 0.0
    numberValue5 = 0.0
    flag = -90.0
    flag2 = false
    flag3 = false
    flag4 = false
    flag5 = true
    numberValue7 = 2
    flag6 = true
    -- Beginner: Attach one entity to another entity.
    cmgCall5(textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6)
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.loadAnimDict
    textValue5 = "amb@prop_human_seat_chair@male@generic@base"
    -- Beginner: Load a GTA animation dictionary before using it.
    cmgCall5(textValue5)
    cmgCall5 = TaskPlayAnim
    textValue5 = cmgCall3
    playerPed = "amb@prop_human_seat_chair@male@generic@base"
    cmgCall2 = "base"
    textValue = 8.0
    position = 1
    numberValue = -1
    numberValue3 = 1
    numberValue5 = 1.0
    flag = false
    flag2 = false
    flag3 = false
    -- Beginner: Play an animation on a ped.
    cmgCall5(textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3)
    cmgCall5 = RemoveAnimDict
    textValue5 = "amb@prop_human_seat_chair@male@generic@base"
    cmgCall5(textValue5)
    cmgCall5 = FreezeEntityPosition
    textValue5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue5 = textValue5()
    playerPed = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgCall5(textValue5, playerPed)
    cmgCall5 = FreezeEntityPosition
    textValue5 = cmgCall3
    playerPed = false
    cmgCall5(textValue5, playerPed)
    cmgCall5 = SetPedComponentVariation
    textValue5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue5 = textValue5()
    playerPed = 0
    cmgCall2 = 0
    textValue = 0
    position = 0
    cmgCall5(textValue5, playerPed, cmgCall2, textValue, position)
    cmgCall5 = SetBlockingOfNonTemporaryEvents
    textValue5 = cmgCall3
    playerPed = true
    cmgCall5(textValue5, playerPed)
    cmgCall5 = SetPedFleeAttributes
    textValue5 = cmgCall3
    playerPed = 0
    cmgCall2 = false
    cmgCall5(textValue5, playerPed, cmgCall2)
    cmgCall5 = SetPedRelationshipGroupHash
    textValue5 = cmgCall3
    playerPed = 1191392768
    cmgCall5(textValue5, playerPed)
    while true do
      cmgCall5 = vector3Builder6
      if not cmgCall5 then
        break
      end
      cmgCall5 = Wait
      textValue5 = 0
      cmgCall5(textValue5)
      cmgCall5 = drawNativeNotification
      textValue5 = "~s~~INPUT_JUMP~ to exit horse"
      -- Beginner: Show a GTA-style notification/help prompt.
      cmgCall5(textValue5)
      cmgCall5 = CMG
      cmgCall5 = cmgCall5.setWeapon
      textValue5 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      textValue5 = textValue5()
      playerPed = "weapon_unarmed"
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 263
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 264
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 257
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 140
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 141
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 142
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 143
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 24
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = DisableControlAction
      textValue5 = 0
      playerPed = 25
      cmgCall2 = true
      cmgCall5(textValue5, playerPed, cmgCall2)
      cmgCall5 = SetPedDropsWeaponsWhenDead
      textValue5 = cmgCall3
      playerPed = false
      cmgCall5(textValue5, playerPed)
      cmgCall5 = IsDisabledControlPressed
      textValue5 = 0
      playerPed = 22
      cmgCall5 = cmgCall5(textValue5, playerPed)
      if cmgCall5 then
        cmgCall5 = false
        vector3Builder6 = cmgCall5
      end
    end
    cmgCall5 = DeleteEntity
    textValue5 = cmgCall3
    -- Beginner: Delete a GTA entity.
    cmgCall5(textValue5)
    cmgCall5 = DetachEntity
    textValue5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue5 = textValue5()
    playerPed = false
    cmgCall2 = false
    cmgCall5(textValue5, playerPed, cmgCall2)
    cmgCall5 = GetEntityHealth
    textValue5 = PlayerPedId
    textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6 = textValue5()
    -- Beginner: result below is health.
    cmgCall5 = cmgCall5(textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6)
    textValue5 = tCMG
    textValue5 = textValue5.setCustomization
    playerPed = playerPed3
    textValue5(playerPed)
    textValue5 = Citizen
    textValue5 = textValue5.CreateThread
    function playerPed()
      local cmgCall, textValue2, numberValue8
      cmgCall = Citizen
      cmgCall = cmgCall.Wait
      textValue2 = 200
      cmgCall(textValue2)
      cmgCall = SetEntityHealth
      textValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      textValue2 = textValue2()
      numberValue8 = cmgCall5
      cmgCall(textValue2, numberValue8)
      cmgCall = Citizen
      cmgCall = cmgCall.Wait
      textValue2 = 1000
      cmgCall(textValue2)
      cmgCall = false
      vector3Builder7 = cmgCall
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    textValue5(playerPed)
  else
    workValue = tCMG
    workValue = workValue.notify
    cmgCall3 = "~r~Custom peds cannot be used with horses."
    -- Beginner: Show a notification to the player.
    workValue(cmgCall3)
  end
end
vector3Builder10 = AddEventHandler
vector3Builder11 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function vector3Builder12(arg1, arg2)
  local workValue, cmgCall3, playerPed2, playerPed3, cmgCall4, dataTable3, cmgCall5, textValue5, playerPed, cmgCall2, textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6, flag7, flag8, flag9
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function workValue()
      local cmgCall, textValue2
      cmgCall = drawNativeNotification
      textValue2 = "Press ~INPUT_PICKUP~ to spawn police horse!"
      -- Beginner: Show a GTA-style notification/help prompt.
      cmgCall(textValue2)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function cmgCall3()
      local cmgCall, textValue2
    end
    function playerPed2()
      local cmgCall, textValue2, numberValue8
      cmgCall = IsControlJustPressed
      textValue2 = 1
      numberValue8 = 51
      cmgCall = cmgCall(textValue2, numberValue8)
      if cmgCall then
        cmgCall = vector3Builder6
        if not cmgCall then
          cmgCall = CMG
          cmgCall = cmgCall.hasClientPermission
          textValue2 = "police.onduty.permission"
          cmgCall = cmgCall(textValue2)
          if cmgCall then
            cmgCall = CMG
            cmgCall = cmgCall.inOrganHesit
            cmgCall = cmgCall()
            if not cmgCall then
              cmgCall = vector3Builder9
              cmgCall()
          end
          else
            cmgCall = tCMG
            cmgCall = cmgCall.notify
            textValue2 = "~r~This is only available to the MET Police only."
            -- Beginner: Show a notification to the player.
            cmgCall(textValue2)
          end
        end
      end
    end
    playerPed3 = pairs
    cmgCall4 = dataTable2
    playerPed3, cmgCall4, dataTable3, cmgCall5 = playerPed3(cmgCall4)
    for textValue5, playerPed in playerPed3, cmgCall4, dataTable3, cmgCall5 do
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.createArea
      textValue = "horse_"
      position = textValue5
      textValue = textValue .. position
      position = playerPed
      numberValue = 1.5
      numberValue3 = 6
      numberValue5 = workValue
      flag = cmgCall3
      flag2 = playerPed2
      -- Beginner: Create an interaction area around a world position.
      cmgCall2(textValue, position, numberValue, numberValue3, numberValue5, flag, flag2)
      cmgCall2 = tCMG
      cmgCall2 = cmgCall2.addMarker
      textValue = playerPed.x
      position = playerPed.y
      numberValue = playerPed.z
      numberValue3 = 1.0
      numberValue5 = 1.0
      flag = 1.0
      flag2 = 0
      flag3 = 50
      flag4 = 255
      flag5 = 170
      numberValue7 = 50
      flag6 = 42
      flag7 = false
      flag8 = false
      flag9 = true
      -- Beginner: Create a world marker.
      cmgCall2(textValue, position, numberValue, numberValue3, numberValue5, flag, flag2, flag3, flag4, flag5, numberValue7, flag6, flag7, flag8, flag9)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
vector3Builder10(vector3Builder11, vector3Builder12)
vector3Builder10 = RegisterCommand
vector3Builder11 = "policehorse"
-- Beginner: this function is the command handler for "policehorse".
function vector3Builder12()
  local arg1, arg2
  arg1 = vector3Builder6
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.inOrganHesit
    arg1 = arg1()
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.hasClientPermission
      arg2 = "police.onduty.permission"
      arg1 = arg1(arg2)
      if arg1 then
        arg1 = CMG
        arg1 = arg1.hasClientPermission
        arg2 = "horsetrained.whitelisted"
        arg1 = arg1(arg2)
        if arg1 then
          arg1 = vector3Builder9
          arg1()
        else
          arg1 = tCMG
          arg1 = arg1.notify
          arg2 = "~r~You do not have the [Horse Trained] whitelist."
          -- Beginner: Show a notification to the player.
          arg1(arg2)
        end
      else
        arg1 = tCMG
        arg1 = arg1.notify
        arg2 = "~r~This is only available to the MET Police only."
        arg1(arg2)
      end
    end
  end
end
vector3Builder13 = false
-- Beginner: Register a chat/console command. Event/command: "policehorse".
vector3Builder10(vector3Builder11, vector3Builder12, vector3Builder13)