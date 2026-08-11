--[[
    LEVEL 1 BEGINNER GUIDE — Cayoperico Loader
    ===============================================

    File: cmg/prod/client/misc/cl_cayoperico_loader.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Cayoperico Loader feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 12
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
local dataTable, dataTable2, textValue21, cmgCall, textValue43, textValue46, textValue47, flag4, textValue48, textValue49, textValue, textValue2, textValue3, textValue4, textValue5, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue32, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue44, textValue45
dataTable = {}
dataTable2 = "xn_h4_islandx_terrain_01_slod"
textValue21 = "xn_h4_islandx_terrain_02_slod"
cmgCall = "xn_h4_islandx_terrain_04_slod"
textValue43 = "xn_h4_islandx_terrain_05_slod"
textValue46 = "xn_h4_islandx_terrain_06_slod"
dataTable[1] = dataTable2
dataTable[2] = textValue21
dataTable[3] = cmgCall
dataTable[4] = textValue43
dataTable[5] = textValue46
dataTable2 = {}
textValue21 = "xn_ap1_lod"
cmgCall = "xn_apa_ch2_lod"
textValue43 = "xn_apa_ch2_lod2"
textValue46 = "xn_apa_ch2_lod3"
textValue47 = "xn_apa_ch2_lod4"
flag4 = "xn_apa_ss1_lod"
textValue48 = "xn_bh1_lod"
textValue49 = "xn_bkr_id1_lod"
textValue = "xn_ch1_lod"
textValue2 = "xn_ch2_lod"
textValue3 = "xn_ch2_lod2"
textValue4 = "xn_ch2_lod3"
textValue5 = "xn_ch2_lod4"
textValue6 = "xn_ch3_lod"
textValue7 = "xn_cs1_lod"
textValue8 = "xn_cs1_lod2"
textValue9 = "xn_cs1_lod3"
textValue10 = "xn_cs2_lod"
textValue11 = "xn_cs2_lod2"
textValue12 = "xn_cs3_lod"
textValue13 = "xn_cs4_lod"
textValue14 = "xn_cs5_lod"
textValue15 = "xn_cs6_lod"
textValue16 = "xn_dt1_lod"
textValue17 = "xn_hei_ap1_lod"
textValue18 = "xn_hei_bh1_lod"
textValue19 = "xn_hei_ch1_lod"
textValue20 = "xn_hei_ch2_lod"
textValue23 = "xn_hei_ch2_lod2"
textValue24 = "xn_hei_ch2_lod3"
textValue25 = "xn_hei_ch2_lod4"
textValue26 = "xn_hei_ch3_lod"
textValue27 = "xn_hei_cs1_lod"
textValue28 = "xn_hei_cs1_lod2"
textValue29 = "xn_hei_cs1_lod3"
textValue30 = "xn_hei_cs2_lod"
textValue31 = "xn_hei_cs2_lod2"
textValue32 = "xn_hei_cs3_lod"
textValue33 = "xn_hei_cs4_lod"
textValue34 = "xn_hei_cs6_lod"
textValue35 = "xn_hei_dt1_lod"
textValue36 = "xn_hei_hw1_lod"
textValue37 = "xn_hei_id1_lod"
textValue38 = "xn_hei_id2_lod"
textValue39 = "xn_hei_kt1_lod"
textValue40 = "xn_hei_po1_lod"
textValue41 = "xn_hei_sc1_lod"
textValue42 = "xn_hei_sm_lod"
textValue44 = "xn_hei_ss1_lod"
textValue45 = "xn_hei_vb_lod"
dataTable2[1] = textValue21
dataTable2[2] = cmgCall
dataTable2[3] = textValue43
dataTable2[4] = textValue46
dataTable2[5] = textValue47
dataTable2[6] = flag4
dataTable2[7] = textValue48
dataTable2[8] = textValue49
dataTable2[9] = textValue
dataTable2[10] = textValue2
dataTable2[11] = textValue3
dataTable2[12] = textValue4
dataTable2[13] = textValue5
dataTable2[14] = textValue6
dataTable2[15] = textValue7
dataTable2[16] = textValue8
dataTable2[17] = textValue9
dataTable2[18] = textValue10
dataTable2[19] = textValue11
dataTable2[20] = textValue12
dataTable2[21] = textValue13
dataTable2[22] = textValue14
dataTable2[23] = textValue15
dataTable2[24] = textValue16
dataTable2[25] = textValue17
dataTable2[26] = textValue18
dataTable2[27] = textValue19
dataTable2[28] = textValue20
dataTable2[29] = textValue23
dataTable2[30] = textValue24
dataTable2[31] = textValue25
dataTable2[32] = textValue26
dataTable2[33] = textValue27
dataTable2[34] = textValue28
dataTable2[35] = textValue29
dataTable2[36] = textValue30
dataTable2[37] = textValue31
dataTable2[38] = textValue32
dataTable2[39] = textValue33
dataTable2[40] = textValue34
dataTable2[41] = textValue35
dataTable2[42] = textValue36
dataTable2[43] = textValue37
dataTable2[44] = textValue38
dataTable2[45] = textValue39
dataTable2[46] = textValue40
dataTable2[47] = textValue41
dataTable2[48] = textValue42
dataTable2[49] = textValue44
dataTable2[50] = textValue45
textValue21 = "xn_hw1_lod"
cmgCall = "xn_id1_lod"
textValue43 = "xn_id2_lod"
textValue46 = "xn_kt1_lod"
textValue47 = "xn_lr_cs4_lod"
flag4 = "xn_lr_cs6_lod"
textValue48 = "xn_lr_id1_lod"
textValue49 = "xn_lr_sc1_lod"
textValue = "xn_po1_lod"
textValue2 = "xn_sc1_lod"
textValue3 = "xn_sm_lod"
textValue4 = "xn_sp1_lod"
textValue5 = "xn_ss1_lod"
textValue6 = "xn_vb_lod"
dataTable2[51] = textValue21
dataTable2[52] = cmgCall
dataTable2[53] = textValue43
dataTable2[54] = textValue46
dataTable2[55] = textValue47
dataTable2[56] = flag4
dataTable2[57] = textValue48
dataTable2[58] = textValue49
dataTable2[59] = textValue
dataTable2[60] = textValue2
dataTable2[61] = textValue3
dataTable2[62] = textValue4
dataTable2[63] = textValue5
dataTable2[64] = textValue6
textValue21 = false
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: textValue43; parameters: none) ===
function textValue43()
  local arg1, flag
  arg1 = textValue21
  return arg1
end
cmgCall.isInCayoPerico = textValue43

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: none) ===
function cmgCall()
  local arg1, flag, textValue22
  arg1 = textValue21
  if arg1 then
    arg1 = DisableCayoPerico
    flag = false
    arg1(flag)
  else
    arg1 = EnableCayoPerico
    flag = false
    arg1(flag)
  end
  arg1 = Wait
  flag = 1000
  arg1(flag)
  arg1 = DoScreenFadeIn
  flag = 2000
  arg1(flag)
  arg1 = textValue21
  arg1 = not arg1
  textValue21 = arg1
  arg1 = TriggerEvent
  flag = "IsInCayoPerico"
  textValue22 = textValue21
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "IsInCayoPerico".
  arg1(flag, textValue22)
  arg1 = TriggerServerEvent
  flag = "IsInCayoPerico"
  textValue22 = textValue21
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "IsInCayoPerico".
  arg1(flag, textValue22)
