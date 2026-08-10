--[[
    Beginner Guide: cl_crouch.lua
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
    BEGINNER GUIDE — Crouch
    =======================

    File: cmg/prod/client/misc/cl_crouch.lua
    Purpose: This file contains general gameplay utility.

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
      * /crouch
      * crouch
      * crawl

    Named framework/network events found:
      * chat:addSuggestion

    Example player-facing text in this file:
      * SetPlayerClipset

]]
local dataTable, dataTable2, numberValue13, textValue2, flag10, flag12, flag13, textValue4, numberValue16, workValue19, numberValue, workValue2, workValue4, textValue, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, threadCall
dataTable = {}
dataTable.crouchKeybindEnabled = true
dataTable.crouchKeybind = "LCONTROL"
dataTable.crouchOverride = true
dataTable.crouchKeypressTimer = 1000
dataTable.crawlKeybindEnabled = true
dataTable.crawlKeybind = "RCONTROL"
dataTable2 = {}
dataTable2.crouch_keymapping = "Crouch"
dataTable2.crouch_chat_suggestion = "Crouch"
dataTable2.crawl_keymapping = "Crawl"
dataTable2.crawl_chat_suggestion = "Crawl"
dataTable.localization = dataTable2
dataTable2 = {}
numberValue13 = -2146642687
dataTable2[numberValue13] = "move_m@alien"
numberValue13 = 1450392727
dataTable2[numberValue13] = "anim_group_move_ballistic"
numberValue13 = 1646588077
dataTable2[numberValue13] = "move_f@arrogant@a"
numberValue13 = -1273245730
dataTable2[numberValue13] = "move_m@hurry_butch@a"
numberValue13 = -1654611352
dataTable2[numberValue13] = "move_m@hurry_butch@b"
numberValue13 = 1135734536
dataTable2[numberValue13] = "move_m@hurry_butch@c"
numberValue13 = -1768281232
dataTable2[numberValue13] = "move_m@brave"
numberValue13 = 1160259160
dataTable2[numberValue13] = "move_m@casual@a"
numberValue13 = 1249489219
dataTable2[numberValue13] = "move_m@casual@b"
numberValue13 = 1022236204
dataTable2[numberValue13] = "move_m@casual@c"
numberValue13 = 1730505370
dataTable2[numberValue13] = "move_m@casual@d"
numberValue13 = 1500565297
dataTable2[numberValue13] = "move_m@casual@e"
numberValue13 = -742407223
dataTable2[numberValue13] = "move_m@casual@f"
numberValue13 = -2125795638
dataTable2[numberValue13] = "move_f@chichi"
numberValue13 = 1130158996
dataTable2[numberValue13] = "move_m@confident"
numberValue13 = 1607161685
dataTable2[numberValue13] = "move_m@business@a"
numberValue13 = 1845818312
dataTable2[numberValue13] = "move_m@business@b"
numberValue13 = -59928421
dataTable2[numberValue13] = "move_m@business@c"
numberValue13 = -2055591238
dataTable2[numberValue13] = "move_chubby"
numberValue13 = -108537538
dataTable2[numberValue13] = "move_f@chubby@a"
numberValue13 = -1401903942
dataTable2[numberValue13] = "move_f@multiplayer"
numberValue13 = 1113513977
dataTable2[numberValue13] = "move_m@multiplayer"
numberValue13 = -1287120285
dataTable2[numberValue13] = "move_m@depressed@a"
numberValue13 = -502630425
dataTable2[numberValue13] = "move_m@depressed@b"
numberValue13 = 685317947
dataTable2[numberValue13] = "move_f@depressed@a"
numberValue13 = -859042698
dataTable2[numberValue13] = "move_m@drunk@a"
numberValue13 = 2037534323
dataTable2[numberValue13] = "move_m@buzzed"
numberValue13 = -1925018459
dataTable2[numberValue13] = "move_m@drunk@moderatedrunk"
numberValue13 = -1201085968
dataTable2[numberValue13] = "move_m@drunk@moderatedrunk_head_up"
numberValue13 = 875753685
dataTable2[numberValue13] = "move_m@drunk@slightlydrunk"
numberValue13 = -297078218
dataTable2[numberValue13] = "move_m@drunk@verydrunk"
numberValue13 = 1524082234
dataTable2[numberValue13] = "move_m@fat@a"
numberValue13 = 522820593
dataTable2[numberValue13] = "move_f@fat@a"
numberValue13 = -1732630094
dataTable2[numberValue13] = "move_m@fat@bulky"
numberValue13 = -669438934
dataTable2[numberValue13] = "move_f@femme@"
numberValue13 = -1857789306
dataTable2[numberValue13] = "move_characters@franklin@fire"
numberValue13 = -433101684
dataTable2[numberValue13] = "move_characters@michael@fire"
numberValue13 = 989819896
dataTable2[numberValue13] = "move_m@fire"
numberValue13 = 2077811903
dataTable2[numberValue13] = "move_f@flee@a"
numberValue13 = 864310395
dataTable2[numberValue13] = "move_f@flee@c"
numberValue13 = -1960902366
dataTable2[numberValue13] = "move_m@flee@a"
numberValue13 = 1287652361
dataTable2[numberValue13] = "move_m@flee@b"
numberValue13 = -796046076
dataTable2[numberValue13] = "move_p_m_one"
numberValue13 = -1810566716
dataTable2[numberValue13] = "move_m@gangster@generic"
numberValue13 = -2114609648
dataTable2[numberValue13] = "move_m@gangster@ng"
numberValue13 = -875359244
dataTable2[numberValue13] = "move_m@gangster@var_e"
numberValue13 = 1203637196
dataTable2[numberValue13] = "move_m@gangster@var_f"
numberValue13 = -1796495834
dataTable2[numberValue13] = "move_m@gangster@var_i"
numberValue13 = 132330440
dataTable2[numberValue13] = "move_m@generic"
numberValue13 = 642383383
dataTable2[numberValue13] = "move_f@generic"
numberValue13 = 696702737
dataTable2[numberValue13] = "anim@move_m@grooving@"
numberValue13 = -705606766
dataTable2[numberValue13] = "anim@move_f@grooving@"
numberValue13 = 1013381506
dataTable2[numberValue13] = "move_m@prison_gaurd"
numberValue13 = 1500055922
dataTable2[numberValue13] = "move_m@prisoner_cuffed"
numberValue13 = 101970339
dataTable2[numberValue13] = "move_f@heels@c"
numberValue13 = -1100881352
dataTable2[numberValue13] = "move_f@heels@d"
numberValue13 = 1712688432
dataTable2[numberValue13] = "move_m@hiking"
numberValue13 = -1806913316
dataTable2[numberValue13] = "move_f@hiking"
numberValue13 = -1261021058
dataTable2[numberValue13] = "move_m@hipster@a"
numberValue13 = -1027640375
dataTable2[numberValue13] = "move_m@hobo@a"
numberValue13 = -725870658
dataTable2[numberValue13] = "move_m@hobo@b"
numberValue13 = -1694147212
dataTable2[numberValue13] = "move_m@hurry@a"
numberValue13 = 1605790647
dataTable2[numberValue13] = "move_f@hurry@a"
numberValue13 = -32565260
dataTable2[numberValue13] = "move_f@injured"
numberValue13 = 868295932
dataTable2[numberValue13] = "move_m@intimidation@1h"
numberValue13 = -749057629
dataTable2[numberValue13] = "move_m@intimidation@cop@unarmed"
numberValue13 = 584873396
dataTable2[numberValue13] = "move_m@intimidation@unarmed"
numberValue13 = 92422612
dataTable2[numberValue13] = "move_p_m_zero_janitor"
numberValue13 = 1864844954
dataTable2[numberValue13] = "move_p_m_zero_slow"
numberValue13 = 1103953188
dataTable2[numberValue13] = "move_m@jog@"
numberValue13 = -708603839
dataTable2[numberValue13] = "move_characters@jimmy@nervous@"
numberValue13 = 1909742916
dataTable2[numberValue13] = "anim_group_move_lemar_alley"
numberValue13 = 1690913150
dataTable2[numberValue13] = "move_heist_lester"
numberValue13 = 549262148
dataTable2[numberValue13] = "move_lester_caneup"
numberValue13 = 186601483
dataTable2[numberValue13] = "move_f@maneater"
numberValue13 = -578327514
dataTable2[numberValue13] = "move_ped_bucket"
numberValue13 = -1269633907
dataTable2[numberValue13] = "move_m@money"
numberValue13 = -207491758
dataTable2[numberValue13] = "move_m@muscle@a"
numberValue13 = -1543095923
dataTable2[numberValue13] = "move_m@posh@"
numberValue13 = -1868494245
dataTable2[numberValue13] = "move_f@posh@"
numberValue13 = 1023544707
dataTable2[numberValue13] = "move_m@quick"
numberValue13 = 636261340
dataTable2[numberValue13] = "female_fast_runner"
numberValue13 = -1599479573
dataTable2[numberValue13] = "move_m@sad@a"
numberValue13 = -1847704748
dataTable2[numberValue13] = "move_m@sad@b"
numberValue13 = -2077448207
dataTable2[numberValue13] = "move_m@sad@c"
numberValue13 = -566100771
dataTable2[numberValue13] = "move_f@sad@a"
numberValue13 = -930295437
dataTable2[numberValue13] = "move_f@sad@b"
numberValue13 = 1207987305
dataTable2[numberValue13] = "move_m@sassy"
numberValue13 = 1235276737
dataTable2[numberValue13] = "move_f@sassy"
numberValue13 = -1472832709
dataTable2[numberValue13] = "move_f@scared"
numberValue13 = -1990894342
dataTable2[numberValue13] = "move_f@sexy@a"
numberValue13 = -1818270454
dataTable2[numberValue13] = "move_m@shadyped@a"
numberValue13 = -510722362
dataTable2[numberValue13] = "move_characters@jimmy@slow@"
numberValue13 = -409852351
dataTable2[numberValue13] = "move_m@swagger"
numberValue13 = 1802187645
dataTable2[numberValue13] = "move_m@tough_guy@"
numberValue13 = -1568317798
dataTable2[numberValue13] = "move_f@tough_guy@"
numberValue13 = -500831769
dataTable2[numberValue13] = "move_m@tool_belt@a"
numberValue13 = -976584416
dataTable2[numberValue13] = "move_f@tool_belt@a"
numberValue13 = 1844458253
dataTable2[numberValue13] = "clipset@move@trash_fast_turn"
numberValue13 = -435990891
dataTable2[numberValue13] = "missfbi4prepp1_garbageman"
numberValue13 = -895219889
dataTable2[numberValue13] = "move_p_m_two"
numberValue13 = 1258529727
dataTable2[numberValue13] = "move_m@bag"
numberValue13 = -650503762
dataTable2[numberValue13] = "move_m@injured"
numberValue13 = -1104677118
dataTable2[numberValue13] = "move_injured_generic"
numberValue13 = -2129845123
dataTable2[numberValue13] = "MOVE_M@BAIL_BOND_NOT_TAZERED"
numberValue13 = -70818445
dataTable2[numberValue13] = "MOVE_M@BAIL_BOND_TAZERED"
numberValue13 = -618380859
dataTable2[numberValue13] = "MOVE_P_M_ONE_BRIEFCASE"
numberValue13 = 666904976
dataTable2[numberValue13] = "move_ped_mop"
numberValue13 = -1312865774
dataTable2[numberValue13] = "move_m@femme@"
numberValue13 = 735579764
dataTable2[numberValue13] = "move_f@gangster@ng"
numberValue13 = -1168427927
dataTable2[numberValue13] = "move_characters@orleans@core@"
numberValue13 = -1164222247
dataTable2[numberValue13] = "move_m@coward"
numberValue13 = 279703740
dataTable2[numberValue13] = "move_characters@dave_n"
numberValue13 = 1539166312
dataTable2[numberValue13] = "move_characters@jimmy"
numberValue13 = 1899314058
dataTable2[numberValue13] = "move_characters@patricia"
numberValue13 = 1583990743
dataTable2[numberValue13] = "move_characters@ron"
numberValue13 = 1528838481
dataTable2[numberValue13] = "move_m@swagger@b"
numberValue13 = 148072839
dataTable2[numberValue13] = "move_m@leaf_blower"
numberValue13 = -2018280977
dataTable2[numberValue13] = "move_m@flee@c"
numberValue13 = -1960115337
textValue2 = "move_characters@amanda@bag"
dataTable2[numberValue13] = textValue2
numberValue13 = 1701187980
textValue2 = "move_f@film_reel"
dataTable2[numberValue13] = textValue2
numberValue13 = -1163090857
textValue2 = "move_f@flee@generic"
dataTable2[numberValue13] = textValue2
numberValue13 = 922192683
textValue2 = "move_f@handbag"
dataTable2[numberValue13] = textValue2
numberValue13 = -905417764
textValue2 = "move_m@flee@generic"
dataTable2[numberValue13] = textValue2
numberValue13 = -871949441
textValue2 = "move_m@shocked@a"
dataTable2[numberValue13] = textValue2
numberValue13 = 1728327052
textValue2 = "move_characters@floyd"
dataTable2[numberValue13] = textValue2
numberValue13 = 756811395
textValue2 = "move_f@hurry@b"
dataTable2[numberValue13] = textValue2
numberValue13 = -975292135
textValue2 = "move_characters@lamar"
dataTable2[numberValue13] = textValue2
numberValue13 = 70692426
textValue2 = "move_characters@tracey"
dataTable2[numberValue13] = textValue2
numberValue13 = -582520880
textValue2 = "move_m@brave@a"
dataTable2[numberValue13] = textValue2
numberValue13 = -388968941
textValue2 = "move_m@gangster@var_a"
dataTable2[numberValue13] = textValue2
numberValue13 = -1874148793
textValue2 = "move_f@stripper@a"
dataTable2[numberValue13] = textValue2
numberValue13 = -2076638015
textValue2 = "move_m@gangster@var_b"
dataTable2[numberValue13] = textValue2
numberValue13 = -1366140557
textValue2 = "move_m@gangster@var_c"
dataTable2[numberValue13] = textValue2
numberValue13 = -535479176
textValue2 = "move_m@gangster@var_d"
dataTable2[numberValue13] = textValue2
numberValue13 = 2038230857
textValue2 = "move_m@gangster@var_g"
dataTable2[numberValue13] = textValue2
numberValue13 = 1664205491
textValue2 = "move_m@gangster@var_h"
dataTable2[numberValue13] = textValue2
numberValue13 = 445985183
textValue2 = "move_m@gangster@var_j"
dataTable2[numberValue13] = textValue2
numberValue13 = -288695797
textValue2 = "move_m@gangster@var_k"
dataTable2[numberValue13] = textValue2
numberValue13 = 862223719
textValue2 = "move_m@clipboard"
dataTable2[numberValue13] = textValue2
numberValue13 = -409207550
textValue2 = "move_cop@action"
dataTable2[numberValue13] = textValue2
numberValue13 = 1259887674
textValue2 = "move_gangster"
dataTable2[numberValue13] = textValue2
numberValue13 = -795792088
textValue2 = "move_casey"
dataTable2[numberValue13] = textValue2
numberValue13 = -1938021834
textValue2 = "move_dreyfuss"
dataTable2[numberValue13] = textValue2
numberValue13 = 202679515
textValue2 = "move_paramedic"
dataTable2[numberValue13] = textValue2
numberValue13 = -1345269979
textValue2 = "move_f@fat@a_no_add"
dataTable2[numberValue13] = textValue2
numberValue13 = -1267550608
textValue2 = "move_f@depressed@c"
dataTable2[numberValue13] = textValue2
numberValue13 = 1720274816
textValue2 = "anim@move_f@grooving@slow@"
dataTable2[numberValue13] = textValue2
numberValue13 = 148615797
textValue2 = "anim@move_m@grooving@slow@"
dataTable2[numberValue13] = textValue2
numberValue13 = 422291091
textValue2 = "AMBIENT_WALK_VARIATION_F_ARROGANT_A"
dataTable2[numberValue13] = textValue2
numberValue13 = 1510605100
textValue2 = "AMBIENT_WALK_VARIATION_M_SAD_B"
dataTable2[numberValue13] = textValue2
numberValue13 = -746382641
textValue2 = "AMBIENT_WALK_VARIATION_M_BUSINESS_B"
dataTable2[numberValue13] = textValue2
numberValue13 = 1799136145
textValue2 = "AMBIENT_WALK_VARIATION_M_SAD_A"
dataTable2[numberValue13] = textValue2
numberValue13 = 11564329
textValue2 = "AMBIENT_WALK_VARIATION_M_BUSINESS_C"
dataTable2[numberValue13] = textValue2
numberValue13 = 471477248
textValue2 = "AMBIENT_WALK_VARIATION_M_BUSINESS_A"
dataTable2[numberValue13] = textValue2
numberValue13 = -1749517176
textValue2 = "AMBIENT_WALK_VARIATION_M_SAD_C"
dataTable2[numberValue13] = textValue2
numberValue13 = -1561136569
textValue2 = "AMBIENT_WALK_VARIATION_F_SAD_A"
dataTable2[numberValue13] = textValue2
numberValue13 = 381019249
textValue2 = "HUSKY@MOVE"
dataTable2[numberValue13] = textValue2
numberValue13 = -289665739
textValue2 = "RETRIEVER@MOVE"
dataTable2[numberValue13] = textValue2
function numberValue13(arg1)
  local arg2, arg3
  arg2 = GetPedMovementClipset
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = dataTable2
  arg3 = arg3[arg2]
  if arg3 then
    arg3 = dataTable2
    arg3 = arg3[arg2]
    return arg3
  else
    arg3 = nil
    return arg3
  end
