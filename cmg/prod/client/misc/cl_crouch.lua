--[[
    LEVEL 1 BEGINNER GUIDE — Crouch
    ====================================

    File: cmg/prod/client/misc/cl_crouch.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Crouch feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 27
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
local dataCollection, dataCollection2, number13, text2, stateFlag10, stateFlag12, stateFlag13, text4, number16, workingValue19, number, workingValue2, workingValue4, text, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, workingValue17, backgroundThread
dataCollection = {}
dataCollection.crouchKeybindEnabled = true
dataCollection.crouchKeybind = "LCONTROL"
dataCollection.crouchOverride = true
dataCollection.crouchKeypressTimer = 1000
dataCollection.crawlKeybindEnabled = true
dataCollection.crawlKeybind = "RCONTROL"
dataCollection2 = {}
dataCollection2.crouch_keymapping = "Crouch"
dataCollection2.crouch_chat_suggestion = "Crouch"
dataCollection2.crawl_keymapping = "Crawl"
dataCollection2.crawl_chat_suggestion = "Crawl"
dataCollection.localization = dataCollection2
dataCollection2 = {}
number13 = -2146642687
dataCollection2[number13] = "move_m@alien"
number13 = 1450392727
dataCollection2[number13] = "anim_group_move_ballistic"
number13 = 1646588077
dataCollection2[number13] = "move_f@arrogant@a"
number13 = -1273245730
dataCollection2[number13] = "move_m@hurry_butch@a"
number13 = -1654611352
dataCollection2[number13] = "move_m@hurry_butch@b"
number13 = 1135734536
dataCollection2[number13] = "move_m@hurry_butch@c"
number13 = -1768281232
dataCollection2[number13] = "move_m@brave"
number13 = 1160259160
dataCollection2[number13] = "move_m@casual@a"
number13 = 1249489219
dataCollection2[number13] = "move_m@casual@b"
number13 = 1022236204
dataCollection2[number13] = "move_m@casual@c"
number13 = 1730505370
dataCollection2[number13] = "move_m@casual@d"
number13 = 1500565297
dataCollection2[number13] = "move_m@casual@e"
number13 = -742407223
dataCollection2[number13] = "move_m@casual@f"
number13 = -2125795638
dataCollection2[number13] = "move_f@chichi"
number13 = 1130158996
dataCollection2[number13] = "move_m@confident"
number13 = 1607161685
dataCollection2[number13] = "move_m@business@a"
number13 = 1845818312
dataCollection2[number13] = "move_m@business@b"
number13 = -59928421
dataCollection2[number13] = "move_m@business@c"
number13 = -2055591238
dataCollection2[number13] = "move_chubby"
number13 = -108537538
dataCollection2[number13] = "move_f@chubby@a"
number13 = -1401903942
dataCollection2[number13] = "move_f@multiplayer"
number13 = 1113513977
dataCollection2[number13] = "move_m@multiplayer"
number13 = -1287120285
dataCollection2[number13] = "move_m@depressed@a"
number13 = -502630425
dataCollection2[number13] = "move_m@depressed@b"
number13 = 685317947
dataCollection2[number13] = "move_f@depressed@a"
number13 = -859042698
dataCollection2[number13] = "move_m@drunk@a"
number13 = 2037534323
dataCollection2[number13] = "move_m@buzzed"
number13 = -1925018459
dataCollection2[number13] = "move_m@drunk@moderatedrunk"
number13 = -1201085968
dataCollection2[number13] = "move_m@drunk@moderatedrunk_head_up"
number13 = 875753685
dataCollection2[number13] = "move_m@drunk@slightlydrunk"
number13 = -297078218
dataCollection2[number13] = "move_m@drunk@verydrunk"
number13 = 1524082234
dataCollection2[number13] = "move_m@fat@a"
number13 = 522820593
dataCollection2[number13] = "move_f@fat@a"
number13 = -1732630094
dataCollection2[number13] = "move_m@fat@bulky"
number13 = -669438934
dataCollection2[number13] = "move_f@femme@"
number13 = -1857789306
dataCollection2[number13] = "move_characters@franklin@fire"
number13 = -433101684
dataCollection2[number13] = "move_characters@michael@fire"
number13 = 989819896
dataCollection2[number13] = "move_m@fire"
number13 = 2077811903
dataCollection2[number13] = "move_f@flee@a"
number13 = 864310395
dataCollection2[number13] = "move_f@flee@c"
number13 = -1960902366
dataCollection2[number13] = "move_m@flee@a"
number13 = 1287652361
dataCollection2[number13] = "move_m@flee@b"
number13 = -796046076
dataCollection2[number13] = "move_p_m_one"
number13 = -1810566716
dataCollection2[number13] = "move_m@gangster@generic"
number13 = -2114609648
dataCollection2[number13] = "move_m@gangster@ng"
number13 = -875359244
dataCollection2[number13] = "move_m@gangster@var_e"
number13 = 1203637196
dataCollection2[number13] = "move_m@gangster@var_f"
number13 = -1796495834
dataCollection2[number13] = "move_m@gangster@var_i"
number13 = 132330440
dataCollection2[number13] = "move_m@generic"
number13 = 642383383
dataCollection2[number13] = "move_f@generic"
number13 = 696702737
dataCollection2[number13] = "anim@move_m@grooving@"
number13 = -705606766
dataCollection2[number13] = "anim@move_f@grooving@"
number13 = 1013381506
dataCollection2[number13] = "move_m@prison_gaurd"
number13 = 1500055922
dataCollection2[number13] = "move_m@prisoner_cuffed"
number13 = 101970339
dataCollection2[number13] = "move_f@heels@c"
number13 = -1100881352
dataCollection2[number13] = "move_f@heels@d"
number13 = 1712688432
dataCollection2[number13] = "move_m@hiking"
number13 = -1806913316
dataCollection2[number13] = "move_f@hiking"
number13 = -1261021058
dataCollection2[number13] = "move_m@hipster@a"
number13 = -1027640375
dataCollection2[number13] = "move_m@hobo@a"
number13 = -725870658
dataCollection2[number13] = "move_m@hobo@b"
number13 = -1694147212
dataCollection2[number13] = "move_m@hurry@a"
number13 = 1605790647
dataCollection2[number13] = "move_f@hurry@a"
number13 = -32565260
dataCollection2[number13] = "move_f@injured"
number13 = 868295932
dataCollection2[number13] = "move_m@intimidation@1h"
number13 = -749057629
dataCollection2[number13] = "move_m@intimidation@cop@unarmed"
number13 = 584873396
dataCollection2[number13] = "move_m@intimidation@unarmed"
number13 = 92422612
dataCollection2[number13] = "move_p_m_zero_janitor"
number13 = 1864844954
dataCollection2[number13] = "move_p_m_zero_slow"
number13 = 1103953188
dataCollection2[number13] = "move_m@jog@"
number13 = -708603839
dataCollection2[number13] = "move_characters@jimmy@nervous@"
number13 = 1909742916
dataCollection2[number13] = "anim_group_move_lemar_alley"
number13 = 1690913150
dataCollection2[number13] = "move_heist_lester"
number13 = 549262148
dataCollection2[number13] = "move_lester_caneup"
number13 = 186601483
dataCollection2[number13] = "move_f@maneater"
number13 = -578327514
dataCollection2[number13] = "move_ped_bucket"
number13 = -1269633907
dataCollection2[number13] = "move_m@money"
number13 = -207491758
dataCollection2[number13] = "move_m@muscle@a"
number13 = -1543095923
dataCollection2[number13] = "move_m@posh@"
number13 = -1868494245
dataCollection2[number13] = "move_f@posh@"
number13 = 1023544707
dataCollection2[number13] = "move_m@quick"
number13 = 636261340
dataCollection2[number13] = "female_fast_runner"
number13 = -1599479573
dataCollection2[number13] = "move_m@sad@a"
number13 = -1847704748
dataCollection2[number13] = "move_m@sad@b"
number13 = -2077448207
dataCollection2[number13] = "move_m@sad@c"
number13 = -566100771
dataCollection2[number13] = "move_f@sad@a"
number13 = -930295437
dataCollection2[number13] = "move_f@sad@b"
number13 = 1207987305
dataCollection2[number13] = "move_m@sassy"
number13 = 1235276737
dataCollection2[number13] = "move_f@sassy"
number13 = -1472832709
dataCollection2[number13] = "move_f@scared"
number13 = -1990894342
dataCollection2[number13] = "move_f@sexy@a"
number13 = -1818270454
dataCollection2[number13] = "move_m@shadyped@a"
number13 = -510722362
dataCollection2[number13] = "move_characters@jimmy@slow@"
number13 = -409852351
dataCollection2[number13] = "move_m@swagger"
number13 = 1802187645
dataCollection2[number13] = "move_m@tough_guy@"
number13 = -1568317798
dataCollection2[number13] = "move_f@tough_guy@"
number13 = -500831769
dataCollection2[number13] = "move_m@tool_belt@a"
number13 = -976584416
dataCollection2[number13] = "move_f@tool_belt@a"
number13 = 1844458253
dataCollection2[number13] = "clipset@move@trash_fast_turn"
number13 = -435990891
dataCollection2[number13] = "missfbi4prepp1_garbageman"
number13 = -895219889
dataCollection2[number13] = "move_p_m_two"
number13 = 1258529727
dataCollection2[number13] = "move_m@bag"
number13 = -650503762
dataCollection2[number13] = "move_m@injured"
number13 = -1104677118
dataCollection2[number13] = "move_injured_generic"
number13 = -2129845123
dataCollection2[number13] = "MOVE_M@BAIL_BOND_NOT_TAZERED"
number13 = -70818445
dataCollection2[number13] = "MOVE_M@BAIL_BOND_TAZERED"
number13 = -618380859
dataCollection2[number13] = "MOVE_P_M_ONE_BRIEFCASE"
number13 = 666904976
dataCollection2[number13] = "move_ped_mop"
number13 = -1312865774
dataCollection2[number13] = "move_m@femme@"
number13 = 735579764
dataCollection2[number13] = "move_f@gangster@ng"
number13 = -1168427927
dataCollection2[number13] = "move_characters@orleans@core@"
number13 = -1164222247
dataCollection2[number13] = "move_m@coward"
number13 = 279703740
dataCollection2[number13] = "move_characters@dave_n"
number13 = 1539166312
dataCollection2[number13] = "move_characters@jimmy"
number13 = 1899314058
dataCollection2[number13] = "move_characters@patricia"
number13 = 1583990743
dataCollection2[number13] = "move_characters@ron"
number13 = 1528838481
dataCollection2[number13] = "move_m@swagger@b"
number13 = 148072839
dataCollection2[number13] = "move_m@leaf_blower"
number13 = -2018280977
dataCollection2[number13] = "move_m@flee@c"
number13 = -1960115337
text2 = "move_characters@amanda@bag"
dataCollection2[number13] = text2
number13 = 1701187980
text2 = "move_f@film_reel"
dataCollection2[number13] = text2
number13 = -1163090857
text2 = "move_f@flee@generic"
dataCollection2[number13] = text2
number13 = 922192683
text2 = "move_f@handbag"
dataCollection2[number13] = text2
number13 = -905417764
text2 = "move_m@flee@generic"
dataCollection2[number13] = text2
number13 = -871949441
text2 = "move_m@shocked@a"
dataCollection2[number13] = text2
number13 = 1728327052
text2 = "move_characters@floyd"
dataCollection2[number13] = text2
number13 = 756811395
text2 = "move_f@hurry@b"
dataCollection2[number13] = text2
number13 = -975292135
text2 = "move_characters@lamar"
dataCollection2[number13] = text2
number13 = 70692426
text2 = "move_characters@tracey"
dataCollection2[number13] = text2
number13 = -582520880
text2 = "move_m@brave@a"
dataCollection2[number13] = text2
number13 = -388968941
text2 = "move_m@gangster@var_a"
dataCollection2[number13] = text2
number13 = -1874148793
text2 = "move_f@stripper@a"
dataCollection2[number13] = text2
number13 = -2076638015
text2 = "move_m@gangster@var_b"
dataCollection2[number13] = text2
number13 = -1366140557
text2 = "move_m@gangster@var_c"
dataCollection2[number13] = text2
number13 = -535479176
text2 = "move_m@gangster@var_d"
dataCollection2[number13] = text2
number13 = 2038230857
text2 = "move_m@gangster@var_g"
dataCollection2[number13] = text2
number13 = 1664205491
text2 = "move_m@gangster@var_h"
dataCollection2[number13] = text2
number13 = 445985183
text2 = "move_m@gangster@var_j"
dataCollection2[number13] = text2
number13 = -288695797
text2 = "move_m@gangster@var_k"
dataCollection2[number13] = text2
number13 = 862223719
text2 = "move_m@clipboard"
dataCollection2[number13] = text2
number13 = -409207550
text2 = "move_cop@action"
dataCollection2[number13] = text2
number13 = 1259887674
text2 = "move_gangster"
dataCollection2[number13] = text2
number13 = -795792088
text2 = "move_casey"
dataCollection2[number13] = text2
number13 = -1938021834
text2 = "move_dreyfuss"
dataCollection2[number13] = text2
number13 = 202679515
text2 = "move_paramedic"
dataCollection2[number13] = text2
number13 = -1345269979
text2 = "move_f@fat@a_no_add"
dataCollection2[number13] = text2
number13 = -1267550608
text2 = "move_f@depressed@c"
dataCollection2[number13] = text2
number13 = 1720274816
text2 = "anim@move_f@grooving@slow@"
dataCollection2[number13] = text2
number13 = 148615797
text2 = "anim@move_m@grooving@slow@"
dataCollection2[number13] = text2
number13 = 422291091
text2 = "AMBIENT_WALK_VARIATION_F_ARROGANT_A"
dataCollection2[number13] = text2
number13 = 1510605100
text2 = "AMBIENT_WALK_VARIATION_M_SAD_B"
dataCollection2[number13] = text2
number13 = -746382641
text2 = "AMBIENT_WALK_VARIATION_M_BUSINESS_B"
dataCollection2[number13] = text2
number13 = 1799136145
text2 = "AMBIENT_WALK_VARIATION_M_SAD_A"
dataCollection2[number13] = text2
number13 = 11564329
text2 = "AMBIENT_WALK_VARIATION_M_BUSINESS_C"
dataCollection2[number13] = text2
number13 = 471477248
text2 = "AMBIENT_WALK_VARIATION_M_BUSINESS_A"
dataCollection2[number13] = text2
number13 = -1749517176
text2 = "AMBIENT_WALK_VARIATION_M_SAD_C"
dataCollection2[number13] = text2
number13 = -1561136569
text2 = "AMBIENT_WALK_VARIATION_F_SAD_A"
dataCollection2[number13] = text2
number13 = 381019249
text2 = "HUSKY@MOVE"
dataCollection2[number13] = text2
number13 = -289665739
text2 = "RETRIEVER@MOVE"
dataCollection2[number13] = text2

-- === HELPER FUNCTION (decompiler name: number13; parameters: localValue1) ===
function number13(localValue1)
  local localValue2, localValue3
  localValue2 = GetPedMovementClipset
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue2]
  if localValue3 then
    localValue3 = dataCollection2
    localValue3 = localValue3[localValue2]
    return localValue3
  else
    localValue3 = nil
    return localValue3
  end
end
text2 = false
stateFlag10 = false
stateFlag12 = false
stateFlag13 = false
text4 = "onfront"
number16 = 0
workingValue19 = nil
number = 0

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = IsPedOnFoot
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = IsPedJumping
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = IsPedFalling
      localValue4 = localValue1
      localValue3 = localValue3(localValue4)
      if not localValue3 then
        localValue3 = IsPedInjured
        localValue4 = localValue1
        localValue3 = localValue3(localValue4)
        if not localValue3 then
          localValue3 = IsPedInMeleeCombat
          localValue4 = localValue1
          localValue3 = localValue3(localValue4)
          if not localValue3 then
            localValue3 = IsPedRagdoll
            localValue4 = localValue1
            localValue3 = localValue3(localValue4)
            if not localValue3 then
              localValue3 = IsPedCuffed
              localValue4 = localValue1
              localValue3 = localValue3(localValue4)
              if not localValue3 then
                goto continueAtStep38
              end
            end
          end
        end
      end
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep38::
  localValue3 = CMG
  localValue3 = localValue3.getTunableValue
  localValue4 = "crouch_enabled"
  localValue3 = localValue3(localValue4)
  if not localValue3 and localValue2 then
    localValue3 = CMG
    localValue3 = localValue3.getCurrentWagerFlag
    localValue4 = "allowCrouchShoot"
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = IsPlayerFreeAiming
      localValue4 = PlayerId
      localValue4, localValue5, localValue6 = localValue4()
      localValue3 = localValue3(localValue4, localValue5, localValue6)
      if not localValue3 then
        localValue3 = GetPedConfigFlag
        localValue4 = localValue1
        localValue5 = 78
        localValue6 = false
        localValue3 = localValue3(localValue4, localValue5, localValue6)
        if not localValue3 then
          goto continueAtStep67
        end
      end
      localValue3 = false
      return localValue3
    end
  end
  ::continueAtStep67::
  localValue3 = true
  return localValue3
end
workingValue4 = _ENV
text = "SetPlayerClipset"

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = CMG
  localValue2 = localValue2.loadClipSet
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = SetPedMovementClipset
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = localValue1
  localValue5 = 0.5
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = RemoveClipSet
  localValue3 = localValue1
  localValue2(localValue3)
end
workingValue4[text] = workingValue5

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function workingValue4(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local cmgOperation, workingValue18, number17, waitCall, number2, heading, number4, number6, number7, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.loadAnimDict
  workingValue18 = localValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation(workingValue18)
  cmgOperation = TaskPlayAnim
  workingValue18 = localValue1
  number17 = localValue2
  waitCall = localValue3
  number2 = localValue4 or number2
  if not localValue4 then
    number2 = 2.0
  end
  heading = localValue5 or heading
  if not localValue5 then
    heading = 2.0
  end
  number4 = localValue6 or number4
  if not localValue6 then
    number4 = -1
  end
  number6 = 0
  number7 = localValue7 or number7
  if not localValue7 then
    number7 = 0.0
  end
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation(workingValue18, number17, waitCall, number2, heading, number4, number6, number7, stateFlag, stateFlag2, stateFlag3)
  cmgOperation = RemoveAnimDict
  workingValue18 = localValue2
  cmgOperation(workingValue18)
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2, localValue3) ===
function text(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18, number17, waitCall, number2, heading, number4
  localValue4 = math
  localValue4 = localValue4.abs
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue5 = localValue2 / localValue4
  localValue6 = localValue3 / localValue4
  localValue7 = 1
  cmgOperation = localValue4
  workingValue18 = 1
  for number17 = localValue7, cmgOperation, workingValue18 do
    waitCall = Wait
    number2 = localValue6
    waitCall(number2)
    waitCall = SetEntityHeading
    number2 = localValue1
    heading = GetEntityHeading
    number4 = localValue1
    -- Beginner: result below is heading.
    heading = heading(number4)
    heading = heading + localValue5
    -- Beginner: Change the direction an entity is facing.
    waitCall(number2, heading)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = ResetPedStrafeClipset
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = ResetPedWeaponMovementClipset
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = SetPedMaxMoveBlendRatio
  localValue3 = localValue1
  localValue4 = 1.0
  localValue2(localValue3, localValue4)
  localValue2 = SetPedCanPlayAmbientAnims
  localValue3 = localValue1
  localValue4 = true
  localValue2(localValue3, localValue4)
  localValue2 = workingValue19
  if nil ~= localValue2 then
    localValue2 = SetPlayerClipset
    localValue3 = workingValue19
    localValue2(localValue3)
  else
    localValue2 = ResetPedMovementClipset
    localValue3 = localValue1
    localValue4 = 0.5
    localValue2(localValue3, localValue4)
  end
  localValue2 = RemoveAnimSet
  localValue3 = "move_ped_crouched"
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local playerPed, stateFlag5, number14, stateFlag9, stateFlag11, text3
    while true do
      playerPed = stateFlag10
      if not playerPed then
        break
      end
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      stateFlag5 = workingValue2
      number14 = playerPed
      stateFlag9 = true
      stateFlag5 = stateFlag5(number14, stateFlag9)
      if not stateFlag5 then
        stateFlag5 = false
        stateFlag10 = stateFlag5
        break
      end
      stateFlag5 = SetPedCanPlayAmbientAnims
      number14 = playerPed
      stateFlag9 = false
      stateFlag5(number14, stateFlag9)
      stateFlag5 = DisableControlAction
      number14 = 0
      stateFlag9 = 36
      stateFlag11 = true
      stateFlag5(number14, stateFlag9, stateFlag11)
      stateFlag5 = IsPedUsingActionMode
      number14 = playerPed
      stateFlag5 = stateFlag5(number14)
      if 1 == stateFlag5 then
        stateFlag5 = SetPedUsingActionMode
        number14 = playerPed
        stateFlag9 = false
        stateFlag11 = -1
        text3 = "DEFAULT_ACTION"
        stateFlag5(number14, stateFlag9, stateFlag11, text3)
      end
      stateFlag5 = Wait
      number14 = 0
      stateFlag5(number14)
    end
    playerPed = workingValue5
    playerPed()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = true
  stateFlag10 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.loadClipSet
  localValue2 = "move_ped_crouched"
  localValue1(localValue2)
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetPedStealthMovement
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if 1 == localValue2 then
    localValue2 = SetPedStealthMovement
    localValue3 = localValue1
    localValue4 = false
    localValue5 = "DEFAULT_ACTION"
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = Wait
    localValue3 = 100
    localValue2(localValue3)
  end
  localValue2 = GetFollowPedCamViewMode
  localValue2 = localValue2()
  if 4 == localValue2 then
    localValue2 = SetFollowPedCamViewMode
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = number13
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = workingValue19
  end
  workingValue19 = localValue2
  localValue2 = SetPedMovementClipset
  localValue3 = localValue1
  localValue4 = "move_ped_crouched"
  localValue5 = 0.6
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = SetPedStrafeClipset
  localValue3 = localValue1
  localValue4 = "move_ped_crouched_strafing"
  localValue2(localValue3, localValue4)
  localValue2 = workingValue6
  localValue2()
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue2
  localValue3 = localValue1
  localValue4 = true
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = workingValue7
    localValue2()
    localValue2 = true
    return localValue2
  else
    localValue2 = false
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, cmgOperation
  localValue1 = CMG
  localValue1 = localValue1.isNoClipActive
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getClientEventData
  localValue2 = "SpellingBeeClientData"
  localValue1 = localValue1(localValue2)
  localValue1 = localValue1.minigameName
  if "Spelling Bee" == localValue1 then
    return
  end
  localValue1 = GetFrameCount
  localValue1 = localValue1()
  localValue2 = number
  if localValue1 == localValue2 then
    return
  end
  localValue1 = GetFrameCount
  localValue1 = localValue1()
  number = localValue1
  localValue1 = stateFlag13
  if localValue1 then
    return
  end
  localValue1 = stateFlag10
  if localValue1 then
    localValue1 = false
    stateFlag10 = localValue1
    return
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = dataCollection.crouchOverride
  if localValue2 then
    localValue2 = DisableControlAction
    localValue3 = 0
    localValue4 = 36
    localValue5 = true
    localValue2(localValue3, localValue4, localValue5)
  else
    localValue2 = GetControlInstructionalButton
    localValue3 = 0
    localValue4 = 3536895674
    localValue5 = false
    localValue2 = localValue2(localValue3, localValue4, localValue5)
    localValue3 = GetControlInstructionalButton
    localValue4 = 0
    localValue5 = 36
    localValue6 = false
    localValue3 = localValue3(localValue4, localValue5, localValue6)
    if localValue2 == localValue3 then
      localValue4 = text2
      if not localValue4 then
        localValue4 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue4 = localValue4()
        localValue5 = GetPedStealthMovement
        localValue6 = localValue1
        localValue5 = localValue5(localValue6)
        if 1 == localValue5 then
          localValue5 = number16
          localValue5 = localValue4 - localValue5
          localValue6 = 1000
          if localValue5 < localValue6 then
            localValue5 = DisableControlAction
            localValue6 = 0
            localValue7 = 36
            cmgOperation = true
            localValue5(localValue6, localValue7, cmgOperation)
            localValue5 = 0
            number16 = localValue5
            localValue5 = workingValue8
            localValue6 = localValue1
            localValue5(localValue6)
            return
          end
        end
        number16 = localValue4
        return
      end
    end
  end
  localValue2 = workingValue8
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = text2
    if localValue2 then
      localValue2 = true
      stateFlag13 = localValue2
      localValue2 = tCMG
      localValue2 = localValue2.setCanAnim
      localValue3 = true
      localValue2(localValue3)
      localValue2 = false
      text2 = localValue2
      localValue2 = workingValue4
      localValue3 = localValue1
      localValue4 = "get_up@directional@transition@prone_to_knees@crawl"
      localValue5 = "front"
      localValue6 = nil
      localValue7 = nil
      cmgOperation = 780
      localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, cmgOperation)
      localValue2 = Wait
      localValue3 = 780
      localValue2(localValue3)
      localValue2 = false
      stateFlag13 = localValue2
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2, localValue3
  localValue2 = IsPedRunning
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = IsPedSprinting
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      goto continueAtStep13
    end
  end
  localValue2 = true
  return localValue2
  ::continueAtStep13::
  localValue2 = false
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1, localValue2, localValue3) ===
function workingValue11(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18, number17, waitCall, number2, heading, number4, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag6
  localValue4 = GetEntityCoords
  localValue5 = localValue1
  -- Beginner: result below is entityCoords.
  localValue4 = localValue4(localValue5)
  localValue5 = TaskPlayAnimAdvanced
  localValue6 = localValue1
  localValue7 = "move_crawl"
  cmgOperation = text4
  workingValue18 = "_fwd"
  cmgOperation = cmgOperation .. workingValue18
  workingValue18 = localValue4.x
  number17 = localValue4.y
  waitCall = localValue4.z
  number2 = 0.0
  heading = 0.0
  number4 = localValue2 or number4
  if not localValue2 then
    number4 = GetEntityHeading
    number6 = localValue1
    -- Beginner: result below is heading.
    number4 = number4(number6)
  end
  number6 = localValue3 or number6
  if not localValue3 then
    number6 = 2.0
  end
  number7 = 2.0
  stateFlag = -1
  stateFlag2 = 2
  stateFlag3 = 1.0
  stateFlag4 = false
  stateFlag6 = false
  localValue5(localValue6, localValue7, cmgOperation, workingValue18, number17, waitCall, number2, heading, number4, number6, number7, stateFlag, stateFlag2, stateFlag3, stateFlag4, stateFlag6)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18
  if not localValue1 then
    localValue2 = true
    stateFlag13 = localValue2
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = text4
    if "onfront" == localValue3 then
      localValue3 = workingValue4
      localValue4 = localValue2
      localValue5 = "get_up@directional@transition@prone_to_knees@crawl"
      localValue6 = "front"
      localValue7 = nil
      cmgOperation = nil
      workingValue18 = 780
      localValue3(localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18)
      localValue3 = stateFlag10
      if not localValue3 then
        localValue3 = Wait
        localValue4 = 780
        localValue3(localValue4)
        localValue3 = workingValue4
        localValue4 = localValue2
        localValue5 = "get_up@directional@movement@from_knees@standard"
        localValue6 = "getup_l_0"
        localValue7 = nil
        cmgOperation = nil
        workingValue18 = 1300
        localValue3(localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18)
      end
    else
      localValue3 = workingValue4
      localValue4 = localValue2
      localValue5 = "get_up@directional@transition@prone_to_seated@crawl"
      localValue6 = "back"
      localValue7 = 16.0
      cmgOperation = nil
      workingValue18 = 950
      localValue3(localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18)
      localValue3 = stateFlag10
      if not localValue3 then
        localValue3 = Wait
        localValue4 = 950
        localValue3(localValue4)
        localValue3 = workingValue4
        localValue4 = localValue2
        localValue5 = "get_up@directional@movement@from_seated@standard"
        localValue6 = "get_up_l_0"
        localValue7 = nil
        cmgOperation = nil
        workingValue18 = 1300
        localValue3(localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1, localValue2, localValue3) ===
function workingValue13(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18, number17, waitCall, number2, heading, number4, number6
  localValue4 = true
  stateFlag12 = localValue4
  localValue4 = TaskPlayAnim
  localValue5 = localValue1
  localValue6 = "move_crawl"
  localValue7 = localValue2
  cmgOperation = "_"
  workingValue18 = localValue3
  localValue7 = localValue7 .. cmgOperation .. workingValue18
  cmgOperation = 8.0
  workingValue18 = -8.0
  number17 = -1
  waitCall = 2
  number2 = 0.0
  heading = false
  number4 = false
  number6 = false
  -- Beginner: Play an animation on a ped.
  localValue4(localValue5, localValue6, localValue7, cmgOperation, workingValue18, number17, waitCall, number2, heading, number4, number6)
  localValue4 = {}
  localValue5 = {}
  localValue5.fwd = 820
  localValue5.bwd = 990
  localValue4.onfront = localValue5
  localValue5 = {}
  localValue5.fwd = 1200
  localValue5.bwd = 1200
  localValue4.onback = localValue5
  localValue5 = SetTimeout
  localValue6 = localValue4[localValue2]
  localValue6 = localValue6[localValue3]

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local playerPed, stateFlag5
    playerPed = false
    stateFlag12 = playerPed
  end
  localValue5(localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18
  localValue2 = true
  stateFlag13 = localValue2
  localValue2 = GetEntityHeading
  localValue3 = localValue1
  -- Beginner: result below is heading.
  localValue2 = localValue2(localValue3)
  localValue3 = text4
  if "onfront" == localValue3 then
    localValue3 = "onback"
    text4 = localValue3
    localValue3 = workingValue4
    localValue4 = localValue1
    localValue5 = "get_up@directional_sweep@combat@pistol@front"
    localValue6 = "front_to_prone"
    localValue7 = 2.0
    localValue3(localValue4, localValue5, localValue6, localValue7)
    localValue3 = text
    localValue4 = localValue1
    localValue5 = -18.0
    localValue6 = 3600
    localValue3(localValue4, localValue5, localValue6)
  else
    localValue3 = "onfront"
    text4 = localValue3
    localValue3 = workingValue4
    localValue4 = localValue1
    localValue5 = "move_crawlprone2crawlfront"
    localValue6 = "back"
    localValue7 = 2.0
    cmgOperation = nil
    workingValue18 = -1
    localValue3(localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18)
    localValue3 = text
    localValue4 = localValue1
    localValue5 = 12.0
    localValue6 = 1700
    localValue3(localValue4, localValue5, localValue6)
  end
  localValue3 = workingValue11
  localValue4 = localValue1
  localValue5 = localValue2 + 180.0
  localValue3(localValue4, localValue5)
  localValue3 = Wait
  localValue4 = 400
  localValue3(localValue4)
  localValue3 = false
  stateFlag13 = localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2
  localValue1 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local playerPed, stateFlag5, number14, stateFlag9, stateFlag11, text3, number15, heading3, text5, workingValue20, workingValue, workingValue3, number3, number5, heading2, number8, number9, number10, number11, number12, stateFlag7, stateFlag8
    playerPed = Wait
    stateFlag5 = 400
    playerPed(stateFlag5)
    playerPed = false
    while true do
      stateFlag5 = text2
      if not stateFlag5 then
        break
      end
      stateFlag5 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      stateFlag5 = stateFlag5()
      number14 = workingValue2
      stateFlag9 = stateFlag5
      stateFlag11 = false
      number14 = number14(stateFlag9, stateFlag11)
      if number14 then
        number14 = IsEntityInWater
        stateFlag9 = stateFlag5
        number14 = number14(stateFlag9)
        if not number14 then
          goto continueAtStep35
        end
      end
      number14 = ClearPedTasks
      stateFlag9 = stateFlag5
      number14(stateFlag9)
      number14 = text2
      if number14 then
        number14 = tCMG
        number14 = number14.setCanAnim
        stateFlag9 = true
        number14(stateFlag9)
        number14 = false
        text2 = number14
      end
      playerPed = true
      do break end
      ::continueAtStep35::
      number14 = IsControlPressed
      stateFlag9 = 0
      stateFlag11 = 32
      number14 = number14(stateFlag9, stateFlag11)
      stateFlag9 = IsControlPressed
      stateFlag11 = 0
      text3 = 33
      stateFlag9 = stateFlag9(stateFlag11, text3)
      stateFlag11 = stateFlag12
      if not stateFlag11 then
        if number14 then
          stateFlag11 = workingValue13
          text3 = stateFlag5
          number15 = text4
          heading3 = "fwd"
          stateFlag11(text3, number15, heading3)
        elseif stateFlag9 then
          stateFlag11 = workingValue13
          text3 = stateFlag5
          number15 = text4
          heading3 = "bwd"
          stateFlag11(text3, number15, heading3)
        end
      end
      stateFlag11 = IsControlPressed
      text3 = 0
      number15 = 34
      stateFlag11 = stateFlag11(text3, number15)
      if stateFlag11 then
        stateFlag11 = stateFlag12
        if stateFlag11 then
          if number14 then
            stateFlag11 = 1.0
            if stateFlag11 then
              goto continueAtStep76
            end
          end
          stateFlag11 = -1.0
          ::continueAtStep76::
          text3 = SetEntityHeading
          number15 = stateFlag5
          heading3 = GetEntityHeading
          text5 = stateFlag5
          -- Beginner: result below is heading.
          heading3 = heading3(text5)
          heading3 = heading3 + stateFlag11
          -- Beginner: Change the direction an entity is facing.
          text3(number15, heading3)
        else
          stateFlag11 = true
          stateFlag13 = stateFlag11
          stateFlag11 = text4
          if "onfront" == stateFlag11 then
            stateFlag11 = GetEntityCoords
            text3 = stateFlag5
            -- Beginner: result below is entityCoords.
            stateFlag11 = stateFlag11(text3)
            text3 = TaskPlayAnimAdvanced
            number15 = stateFlag5
            heading3 = "move_crawlprone2crawlfront"
            text5 = "left"
            workingValue20 = stateFlag11.x
            workingValue = stateFlag11.y
            workingValue3 = stateFlag11.z
            number3 = 0.0
            number5 = 0.0
            heading2 = GetEntityHeading
            number8 = stateFlag5
            -- Beginner: result below is heading.
            heading2 = heading2(number8)
            number8 = 2.0
            number9 = 2.0
            number10 = -1
            number11 = 2
            number12 = 0.1
            stateFlag7 = false
            stateFlag8 = false
            text3(number15, heading3, text5, workingValue20, workingValue, workingValue3, number3, number5, heading2, number8, number9, number10, number11, number12, stateFlag7, stateFlag8)
            text3 = text
            number15 = stateFlag5
            heading3 = -10.0
            text5 = 300
            text3(number15, heading3, text5)
            text3 = Wait
            number15 = 700
            text3(number15)
          else
            stateFlag11 = workingValue4
            text3 = stateFlag5
            number15 = "get_up@directional_sweep@combat@pistol@left"
            heading3 = "left_to_prone"
            stateFlag11(text3, number15, heading3)
            stateFlag11 = text
            text3 = stateFlag5
            number15 = 25.0
            heading3 = 400
            stateFlag11(text3, number15, heading3)
            stateFlag11 = workingValue11
            text3 = stateFlag5
            stateFlag11(text3)
            stateFlag11 = Wait
            text3 = 600
            stateFlag11(text3)
          end
          stateFlag11 = false
          stateFlag13 = stateFlag11
        end
      else
        stateFlag11 = IsControlPressed
        text3 = 0
        number15 = 35
        stateFlag11 = stateFlag11(text3, number15)
        if stateFlag11 then
          stateFlag11 = stateFlag12
          if stateFlag11 then
            if stateFlag9 then
              stateFlag11 = 1.0
              if stateFlag11 then
                goto continueAtStep156
              end
            end
            stateFlag11 = -1.0
            ::continueAtStep156::
            text3 = SetEntityHeading
            number15 = stateFlag5
            heading3 = GetEntityHeading
            text5 = stateFlag5
            -- Beginner: result below is heading.
            heading3 = heading3(text5)
            heading3 = heading3 + stateFlag11
            -- Beginner: Change the direction an entity is facing.
            text3(number15, heading3)
          else
            stateFlag11 = true
            stateFlag13 = stateFlag11
            stateFlag11 = text4
            if "onfront" == stateFlag11 then
              stateFlag11 = GetEntityCoords
              text3 = stateFlag5
              -- Beginner: result below is entityCoords.
              stateFlag11 = stateFlag11(text3)
              text3 = TaskPlayAnimAdvanced
              number15 = stateFlag5
              heading3 = "move_crawlprone2crawlfront"
              text5 = "right"
              workingValue20 = stateFlag11.x
              workingValue = stateFlag11.y
              workingValue3 = stateFlag11.z
              number3 = 0.0
              number5 = 0.0
              heading2 = GetEntityHeading
              number8 = stateFlag5
              -- Beginner: result below is heading.
              heading2 = heading2(number8)
              number8 = 2.0
              number9 = 2.0
              number10 = -1
              number11 = 2
              number12 = 0.1
              stateFlag7 = false
              stateFlag8 = false
              text3(number15, heading3, text5, workingValue20, workingValue, workingValue3, number3, number5, heading2, number8, number9, number10, number11, number12, stateFlag7, stateFlag8)
              text3 = text
              number15 = stateFlag5
              heading3 = 10.0
              text5 = 300
              text3(number15, heading3, text5)
              text3 = Wait
              number15 = 700
              text3(number15)
            else
              stateFlag11 = workingValue4
              text3 = stateFlag5
              number15 = "get_up@directional_sweep@combat@pistol@right"
              heading3 = "right_to_prone"
              stateFlag11(text3, number15, heading3)
              stateFlag11 = text
              text3 = stateFlag5
              number15 = -25.0
              heading3 = 400
              stateFlag11(text3, number15, heading3)
              stateFlag11 = workingValue11
              text3 = stateFlag5
              stateFlag11(text3)
              stateFlag11 = Wait
              text3 = 600
              stateFlag11(text3)
            end
            stateFlag11 = false
            stateFlag13 = stateFlag11
          end
        end
      end
      stateFlag11 = stateFlag12
      if not stateFlag11 then
        stateFlag11 = IsControlPressed
        text3 = 0
        number15 = 22
        stateFlag11 = stateFlag11(text3, number15)
        if stateFlag11 then
          stateFlag11 = workingValue14
          text3 = stateFlag5
          stateFlag11(text3)
        end
      end
      stateFlag11 = Wait
      text3 = 0
      stateFlag11(text3)
    end
    stateFlag5 = workingValue12
    number14 = playerPed
    stateFlag5(number14)
    stateFlag5 = false
    stateFlag12 = stateFlag5
    stateFlag5 = false
    stateFlag13 = stateFlag5
    stateFlag5 = "onfront"
    text4 = stateFlag5
    stateFlag5 = SetPedConfigFlag
    number14 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    number14 = number14()
    stateFlag9 = 48
    stateFlag11 = false
    stateFlag5(number14, stateFlag9, stateFlag11)
    stateFlag5 = RemoveAnimDict
    number14 = "move_crawl"
    stateFlag5(number14)
    stateFlag5 = RemoveAnimDict
    number14 = "move_crawlprone2crawlfront"
    stateFlag5(number14)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
function workingValue16()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18, number17
  localValue1 = stateFlag13
  if localValue1 then
    return
  end
  localValue1 = IsPauseMenuActive
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = text2
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.setCanAnim
    localValue2 = true
    localValue1(localValue2)
    localValue1 = false
    text2 = localValue1
    return
  end
  localValue1 = false
  localValue2 = stateFlag10
  if localValue2 then
    localValue2 = false
    stateFlag10 = localValue2
    localValue1 = true
  end
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = workingValue2
  localValue4 = localValue2
  localValue5 = false
  localValue3 = localValue3(localValue4, localValue5)
  if localValue3 then
    localValue3 = IsEntityInWater
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = tCMG
      localValue3 = localValue3.canAnim
      localValue3 = localValue3()
      if localValue3 then
        goto continueAtStep46
      end
    end
  end
  return
  ::continueAtStep46::
  localValue3 = true
  stateFlag13 = localValue3
  localValue3 = Pointing
  if localValue3 then
    Pointing = false
  end
  localValue3 = tCMG
  localValue3 = localValue3.setCanAnim
  localValue4 = false
  localValue3(localValue4)
  localValue3 = true
  text2 = localValue3
  localValue3 = SetPedConfigFlag
  localValue4 = localValue2
  localValue5 = 48
  localValue6 = true
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = GetPedStealthMovement
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if 1 == localValue3 then
    localValue3 = SetPedStealthMovement
    localValue4 = localValue2
    localValue5 = false
    localValue6 = "DEFAULT_ACTION"
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = Wait
    localValue4 = 100
    localValue3(localValue4)
  end
  localValue3 = CMG
  localValue3 = localValue3.loadAnimDict
  localValue4 = "move_crawl"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue3(localValue4)
  localValue3 = CMG
  localValue3 = localValue3.loadAnimDict
  localValue4 = "move_crawlprone2crawlfront"
  localValue3(localValue4)
  localValue3 = workingValue10
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = false
    if localValue3 then
      localValue3 = workingValue4
      localValue4 = localValue2
      localValue5 = "explosions"
      localValue6 = "react_blown_forwards"
      localValue7 = nil
      cmgOperation = 3.0
      localValue3(localValue4, localValue5, localValue6, localValue7, cmgOperation)
      localValue3 = Wait
      localValue4 = 1100
      localValue3(localValue4)
  end
  elseif localValue1 then
    localValue3 = workingValue4
    localValue4 = localValue2
    localValue5 = "amb@world_human_sunbathe@male@front@enter"
    localValue6 = "enter"
    localValue7 = nil
    cmgOperation = nil
    workingValue18 = -1
    number17 = 0.3
    localValue3(localValue4, localValue5, localValue6, localValue7, cmgOperation, workingValue18, number17)
    localValue3 = Wait
    localValue4 = 1500
    localValue3(localValue4)
  else
    localValue3 = workingValue4
    localValue4 = localValue2
    localValue5 = "amb@world_human_sunbathe@male@front@enter"
    localValue6 = "enter"
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = Wait
    localValue4 = 3000
    localValue3(localValue4)
  end
  localValue3 = workingValue2
  localValue4 = localValue2
  localValue5 = false
  localValue3 = localValue3(localValue4, localValue5)
  if localValue3 then
    localValue3 = IsEntityInWater
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = workingValue11
      localValue4 = localValue2
      localValue5 = nil
      localValue6 = 3.0
      localValue3(localValue4, localValue5, localValue6)
    end
  end
  localValue3 = false
  stateFlag13 = localValue3
  localValue3 = workingValue15
  localValue3()
end
workingValue17 = _ENV
backgroundThread = "CreateThread"
workingValue17 = workingValue17[backgroundThread]

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = dataCollection.crouchKeybindEnabled
  if localValue1 then
    localValue1 = RegisterKeyMapping
    localValue2 = "+crouch"
    localValue3 = dataCollection.localization
    localValue3 = localValue3.crouch_keymapping
    localValue4 = "keyboard"
    localValue5 = dataCollection.crouchKeybind
    -- Beginner: Bind a command to a keyboard/controller key.
    localValue1(localValue2, localValue3, localValue4, localValue5)
    localValue1 = CMG
    localValue1 = localValue1.registerCommand
    localValue2 = "+crouch"

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local playerPed, stateFlag5
      playerPed = workingValue9
      playerPed()
    end
    localValue4 = false
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = CMG
    localValue1 = localValue1.registerCommand
    localValue2 = "-crouch"

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local playerPed, stateFlag5
    end
    localValue4 = false
    localValue1(localValue2, localValue3, localValue4)
  end
  localValue1 = RegisterCommand
  localValue2 = "crouch"
  -- Beginner: this function is the command handler for "crouch".

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local playerPed, stateFlag5
    playerPed = GetFrameCount
    playerPed = playerPed()
    stateFlag5 = number
    if playerPed == stateFlag5 then
      return
    end
    playerPed = GetFrameCount
    playerPed = playerPed()
    number = playerPed
    playerPed = stateFlag10
    if playerPed then
      playerPed = false
      stateFlag10 = playerPed
      return
    end
    playerPed = workingValue8
    stateFlag5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    stateFlag5 = stateFlag5()
    playerPed(stateFlag5)
  end
  localValue4 = false
  -- Beginner: Register a chat/console command. Event/command: "crouch".
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = TriggerEvent
  localValue2 = "chat:addSuggestion"
  localValue3 = "/crouch"
  localValue4 = dataCollection.localization
  localValue4 = localValue4.crouch_chat_suggestion
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = dataCollection.crawlKeybindEnabled
  if localValue1 then
    localValue1 = RegisterKeyMapping
    localValue2 = "+crawl"
    localValue3 = dataCollection.localization
    localValue3 = localValue3.crawl_keymapping
    localValue4 = "keyboard"
    localValue5 = dataCollection.crawlKeybind
    -- Beginner: Bind a command to a keyboard/controller key.
    localValue1(localValue2, localValue3, localValue4, localValue5)
    localValue1 = CMG
    localValue1 = localValue1.registerCommand
    localValue2 = "+crawl"

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local playerPed, stateFlag5
      playerPed = workingValue16
      playerPed()
    end
    localValue4 = false
    localValue1(localValue2, localValue3, localValue4)
    localValue1 = CMG
    localValue1 = localValue1.registerCommand
    localValue2 = "-crawl"

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local playerPed, stateFlag5
    end
    localValue4 = false
    localValue1(localValue2, localValue3, localValue4)
  end
  localValue1 = RegisterCommand
  localValue2 = "crawl"
  -- Beginner: this function is the command handler for "crawl".

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local playerPed, stateFlag5
    playerPed = workingValue16
    playerPed()
  end
  localValue4 = false
  -- Beginner: Register a chat/console command. Event/command: "crawl".
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = TriggerEvent
  localValue2 = "chat:addSuggestion"
  localValue3 = "/crouch"
  localValue4 = dataCollection.localization
  localValue4 = localValue4.crawl_chat_suggestion
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  localValue1(localValue2, localValue3, localValue4)
end
workingValue17(backgroundThread)