end
TogglePerico = cmgCall

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1) ===
function cmgCall(arg1)
  local flag, textValue22, flag2, flag3, numberValue, numberValue2, workValue3, workValue4
  flag = SetIslandHopperEnabled
  textValue22 = "HeistIsland"
  flag2 = true
  flag(textValue22, flag2)
  flag = SetAiGlobalPathNodesType
  textValue22 = 1
  flag(textValue22)
  flag = Citizen
  flag = flag.InvokeNative
  textValue22 = 6014969029414136234
  flag2 = false
  flag(textValue22, flag2)
  flag = SetScenarioGroupEnabled
  textValue22 = "Heist_Island_Peds"
  flag2 = true
  flag(textValue22, flag2)
  flag = SetAudioFlag
  textValue22 = "PlayerOnDLCHeist4Island"
  flag2 = true
  flag(textValue22, flag2)
  flag = SetAmbientZoneListStatePersistent
  textValue22 = "AZL_DLC_Hei4_Island_Zones"
  flag2 = true
  flag3 = true
  flag(textValue22, flag2, flag3)
  flag = SetAmbientZoneListStatePersistent
  textValue22 = "AZL_DLC_Hei4_Island_Disabled_Zones"
  flag2 = false
  flag3 = true
  flag(textValue22, flag2, flag3)
  flag = ipairs
  textValue22 = dataTable2
  flag, textValue22, flag2, flag3 = flag(textValue22)
  for numberValue, numberValue2 in flag, textValue22, flag2, flag3 do
    workValue3 = RequestIpl
    workValue4 = numberValue2
    workValue3(workValue4)
  end
  flag = ipairs
  textValue22 = dataTable
  flag, textValue22, flag2, flag3 = flag(textValue22)
  for numberValue, numberValue2 in flag, textValue22, flag2, flag3 do
    workValue3 = RemoveIpl
    workValue4 = numberValue2
    workValue3(workValue4)
  end
  if arg1 then
    flag = true
    textValue21 = flag
    flag = TriggerEvent
    textValue22 = "IsInCayoPerico"
    flag2 = true
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "IsInCayoPerico".
    flag(textValue22, flag2)
    flag = TriggerServerEvent
    textValue22 = "IsInCayoPerico"
    flag2 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "IsInCayoPerico".
    flag(textValue22, flag2)
  end