end
textValue2 = false
flag10 = false
flag12 = false
flag13 = false
textValue4 = "onfront"
numberValue16 = 0
workValue19 = nil
numberValue = 0
function workValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = IsPedOnFoot
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = IsPedJumping
    arg4 = arg1
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = IsPedFalling
      arg4 = arg1
      arg3 = arg3(arg4)
      if not arg3 then
        arg3 = IsPedInjured
        arg4 = arg1
        arg3 = arg3(arg4)
        if not arg3 then
          arg3 = IsPedInMeleeCombat
          arg4 = arg1
          arg3 = arg3(arg4)
          if not arg3 then
            arg3 = IsPedRagdoll
            arg4 = arg1
            arg3 = arg3(arg4)
            if not arg3 then
              arg3 = IsPedCuffed
              arg4 = arg1
              arg3 = arg3(arg4)
              if not arg3 then
                goto flow_label_38
              end
            end
          end
        end
      end
    end
  end
  arg3 = false
  return arg3
  ::flow_label_38::
  arg3 = CMG
  arg3 = arg3.getTunableValue
  arg4 = "crouch_enabled"
  arg3 = arg3(arg4)
  if not arg3 and arg2 then
    arg3 = CMG
    arg3 = arg3.getCurrentWagerFlag
    arg4 = "allowCrouchShoot"
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = IsPlayerFreeAiming
      arg4 = PlayerId
      arg4, arg5, arg6 = arg4()
      arg3 = arg3(arg4, arg5, arg6)
      if not arg3 then
        arg3 = GetPedConfigFlag
        arg4 = arg1
        arg5 = 78
        arg6 = false
        arg3 = arg3(arg4, arg5, arg6)
        if not arg3 then
          goto flow_label_67
        end
      end
      arg3 = false
      return arg3
    end
  end
  ::flow_label_67::
  arg3 = true
  return arg3
end
workValue4 = _ENV
textValue = "SetPlayerClipset"
function workValue5(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.loadClipSet
  arg3 = arg1
  arg2(arg3)
  arg2 = SetPedMovementClipset
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = arg1
  arg5 = 0.5
  arg2(arg3, arg4, arg5)
  arg2 = RemoveClipSet
  arg3 = arg1
  arg2(arg3)
end
workValue4[textValue] = workValue5
function workValue4(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local cmgCall, workValue18, numberValue17, waitCall, numberValue2, heading, numberValue4, numberValue6, numberValue7, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.loadAnimDict
  workValue18 = arg2
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall(workValue18)
  cmgCall = TaskPlayAnim
  workValue18 = arg1
  numberValue17 = arg2
  waitCall = arg3
  numberValue2 = arg4 or numberValue2
  if not arg4 then
    numberValue2 = 2.0
  end
  heading = arg5 or heading
  if not arg5 then
    heading = 2.0
  end
  numberValue4 = arg6 or numberValue4
  if not arg6 then
    numberValue4 = -1
  end
  numberValue6 = 0
  numberValue7 = arg7 or numberValue7
  if not arg7 then
    numberValue7 = 0.0
  end
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  cmgCall(workValue18, numberValue17, waitCall, numberValue2, heading, numberValue4, numberValue6, numberValue7, flag, flag2, flag3)
  cmgCall = RemoveAnimDict
  workValue18 = arg2
  cmgCall(workValue18)
end
function textValue(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, cmgCall, workValue18, numberValue17, waitCall, numberValue2, heading, numberValue4
  arg4 = math
  arg4 = arg4.abs
  arg5 = arg2
  arg4 = arg4(arg5)
  arg5 = arg2 / arg4
  arg6 = arg3 / arg4
  arg7 = 1
  cmgCall = arg4
  workValue18 = 1
  for numberValue17 = arg7, cmgCall, workValue18 do
    waitCall = Wait
    numberValue2 = arg6
    waitCall(numberValue2)
    waitCall = SetEntityHeading
    numberValue2 = arg1
    heading = GetEntityHeading
    numberValue4 = arg1
    -- Beginner: result below is heading.
    heading = heading(numberValue4)
    heading = heading + arg5
    -- Beginner: Change the direction an entity is facing.
    waitCall(numberValue2, heading)
  end
end
function workValue5()
  local arg1, arg2, arg3, arg4
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = ResetPedStrafeClipset
  arg3 = arg1
  arg2(arg3)
  arg2 = ResetPedWeaponMovementClipset
  arg3 = arg1
  arg2(arg3)
  arg2 = SetPedMaxMoveBlendRatio
  arg3 = arg1
  arg4 = 1.0
  arg2(arg3, arg4)
  arg2 = SetPedCanPlayAmbientAnims
  arg3 = arg1
  arg4 = true
  arg2(arg3, arg4)
  arg2 = workValue19
  if nil ~= arg2 then
    arg2 = SetPlayerClipset
    arg3 = workValue19
    arg2(arg3)
  else
    arg2 = ResetPedMovementClipset
    arg3 = arg1
    arg4 = 0.5
    arg2(arg3, arg4)
  end
  arg2 = RemoveAnimSet
  arg3 = "move_ped_crouched"
  arg2(arg3)
end
function workValue6()
  local arg1, arg2
  arg1 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg2()
    local playerPed, flag5, numberValue14, flag9, flag11, textValue3
    while true do
      playerPed = flag10
      if not playerPed then
        break
      end
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      flag5 = workValue2
      numberValue14 = playerPed
      flag9 = true
      flag5 = flag5(numberValue14, flag9)
      if not flag5 then
        flag5 = false
        flag10 = flag5
        break
      end
      flag5 = SetPedCanPlayAmbientAnims
      numberValue14 = playerPed
      flag9 = false
      flag5(numberValue14, flag9)
      flag5 = DisableControlAction
      numberValue14 = 0
      flag9 = 36
      flag11 = true
      flag5(numberValue14, flag9, flag11)
      flag5 = IsPedUsingActionMode
      numberValue14 = playerPed
      flag5 = flag5(numberValue14)
      if 1 == flag5 then
        flag5 = SetPedUsingActionMode
        numberValue14 = playerPed
        flag9 = false
        flag11 = -1
        textValue3 = "DEFAULT_ACTION"
        flag5(numberValue14, flag9, flag11, textValue3)
      end
      flag5 = Wait
      numberValue14 = 0
      flag5(numberValue14)
    end
    playerPed = workValue5
    playerPed()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function workValue7()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = true
  flag10 = arg1
  arg1 = CMG
  arg1 = arg1.loadClipSet
  arg2 = "move_ped_crouched"
  arg1(arg2)
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetPedStealthMovement
  arg3 = arg1
  arg2 = arg2(arg3)
  if 1 == arg2 then
    arg2 = SetPedStealthMovement
    arg3 = arg1
    arg4 = false
    arg5 = "DEFAULT_ACTION"
    arg2(arg3, arg4, arg5)
    arg2 = Wait
    arg3 = 100
    arg2(arg3)
  end
  arg2 = GetFollowPedCamViewMode
  arg2 = arg2()
  if 4 == arg2 then
    arg2 = SetFollowPedCamViewMode
    arg3 = 0
    arg2(arg3)
  end
  arg2 = numberValue13
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = workValue19
  end
  workValue19 = arg2
  arg2 = SetPedMovementClipset
  arg3 = arg1
  arg4 = "move_ped_crouched"
  arg5 = 0.6
  arg2(arg3, arg4, arg5)
  arg2 = SetPedStrafeClipset
  arg3 = arg1
  arg4 = "move_ped_crouched_strafing"
  arg2(arg3, arg4)
  arg2 = workValue6
  arg2()
end
function workValue8(arg1)
  local arg2, arg3, arg4
  arg2 = workValue2
  arg3 = arg1
  arg4 = true
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = workValue7
    arg2()
    arg2 = true
    return arg2
  else
    arg2 = false
    return arg2
  end
end
function workValue9()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, cmgCall
  arg1 = CMG
  arg1 = arg1.isNoClipActive
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getClientEventData
  arg2 = "SpellingBeeClientData"
  arg1 = arg1(arg2)
  arg1 = arg1.minigameName
  if "Spelling Bee" == arg1 then
    return
  end
  arg1 = GetFrameCount
  arg1 = arg1()
  arg2 = numberValue
  if arg1 == arg2 then
    return
  end
  arg1 = GetFrameCount
  arg1 = arg1()
  numberValue = arg1
  arg1 = flag13
  if arg1 then
    return
  end
  arg1 = flag10
  if arg1 then
    arg1 = false
    flag10 = arg1
    return
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = dataTable.crouchOverride
  if arg2 then
    arg2 = DisableControlAction
    arg3 = 0
    arg4 = 36
    arg5 = true
    arg2(arg3, arg4, arg5)
  else
    arg2 = GetControlInstructionalButton
    arg3 = 0
    arg4 = 3536895674
    arg5 = false
    arg2 = arg2(arg3, arg4, arg5)
    arg3 = GetControlInstructionalButton
    arg4 = 0
    arg5 = 36
    arg6 = false
    arg3 = arg3(arg4, arg5, arg6)
    if arg2 == arg3 then
      arg4 = textValue2
      if not arg4 then
        arg4 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg4 = arg4()
        arg5 = GetPedStealthMovement
        arg6 = arg1
        arg5 = arg5(arg6)
        if 1 == arg5 then
          arg5 = numberValue16
          arg5 = arg4 - arg5
          arg6 = 1000
          if arg5 < arg6 then
            arg5 = DisableControlAction
            arg6 = 0
            arg7 = 36
            cmgCall = true
            arg5(arg6, arg7, cmgCall)
            arg5 = 0
            numberValue16 = arg5
            arg5 = workValue8
            arg6 = arg1
            arg5(arg6)
            return
          end
        end
        numberValue16 = arg4
        return
      end
    end
  end
  arg2 = workValue8
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = textValue2
    if arg2 then
      arg2 = true
      flag13 = arg2
      arg2 = tCMG
      arg2 = arg2.setCanAnim
      arg3 = true
      arg2(arg3)
      arg2 = false
      textValue2 = arg2
      arg2 = workValue4
      arg3 = arg1
      arg4 = "get_up@directional@transition@prone_to_knees@crawl"
      arg5 = "front"
      arg6 = nil
      arg7 = nil
      cmgCall = 780
      arg2(arg3, arg4, arg5, arg6, arg7, cmgCall)
      arg2 = Wait
      arg3 = 780
      arg2(arg3)
      arg2 = false
      flag13 = arg2
    end
  end
end
function workValue10(arg1)
  local arg2, arg3
  arg2 = IsPedRunning
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = IsPedSprinting
    arg3 = arg1
    arg2 = arg2(arg3)
    if not arg2 then
      goto flow_label_13
    end
  end
  arg2 = true
  return arg2
  ::flow_label_13::
  arg2 = false
  return arg2
end
function workValue11(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, cmgCall, workValue18, numberValue17, waitCall, numberValue2, heading, numberValue4, numberValue6, numberValue7, flag, flag2, flag3, flag4, flag6
  arg4 = GetEntityCoords
  arg5 = arg1
  -- Beginner: result below is entityCoords.
  arg4 = arg4(arg5)
  arg5 = TaskPlayAnimAdvanced
  arg6 = arg1
  arg7 = "move_crawl"
  cmgCall = textValue4
  workValue18 = "_fwd"
  cmgCall = cmgCall .. workValue18
  workValue18 = arg4.x
  numberValue17 = arg4.y
  waitCall = arg4.z
  numberValue2 = 0.0
  heading = 0.0
  numberValue4 = arg2 or numberValue4
  if not arg2 then
    numberValue4 = GetEntityHeading
    numberValue6 = arg1
    -- Beginner: result below is heading.
    numberValue4 = numberValue4(numberValue6)
  end
  numberValue6 = arg3 or numberValue6
  if not arg3 then
    numberValue6 = 2.0
  end
  numberValue7 = 2.0
  flag = -1
  flag2 = 2
  flag3 = 1.0
  flag4 = false
  flag6 = false
  arg5(arg6, arg7, cmgCall, workValue18, numberValue17, waitCall, numberValue2, heading, numberValue4, numberValue6, numberValue7, flag, flag2, flag3, flag4, flag6)
end
function workValue12(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, cmgCall, workValue18
  if not arg1 then
    arg2 = true
    flag13 = arg2
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = textValue4
    if "onfront" == arg3 then
      arg3 = workValue4
      arg4 = arg2
      arg5 = "get_up@directional@transition@prone_to_knees@crawl"
      arg6 = "front"
      arg7 = nil
      cmgCall = nil
      workValue18 = 780
      arg3(arg4, arg5, arg6, arg7, cmgCall, workValue18)
      arg3 = flag10
      if not arg3 then
        arg3 = Wait
        arg4 = 780
        arg3(arg4)
        arg3 = workValue4
        arg4 = arg2
        arg5 = "get_up@directional@movement@from_knees@standard"
        arg6 = "getup_l_0"
        arg7 = nil
        cmgCall = nil
        workValue18 = 1300
        arg3(arg4, arg5, arg6, arg7, cmgCall, workValue18)
      end
    else
      arg3 = workValue4
      arg4 = arg2
      arg5 = "get_up@directional@transition@prone_to_seated@crawl"
      arg6 = "back"
      arg7 = 16.0
      cmgCall = nil
      workValue18 = 950
      arg3(arg4, arg5, arg6, arg7, cmgCall, workValue18)
      arg3 = flag10
      if not arg3 then
        arg3 = Wait
        arg4 = 950
        arg3(arg4)
        arg3 = workValue4
        arg4 = arg2
        arg5 = "get_up@directional@movement@from_seated@standard"
        arg6 = "get_up_l_0"
        arg7 = nil
        cmgCall = nil
        workValue18 = 1300
        arg3(arg4, arg5, arg6, arg7, cmgCall, workValue18)
      end
    end
  end
end
function workValue13(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, cmgCall, workValue18, numberValue17, waitCall, numberValue2, heading, numberValue4, numberValue6
  arg4 = true
  flag12 = arg4
  arg4 = TaskPlayAnim
  arg5 = arg1
  arg6 = "move_crawl"
  arg7 = arg2
  cmgCall = "_"
  workValue18 = arg3
  arg7 = arg7 .. cmgCall .. workValue18
  cmgCall = 8.0
  workValue18 = -8.0
  numberValue17 = -1
  waitCall = 2
  numberValue2 = 0.0
  heading = false
  numberValue4 = false
  numberValue6 = false
  -- Beginner: Play an animation on a ped.
  arg4(arg5, arg6, arg7, cmgCall, workValue18, numberValue17, waitCall, numberValue2, heading, numberValue4, numberValue6)
  arg4 = {}
  arg5 = {}
  arg5.fwd = 820
  arg5.bwd = 990
  arg4.onfront = arg5
  arg5 = {}
  arg5.fwd = 1200
  arg5.bwd = 1200
  arg4.onback = arg5
  arg5 = SetTimeout
  arg6 = arg4[arg2]
  arg6 = arg6[arg3]
  function arg7()
    local playerPed, flag5
    playerPed = false
    flag12 = playerPed
  end
  arg5(arg6, arg7)
end
function workValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, cmgCall, workValue18
  arg2 = true
  flag13 = arg2
  arg2 = GetEntityHeading
  arg3 = arg1
  -- Beginner: result below is heading.
  arg2 = arg2(arg3)
  arg3 = textValue4
  if "onfront" == arg3 then
    arg3 = "onback"
    textValue4 = arg3
    arg3 = workValue4
    arg4 = arg1
    arg5 = "get_up@directional_sweep@combat@pistol@front"
    arg6 = "front_to_prone"
    arg7 = 2.0
    arg3(arg4, arg5, arg6, arg7)
    arg3 = textValue
    arg4 = arg1
    arg5 = -18.0
    arg6 = 3600
    arg3(arg4, arg5, arg6)
  else
    arg3 = "onfront"
    textValue4 = arg3
    arg3 = workValue4
    arg4 = arg1
    arg5 = "move_crawlprone2crawlfront"
    arg6 = "back"
    arg7 = 2.0
    cmgCall = nil
    workValue18 = -1
    arg3(arg4, arg5, arg6, arg7, cmgCall, workValue18)
    arg3 = textValue
    arg4 = arg1
    arg5 = 12.0
    arg6 = 1700
    arg3(arg4, arg5, arg6)
  end
  arg3 = workValue11
  arg4 = arg1
  arg5 = arg2 + 180.0
  arg3(arg4, arg5)
  arg3 = Wait
  arg4 = 400
  arg3(arg4)
  arg3 = false
  flag13 = arg3
end
function workValue15()
  local arg1, arg2
  arg1 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function arg2()
    local playerPed, flag5, numberValue14, flag9, flag11, textValue3, numberValue15, heading3, textValue5, workValue20, workValue, workValue3, numberValue3, numberValue5, heading2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag7, flag8
    playerPed = Wait
    flag5 = 400
    playerPed(flag5)
    playerPed = false
    while true do
      flag5 = textValue2
      if not flag5 then
        break
      end
      flag5 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      flag5 = flag5()
      numberValue14 = workValue2
      flag9 = flag5
      flag11 = false
      numberValue14 = numberValue14(flag9, flag11)
      if numberValue14 then
        numberValue14 = IsEntityInWater
        flag9 = flag5
        numberValue14 = numberValue14(flag9)
        if not numberValue14 then
          goto flow_label_35
        end
      end
      numberValue14 = ClearPedTasks
      flag9 = flag5
      numberValue14(flag9)
      numberValue14 = textValue2
      if numberValue14 then
        numberValue14 = tCMG
        numberValue14 = numberValue14.setCanAnim
        flag9 = true
        numberValue14(flag9)
        numberValue14 = false
        textValue2 = numberValue14
      end
      playerPed = true
      do break end
      ::flow_label_35::
      numberValue14 = IsControlPressed
      flag9 = 0
      flag11 = 32
      numberValue14 = numberValue14(flag9, flag11)
      flag9 = IsControlPressed
      flag11 = 0
      textValue3 = 33
      flag9 = flag9(flag11, textValue3)
      flag11 = flag12
      if not flag11 then
        if numberValue14 then
          flag11 = workValue13
          textValue3 = flag5
          numberValue15 = textValue4
          heading3 = "fwd"
          flag11(textValue3, numberValue15, heading3)
        elseif flag9 then
          flag11 = workValue13
          textValue3 = flag5
          numberValue15 = textValue4
          heading3 = "bwd"
          flag11(textValue3, numberValue15, heading3)
        end
      end
      flag11 = IsControlPressed
      textValue3 = 0
      numberValue15 = 34
      flag11 = flag11(textValue3, numberValue15)
      if flag11 then
        flag11 = flag12
        if flag11 then
          if numberValue14 then
            flag11 = 1.0
            if flag11 then
              goto flow_label_76
            end
          end
          flag11 = -1.0
          ::flow_label_76::
          textValue3 = SetEntityHeading
          numberValue15 = flag5
          heading3 = GetEntityHeading
          textValue5 = flag5
          -- Beginner: result below is heading.
          heading3 = heading3(textValue5)
          heading3 = heading3 + flag11
          -- Beginner: Change the direction an entity is facing.
          textValue3(numberValue15, heading3)
        else
          flag11 = true
          flag13 = flag11
          flag11 = textValue4
          if "onfront" == flag11 then
            flag11 = GetEntityCoords
            textValue3 = flag5
            -- Beginner: result below is entityCoords.
            flag11 = flag11(textValue3)
            textValue3 = TaskPlayAnimAdvanced
            numberValue15 = flag5
            heading3 = "move_crawlprone2crawlfront"
            textValue5 = "left"
            workValue20 = flag11.x
            workValue = flag11.y
            workValue3 = flag11.z
            numberValue3 = 0.0
            numberValue5 = 0.0
            heading2 = GetEntityHeading
            numberValue8 = flag5
            -- Beginner: result below is heading.
            heading2 = heading2(numberValue8)
            numberValue8 = 2.0
            numberValue9 = 2.0
            numberValue10 = -1
            numberValue11 = 2
            numberValue12 = 0.1
            flag7 = false
            flag8 = false
            textValue3(numberValue15, heading3, textValue5, workValue20, workValue, workValue3, numberValue3, numberValue5, heading2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag7, flag8)
            textValue3 = textValue
            numberValue15 = flag5
            heading3 = -10.0
            textValue5 = 300
            textValue3(numberValue15, heading3, textValue5)
            textValue3 = Wait
            numberValue15 = 700
            textValue3(numberValue15)
          else
            flag11 = workValue4
            textValue3 = flag5
            numberValue15 = "get_up@directional_sweep@combat@pistol@left"
            heading3 = "left_to_prone"
            flag11(textValue3, numberValue15, heading3)
            flag11 = textValue
            textValue3 = flag5
            numberValue15 = 25.0
            heading3 = 400
            flag11(textValue3, numberValue15, heading3)
            flag11 = workValue11
            textValue3 = flag5
            flag11(textValue3)
            flag11 = Wait
            textValue3 = 600
            flag11(textValue3)
          end
          flag11 = false
          flag13 = flag11
        end
      else
        flag11 = IsControlPressed
        textValue3 = 0
        numberValue15 = 35
        flag11 = flag11(textValue3, numberValue15)
        if flag11 then
          flag11 = flag12
          if flag11 then
            if flag9 then
              flag11 = 1.0
              if flag11 then
                goto flow_label_156
              end
            end
            flag11 = -1.0
            ::flow_label_156::
            textValue3 = SetEntityHeading
            numberValue15 = flag5
            heading3 = GetEntityHeading
            textValue5 = flag5
            -- Beginner: result below is heading.
            heading3 = heading3(textValue5)
            heading3 = heading3 + flag11
            -- Beginner: Change the direction an entity is facing.
            textValue3(numberValue15, heading3)
          else
            flag11 = true
            flag13 = flag11
            flag11 = textValue4
            if "onfront" == flag11 then
              flag11 = GetEntityCoords
              textValue3 = flag5
              -- Beginner: result below is entityCoords.
              flag11 = flag11(textValue3)
              textValue3 = TaskPlayAnimAdvanced
              numberValue15 = flag5
              heading3 = "move_crawlprone2crawlfront"
              textValue5 = "right"
              workValue20 = flag11.x
              workValue = flag11.y
              workValue3 = flag11.z
              numberValue3 = 0.0
              numberValue5 = 0.0
              heading2 = GetEntityHeading
              numberValue8 = flag5
              -- Beginner: result below is heading.
              heading2 = heading2(numberValue8)
              numberValue8 = 2.0
              numberValue9 = 2.0
              numberValue10 = -1
              numberValue11 = 2
              numberValue12 = 0.1
              flag7 = false
              flag8 = false
              textValue3(numberValue15, heading3, textValue5, workValue20, workValue, workValue3, numberValue3, numberValue5, heading2, numberValue8, numberValue9, numberValue10, numberValue11, numberValue12, flag7, flag8)
              textValue3 = textValue
              numberValue15 = flag5
              heading3 = 10.0
              textValue5 = 300
              textValue3(numberValue15, heading3, textValue5)
              textValue3 = Wait
              numberValue15 = 700
              textValue3(numberValue15)
            else
              flag11 = workValue4
              textValue3 = flag5
              numberValue15 = "get_up@directional_sweep@combat@pistol@right"
              heading3 = "right_to_prone"
              flag11(textValue3, numberValue15, heading3)
              flag11 = textValue
              textValue3 = flag5
              numberValue15 = -25.0
              heading3 = 400
              flag11(textValue3, numberValue15, heading3)
              flag11 = workValue11
              textValue3 = flag5
              flag11(textValue3)
              flag11 = Wait
              textValue3 = 600
              flag11(textValue3)
            end
            flag11 = false
            flag13 = flag11
          end
        end
      end
      flag11 = flag12
      if not flag11 then
        flag11 = IsControlPressed
        textValue3 = 0
        numberValue15 = 22
        flag11 = flag11(textValue3, numberValue15)
        if flag11 then
          flag11 = workValue14
          textValue3 = flag5
          flag11(textValue3)
        end
      end
      flag11 = Wait
      textValue3 = 0
      flag11(textValue3)
    end
    flag5 = workValue12
    numberValue14 = playerPed
    flag5(numberValue14)
    flag5 = false
    flag12 = flag5
    flag5 = false
    flag13 = flag5
    flag5 = "onfront"
    textValue4 = flag5
    flag5 = SetPedConfigFlag
    numberValue14 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    numberValue14 = numberValue14()
    flag9 = 48
    flag11 = false
    flag5(numberValue14, flag9, flag11)
    flag5 = RemoveAnimDict
    numberValue14 = "move_crawl"
    flag5(numberValue14)
    flag5 = RemoveAnimDict
    numberValue14 = "move_crawlprone2crawlfront"
    flag5(numberValue14)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
function workValue16()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, cmgCall, workValue18, numberValue17
  arg1 = flag13
  if arg1 then
    return
  end
  arg1 = IsPauseMenuActive
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = textValue2
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.setCanAnim
    arg2 = true
    arg1(arg2)
    arg1 = false
    textValue2 = arg1
    return
  end
  arg1 = false
  arg2 = flag10
  if arg2 then
    arg2 = false
    flag10 = arg2
    arg1 = true
  end
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = workValue2
  arg4 = arg2
  arg5 = false
  arg3 = arg3(arg4, arg5)
  if arg3 then
    arg3 = IsEntityInWater
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = tCMG
      arg3 = arg3.canAnim
      arg3 = arg3()
      if arg3 then
        goto flow_label_46
      end
    end
  end
  return
  ::flow_label_46::
  arg3 = true
  flag13 = arg3
  arg3 = Pointing
  if arg3 then
    Pointing = false
  end
  arg3 = tCMG
  arg3 = arg3.setCanAnim
  arg4 = false
  arg3(arg4)
  arg3 = true
  textValue2 = arg3
  arg3 = SetPedConfigFlag
  arg4 = arg2
  arg5 = 48
  arg6 = true
  arg3(arg4, arg5, arg6)
  arg3 = GetPedStealthMovement
  arg4 = arg2
  arg3 = arg3(arg4)
  if 1 == arg3 then
    arg3 = SetPedStealthMovement
    arg4 = arg2
    arg5 = false
    arg6 = "DEFAULT_ACTION"
    arg3(arg4, arg5, arg6)
    arg3 = Wait
    arg4 = 100
    arg3(arg4)
  end
  arg3 = CMG
  arg3 = arg3.loadAnimDict
  arg4 = "move_crawl"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg3(arg4)
  arg3 = CMG
  arg3 = arg3.loadAnimDict
  arg4 = "move_crawlprone2crawlfront"
  arg3(arg4)
  arg3 = workValue10
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = false
    if arg3 then
      arg3 = workValue4
      arg4 = arg2
      arg5 = "explosions"
      arg6 = "react_blown_forwards"
      arg7 = nil
      cmgCall = 3.0
      arg3(arg4, arg5, arg6, arg7, cmgCall)
      arg3 = Wait
      arg4 = 1100
      arg3(arg4)
  end
  elseif arg1 then
    arg3 = workValue4
    arg4 = arg2
    arg5 = "amb@world_human_sunbathe@male@front@enter"
    arg6 = "enter"
    arg7 = nil
    cmgCall = nil
    workValue18 = -1
    numberValue17 = 0.3
    arg3(arg4, arg5, arg6, arg7, cmgCall, workValue18, numberValue17)
    arg3 = Wait
    arg4 = 1500
    arg3(arg4)
  else
    arg3 = workValue4
    arg4 = arg2
    arg5 = "amb@world_human_sunbathe@male@front@enter"
    arg6 = "enter"
    arg3(arg4, arg5, arg6)
    arg3 = Wait
    arg4 = 3000
    arg3(arg4)
  end
  arg3 = workValue2
  arg4 = arg2
  arg5 = false
  arg3 = arg3(arg4, arg5)
  if arg3 then
    arg3 = IsEntityInWater
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = workValue11
      arg4 = arg2
      arg5 = nil
      arg6 = 3.0
      arg3(arg4, arg5, arg6)
    end
  end
  arg3 = false
  flag13 = arg3
  arg3 = workValue15
  arg3()
end
workValue17 = _ENV
threadCall = "CreateThread"
workValue17 = workValue17[threadCall]
function threadCall()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = dataTable.crouchKeybindEnabled
  if arg1 then
    arg1 = RegisterKeyMapping
    arg2 = "+crouch"
    arg3 = dataTable.localization
    arg3 = arg3.crouch_keymapping
    arg4 = "keyboard"
    arg5 = dataTable.crouchKeybind
    -- Beginner: Bind a command to a keyboard/controller key.
    arg1(arg2, arg3, arg4, arg5)
    arg1 = CMG
    arg1 = arg1.registerCommand
    arg2 = "+crouch"
    function arg3()
      local playerPed, flag5
      playerPed = workValue9
      playerPed()
    end
    arg4 = false
    arg1(arg2, arg3, arg4)
    arg1 = CMG
    arg1 = arg1.registerCommand
    arg2 = "-crouch"
    function arg3()
      local playerPed, flag5
    end
    arg4 = false
    arg1(arg2, arg3, arg4)
  end
  arg1 = RegisterCommand
  arg2 = "crouch"
  -- Beginner: this function is the command handler for "crouch".
  function arg3()
    local playerPed, flag5
    playerPed = GetFrameCount
    playerPed = playerPed()
    flag5 = numberValue
    if playerPed == flag5 then
      return
    end
    playerPed = GetFrameCount
    playerPed = playerPed()
    numberValue = playerPed
    playerPed = flag10
    if playerPed then
      playerPed = false
      flag10 = playerPed
      return
    end
    playerPed = workValue8
    flag5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    flag5 = flag5()
    playerPed(flag5)
  end
  arg4 = false
  -- Beginner: Register a chat/console command. Event/command: "crouch".
  arg1(arg2, arg3, arg4)
  arg1 = TriggerEvent
  arg2 = "chat:addSuggestion"
  arg3 = "/crouch"
  arg4 = dataTable.localization
  arg4 = arg4.crouch_chat_suggestion
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  arg1(arg2, arg3, arg4)
  arg1 = dataTable.crawlKeybindEnabled
  if arg1 then
    arg1 = RegisterKeyMapping
    arg2 = "+crawl"
    arg3 = dataTable.localization
    arg3 = arg3.crawl_keymapping
    arg4 = "keyboard"
    arg5 = dataTable.crawlKeybind
    -- Beginner: Bind a command to a keyboard/controller key.
    arg1(arg2, arg3, arg4, arg5)
    arg1 = CMG
    arg1 = arg1.registerCommand
    arg2 = "+crawl"
    function arg3()
      local playerPed, flag5
      playerPed = workValue16
      playerPed()
    end
    arg4 = false
    arg1(arg2, arg3, arg4)
    arg1 = CMG
    arg1 = arg1.registerCommand
    arg2 = "-crawl"
    function arg3()
      local playerPed, flag5
    end
    arg4 = false
    arg1(arg2, arg3, arg4)
  end
  arg1 = RegisterCommand
  arg2 = "crawl"
  -- Beginner: this function is the command handler for "crawl".
  function arg3()
    local playerPed, flag5
    playerPed = workValue16
    playerPed()
  end
  arg4 = false
  -- Beginner: Register a chat/console command. Event/command: "crawl".
  arg1(arg2, arg3, arg4)
  arg1 = TriggerEvent
  arg2 = "chat:addSuggestion"
  arg3 = "/crouch"
  arg4 = dataTable.localization
  arg4 = arg4.crawl_chat_suggestion
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  arg1(arg2, arg3, arg4)
end
workValue17(threadCall)