end
EnableCayoPerico = cmgCall

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: arg1) ===
function cmgCall(arg1)
  local flag, textValue22, flag2, flag3, numberValue, numberValue2, workValue3, workValue4
  flag = SetIslandHopperEnabled
  textValue22 = "HeistIsland"
  flag2 = false
  flag(textValue22, flag2)
  flag = SetAiGlobalPathNodesType
  textValue22 = 0
  flag(textValue22)
  flag = Citizen
  flag = flag.InvokeNative
  textValue22 = 6014969029414136234
  flag2 = true
  flag(textValue22, flag2)
  flag = SetScenarioGroupEnabled
  textValue22 = "Heist_Island_Peds"
  flag2 = false
  flag(textValue22, flag2)
  flag = SetAudioFlag
  textValue22 = "PlayerOnDLCHeist4Island"
  flag2 = false
  flag(textValue22, flag2)
  flag = SetAmbientZoneListStatePersistent
  textValue22 = "AZL_DLC_Hei4_Island_Zones"
  flag2 = false
  flag3 = false
  flag(textValue22, flag2, flag3)
  flag = SetAmbientZoneListStatePersistent
  textValue22 = "AZL_DLC_Hei4_Island_Disabled_Zones"
  flag2 = true
  flag3 = false
  flag(textValue22, flag2, flag3)
  flag = ipairs
  textValue22 = dataTable
  flag, textValue22, flag2, flag3 = flag(textValue22)
  for numberValue, numberValue2 in flag, textValue22, flag2, flag3 do
    workValue3 = RequestIpl
    workValue4 = numberValue2
    workValue3(workValue4)
  end
  flag = ipairs
  textValue22 = dataTable2
  flag, textValue22, flag2, flag3 = flag(textValue22)
  for numberValue, numberValue2 in flag, textValue22, flag2, flag3 do
    workValue3 = RemoveIpl
    workValue4 = numberValue2
    workValue3(workValue4)
  end
  if arg1 then
    flag = false
    textValue21 = flag
    flag = TriggerEvent
    textValue22 = "IsInCayoPerico"
    flag2 = false
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "IsInCayoPerico".
    flag(textValue22, flag2)
    flag = TriggerServerEvent
    textValue22 = "IsInCayoPerico"
    flag2 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "IsInCayoPerico".
    flag(textValue22, flag2)
  end
end
DisableCayoPerico = cmgCall
cmgCall = Citizen
cmgCall = cmgCall.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue43; parameters: none) ===
function textValue43()
  local arg1, flag, textValue22, flag2, flag3, numberValue, numberValue2, workValue3
  arg1 = CMG
  arg1 = arg1.createArea
  flag = "cayo_island"
  textValue22 = vector3
  flag2 = 5218.9399414062
  flag3 = -5393.2563476562
  numberValue = 67.318588256836
  textValue22 = textValue22(flag2, flag3, numberValue)
  flag2 = 2142.0
  flag3 = 1400.0

  -- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
  function numberValue()
    local workValue, workValue2
    workValue = TogglePerico
    workValue()
  end

  -- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
  function numberValue2()
    local workValue, workValue2
    workValue = TogglePerico
    workValue()
  end

  -- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
  function workValue3()
    local workValue, workValue2
  end
  -- Beginner: Create an interaction area around a world position.
  arg1(flag, textValue22, flag2, flag3, numberValue, numberValue2, workValue3)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall(textValue43)
cmgCall = RegisterNetEvent
textValue43 = "EnableCayoPerico"
-- Beginner: this function handles network event "EnableCayoPerico".

-- === HELPER FUNCTION (decompiler name: textValue46; parameters: none) ===
function textValue46()
  local arg1, flag
  arg1 = EnableCayoPerico
  flag = true
  arg1(flag)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "EnableCayoPerico".
cmgCall(textValue43, textValue46)
cmgCall = RegisterNetEvent
textValue43 = "DisableCayoPerico"
-- Beginner: this function handles network event "DisableCayoPerico".

-- === HELPER FUNCTION (decompiler name: textValue46; parameters: none) ===
function textValue46()
  local arg1, flag
  arg1 = DisableCayoPerico
  flag = true
  arg1(flag)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "DisableCayoPerico".
cmgCall(textValue43, textValue46)
cmgCall = false
textValue43 = false
textValue46 = Citizen
textValue46 = textValue46.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue47; parameters: none) ===
function textValue47()
  local arg1, flag, textValue22, flag2, flag3
  while true do
    arg1 = GetEntityCoords
    flag = PlayerPedId
    flag, textValue22, flag2, flag3 = flag()
    -- Beginner: result below is entityCoords.
    arg1 = arg1(flag, textValue22, flag2, flag3)
    flag = vector3
    textValue22 = 4858.0
    flag2 = -5171.0
    flag3 = 2.0
    flag = flag(textValue22, flag2, flag3)
    arg1 = arg1 - flag
    arg1 = #arg1
    flag = 2200.0
    arg1 = arg1 < flag
    flag = cmgCall
    if flag ~= arg1 then
      cmgCall = arg1
      textValue43 = arg1
      flag = SetToggleMinimapHeistIsland
      textValue22 = cmgCall
      flag(textValue22)
    end
    flag = Wait
    textValue22 = 5000
    flag(textValue22)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue46(textValue47)
textValue46 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: textValue47; parameters: none) ===
function textValue47()
  local arg1, flag, textValue22, flag2, flag3, numberValue, numberValue2
  while true do
    arg1 = 500
    flag = IsPauseMenuActive
    flag = flag()
    if flag then
      flag = IsMinimapInInterior
      flag = flag()
      if not flag then
        flag = textValue43
        if flag then
          flag = false
          textValue43 = flag
          flag = SetToggleMinimapHeistIsland
          textValue22 = false
          flag(textValue22)
        end
        flag = SetRadarAsExteriorThisFrame
        flag()
        flag = SetRadarAsInteriorThisFrame
        textValue22 = -1062664944
        flag2 = 4700.0
        flag3 = -5145.0
        numberValue = 0
        numberValue2 = 0
        flag(textValue22, flag2, flag3, numberValue, numberValue2)
        arg1 = 0
    end
    else
      flag = textValue43
      if not flag then
        flag = cmgCall
        if flag then
          flag = true
          textValue43 = flag
          flag = SetToggleMinimapHeistIsland
          textValue22 = true
          flag(textValue22)
        end
      end
    end
    flag = Wait
    textValue22 = arg1
    flag(textValue22)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue46(textValue47)
textValue46 = Citizen
textValue46 = textValue46.InvokeNative
textValue47 = 3604191389194645194
flag4 = false
textValue46(textValue47, flag4)
