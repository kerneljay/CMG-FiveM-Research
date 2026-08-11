--[[
    LEVEL 1 BEGINNER GUIDE — Scenemenu
    =======================================

    File: cmg/prod/client/police/cl_scenemenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Scenemenu feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 74
      * Background threads: 0
      * Always-running loops: 3
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
local workValue, textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15
workValue = RMenu
workValue = workValue.Add
textValue10 = "cmgscenemenu"
textValue11 = "main"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue16 = ""
cmgCall2 = "~b~CMG Traffic Scene Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_jobselectorui"
textValue19 = "metpd"
rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15 = rageUiCall2(textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19)
workValue(textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15)
workValue = RMenu
workValue = workValue.Add
textValue10 = "cmgscenemenu"
textValue11 = "objects"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue16 = RMenu
cmgCall2 = textValue16
textValue16 = textValue16.Get
rageUiCall3 = "cmgscenemenu"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue16 = textValue16(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "~b~Spawn Objects"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue19 = "cmg_jobselectorui"
textValue = "metpd"
rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15 = rageUiCall2(textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue)
workValue(textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15)
workValue = RMenu
workValue = workValue.Add
textValue10 = "cmgscenemenu"
textValue11 = "speedZone"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue16 = RMenu
cmgCall2 = textValue16
textValue16 = textValue16.Get
rageUiCall3 = "cmgscenemenu"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue16 = textValue16(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "~b~Set a speed zone"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue19 = "cmg_jobselectorui"
textValue = "metpd"
rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15 = rageUiCall2(textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue)
workValue(textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15)
workValue = RMenu
workValue = workValue.Add
textValue10 = "cmgscenemenu"
textValue11 = "scenecontainment"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue16 = RMenu
cmgCall2 = textValue16
textValue16 = textValue16.Get
rageUiCall3 = "cmgscenemenu"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue16 = textValue16(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "~b~Scene Containment"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue19 = "cmg_jobselectorui"
textValue = "metpd"
rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15 = rageUiCall2(textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue)
workValue(textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15)
workValue = RMenu
workValue = workValue.Add
textValue10 = "cmgscenemenu"
textValue11 = "newscenecontainement"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue16 = RMenu
cmgCall2 = textValue16
textValue16 = textValue16.Get
rageUiCall3 = "cmgscenemenu"
rageUiCall4 = "scenecontainment"
-- Beginner: result below is menu.
textValue16 = textValue16(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "~b~New Scene Containment"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue19 = "cmg_jobselectorui"
textValue = "metpd"
rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15 = rageUiCall2(textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue)
workValue(textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15)
workValue = RMenu
workValue = workValue.Add
textValue10 = "cmgscenemenu"
textValue11 = "pendingscenecontainments"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue16 = RMenu
cmgCall2 = textValue16
textValue16 = textValue16.Get
rageUiCall3 = "cmgscenemenu"
rageUiCall4 = "scenecontainment"
-- Beginner: result below is menu.
textValue16 = textValue16(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "~b~Pending Scene Containment"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue19 = "cmg_jobselectorui"
textValue = "metpd"
rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15 = rageUiCall2(textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue)
workValue(textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15)
workValue = RMenu
workValue = workValue.Add
textValue10 = "cmgscenemenu"
textValue11 = "spikes"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue16 = RMenu
cmgCall2 = textValue16
textValue16 = textValue16.Get
rageUiCall3 = "cmgscenemenu"
rageUiCall4 = "main"
-- Beginner: result below is menu.
textValue16 = textValue16(cmgCall2, rageUiCall3, rageUiCall4)
cmgCall2 = ""
rageUiCall3 = "~b~Set a spike trap"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue19 = "cmg_jobselectorui"
textValue = "metpd"
rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15 = rageUiCall2(textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue)
workValue(textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15)
workValue = RMenu
workValue = workValue.Add
textValue10 = "cmgscenemenu"
textValue11 = "vigilantespikes"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue16 = ""
cmgCall2 = "~b~Spike Strips"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_jobselectorui"
textValue19 = "jobcentre"
rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15 = rageUiCall2(textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19)
workValue(textValue10, textValue11, rageUiCall2, textValue16, cmgCall2, rageUiCall3, rageUiCall4, rageUiCall5, textValue19, textValue, textValue2, textValue5, textValue6, textValue7, flag5, textValue8, textValue9, flag12, flag14, flag16, flag18, flag19, flag21, flag22, flag23, flag24, rageUiCall, flag25, flag26, workValue13, textValue13, textValue14, workValue14, eventRegistration, textValue15, workValue15)
workValue = {}
textValue10 = {}
textValue10.object = 1
textValue10.speedRad = 1
textValue10.speed = 1
textValue10.amount = 1
textValue10.seperation = 1
textValue10.degrees = 1
textValue11 = {}
textValue10.previewObjects = textValue11
textValue11 = {}
rageUiCall2 = 0

-- === HELPER FUNCTION (decompiler name: textValue16; parameters: none) ===
function textValue16()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "borderforce.onduty.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.hasClientGroup
      arg2 = "Vigilante"
      arg1 = arg1(arg2)
      if arg1 then
        arg1 = CMG
        arg1 = arg1.hasClientSkill
        arg2 = "vigilante_spike_strips_1"
        arg1 = arg1(arg2)
      end
    end
  end
  return arg1
end
cmgCall2 = TriggerEvent
rageUiCall3 = "chat:addSuggestion"
rageUiCall4 = "/trafficmenu"
rageUiCall5 = "Open the traffic scene menu"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgCall2(rageUiCall3, rageUiCall4, rageUiCall5)
cmgCall2 = {}
rageUiCall3 = "0"
rageUiCall4 = "25"
rageUiCall5 = "50"
textValue19 = "75"
textValue = "100"
textValue2 = "125"
textValue5 = "150"
textValue6 = "175"
textValue7 = "200"
cmgCall2[1] = rageUiCall3
cmgCall2[2] = rageUiCall4
cmgCall2[3] = rageUiCall5
cmgCall2[4] = textValue19
cmgCall2[5] = textValue
cmgCall2[6] = textValue2
cmgCall2[7] = textValue5
cmgCall2[8] = textValue6
cmgCall2[9] = textValue7
rageUiCall3 = {}
rageUiCall4 = "0"
rageUiCall5 = "5"
textValue19 = "10"
textValue = "15"
textValue2 = "20"
textValue5 = "25"
textValue6 = "30"
textValue7 = "35"
flag5 = "40"
textValue8 = "45"
textValue9 = "50"
rageUiCall3[1] = rageUiCall4
rageUiCall3[2] = rageUiCall5
rageUiCall3[3] = textValue19
rageUiCall3[4] = textValue
rageUiCall3[5] = textValue2
rageUiCall3[6] = textValue5
rageUiCall3[7] = textValue6
rageUiCall3[8] = textValue7
rageUiCall3[9] = flag5
rageUiCall3[10] = textValue8
rageUiCall3[11] = textValue9
rageUiCall4 = {}
rageUiCall5 = 1
textValue19 = 2
textValue = 3
textValue2 = 4
textValue5 = 5
rageUiCall4[1] = rageUiCall5
rageUiCall4[2] = textValue19
rageUiCall4[3] = textValue
rageUiCall4[4] = textValue2
rageUiCall4[5] = textValue5
rageUiCall5 = {}
textValue19 = 3
textValue = 6
textValue2 = 9
textValue5 = 12
textValue6 = 15
rageUiCall5[1] = textValue19
rageUiCall5[2] = textValue
rageUiCall5[3] = textValue2
rageUiCall5[4] = textValue5
rageUiCall5[5] = textValue6
textValue19 = {}
textValue = 0
textValue2 = 45
textValue5 = 90
textValue6 = 135
textValue7 = 190
flag5 = 235
textValue8 = 270
textValue9 = 315
textValue19[1] = textValue
textValue19[2] = textValue2
textValue19[3] = textValue5
textValue19[4] = textValue6
textValue19[5] = textValue7
textValue19[6] = flag5
textValue19[7] = textValue8
textValue19[8] = textValue9
textValue = {}
textValue2 = {}
textValue5 = {}
textValue6 = "Police Slow"
textValue7 = "prop_barrier_slow"
flag5 = true
textValue8 = 0.05
textValue5[1] = textValue6
textValue5[2] = textValue7
textValue5[3] = flag5
textValue5[4] = textValue8
textValue6 = {}
textValue7 = "Police No Entry"
flag5 = "prop_barrier_noentry"
textValue8 = true
textValue9 = 0.05
textValue6[1] = textValue7
textValue6[2] = flag5
textValue6[3] = textValue8
textValue6[4] = textValue9
textValue7 = {}
flag5 = "Incident Ahead"
textValue8 = "prop_barrier_incident"
textValue9 = true
flag12 = 0.05
textValue7[1] = flag5
textValue7[2] = textValue8
textValue7[3] = textValue9
textValue7[4] = flag12
flag5 = {}
textValue8 = "Police Checkpoint"
textValue9 = "prop_barrier_checkpoint"
flag12 = true
flag14 = 0.05
flag5[1] = textValue8
flag5[2] = textValue9
flag5[3] = flag12
flag5[4] = flag14
textValue8 = {}
textValue9 = "Police Collision"
flag12 = "prop_barrier_collision"
flag14 = true
flag16 = 0.05
textValue8[1] = textValue9
textValue8[2] = flag12
textValue8[3] = flag14
textValue8[4] = flag16
textValue9 = {}
flag12 = "Diagonal Left"
flag14 = "prop_barrier_diagonalleft"
flag16 = true
flag18 = 0.05
textValue9[1] = flag12
textValue9[2] = flag14
textValue9[3] = flag16
textValue9[4] = flag18
flag12 = {}
flag14 = "Diagonal Right"
flag16 = "prop_barrier_diagonalright"
flag18 = true
flag19 = 0.05
flag12[1] = flag14
flag12[2] = flag16
flag12[3] = flag18
flag12[4] = flag19
flag14 = {}
flag16 = "Big Cone"
flag18 = "prop_roadcone01a"
flag19 = true
flag14[1] = flag16
flag14[2] = flag18
flag14[3] = flag19
flag16 = {}
flag18 = "Gazebo"
flag19 = "prop_gazebo_02"
flag21 = true
flag16[1] = flag18
flag16[2] = flag19
flag16[3] = flag21
flag18 = {}
flag19 = "Worklight"
flag21 = "prop_worklight_03b"
flag22 = true
flag18[1] = flag19
flag18[2] = flag21
flag18[3] = flag22
flag19 = {}
flag21 = "Gate Barrier"
flag22 = "ba_prop_battle_barrier_02a"
flag23 = true
flag19[1] = flag21
flag19[2] = flag22
flag19[3] = flag23
flag21 = {}
flag22 = "Gazebo"
flag23 = "prop_gazebo_02"
flag24 = true
flag21[1] = flag22
flag21[2] = flag23
flag21[3] = flag24
flag22 = {}
flag23 = "Fence Transparent"
flag24 = "prop_fncsec_03b"
rageUiCall = true
flag25 = -0.45
flag22[1] = flag23
flag22[2] = flag24
flag22[3] = rageUiCall
flag22[4] = flag25
flag23 = {}
flag24 = "Fence Hidden"
rageUiCall = "prop_fncsec_03d"
flag25 = true
flag23[1] = flag24
flag23[2] = rageUiCall
flag23[3] = flag25
flag24 = {}
rageUiCall = "Plastic Fence"
flag25 = "prop_barrier_work06a"
flag26 = true
flag24[1] = rageUiCall
flag24[2] = flag25
flag24[3] = flag26
textValue2[1] = textValue5
textValue2[2] = textValue6
textValue2[3] = textValue7
textValue2[4] = flag5
textValue2[5] = textValue8
textValue2[6] = textValue9
textValue2[7] = flag12
textValue2[8] = flag14
textValue2[9] = flag16
textValue2[10] = flag18
textValue2[11] = flag19
textValue2[12] = flag21
textValue2[13] = flag22
textValue2[14] = flag23
textValue2[15] = flag24
textValue5 = {}
textValue6 = {}
textValue6.bone = "wheel_lf"
textValue6.index = 0
textValue7 = {}
textValue7.bone = "wheel_rf"
textValue7.index = 1
flag5 = {}
flag5.bone = "wheel_lm"
flag5.index = 2
textValue8 = {}
textValue8.bone = "wheel_rm"
textValue8.index = 3
textValue9 = {}
textValue9.bone = "wheel_lr"
textValue9.index = 4
flag12 = {}
flag12.bone = "wheel_rr"
flag12.index = 5
textValue5[1] = textValue6
textValue5[2] = textValue7
textValue5[3] = flag5
textValue5[4] = textValue8
textValue5[5] = textValue9
textValue5[6] = flag12
textValue6 = {}
textValue7 = pairs
flag5 = textValue2
textValue7, flag5, textValue8, textValue9 = textValue7(flag5)
for flag12, flag14 in textValue7, flag5, textValue8, textValue9 do
  flag16 = flag14[1]
  textValue6[flag12] = flag16
end
textValue7 = nil
flag5 = nil
textValue8 = ""
textValue9 = {}
flag12 = {}

-- === HELPER FUNCTION (decompiler name: flag14; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function flag14(arg1, arg2, arg3, arg4, arg5, arg6)
  local cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15, flag17
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall3 = cmgCall3()
  heading = GetEntityHeading
  coords = cmgCall3
  -- Beginner: result below is heading.
  heading = heading(coords)
  coords = GetEntityCoords
  playerPed2 = PlayerPedId
  playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15, flag17 = playerPed2()
  -- Beginner: result below is entityCoords.
  coords = coords(playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15, flag17)
  playerPed2 = GetEntityForwardVector
  playerPed = PlayerPedId
  playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15, flag17 = playerPed()
  playerPed2 = playerPed2(playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15, flag17)
  textValue3 = textValue10.seperation
  playerPed = rageUiCall5
  playerPed = playerPed[textValue3]
  textValue3 = arg6 - 1
  playerPed = playerPed * textValue3
  playerPed = 3.0 + playerPed
  playerPed2 = playerPed2 * playerPed
  coords = coords + playerPed2
  playerPed2 = CMG
  playerPed2 = playerPed2.loadModel
  playerPed = arg1
  playerPed2 = playerPed2(playerPed)
  if not playerPed2 then
    return
  end
  if arg5 then
    playerPed = CMG
    playerPed = playerPed.requestEntitySpawn
    textValue3 = "scenemenu_object"
    workValue4 = playerPed2
    flag2 = coords
    playerPed(textValue3, workValue4, flag2)
  end
  playerPed = CreateObject
  textValue3 = playerPed2
  workValue4 = coords.x
  flag2 = coords.y
  workValue7 = coords.z
  workValue9 = arg5
  flag8 = false
  flag10 = false
  -- Beginner: result below is objectEntity.
  playerPed = playerPed(textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10)
  if arg2 then
    textValue3 = FreezeEntityPosition
    workValue4 = playerPed
    flag2 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    textValue3(workValue4, flag2)
  end
  textValue3 = PlaceObjectOnGroundProperly
  workValue4 = playerPed
  textValue3(workValue4)
  if arg3 then
    textValue3 = GetEntityCoords
    workValue4 = playerPed
    flag2 = true
    -- Beginner: result below is entityCoords.
    textValue3 = textValue3(workValue4, flag2)
    workValue4 = SetEntityCoords
    flag2 = playerPed
    workValue7 = textValue3.x
    workValue9 = textValue3.y
    flag8 = textValue3.z
    flag8 = flag8 + arg3
    flag10 = true
    flag13 = true
    flag15 = true
    flag17 = true
    -- Beginner: Move/teleport an entity to new coordinates.
    workValue4(flag2, workValue7, workValue9, flag8, flag10, flag13, flag15, flag17)
  end
  textValue3 = SetEntityHeading
  workValue4 = playerPed
  workValue7 = textValue10.degrees
  flag2 = textValue19
  flag2 = flag2[workValue7]
  flag2 = heading + flag2
  -- Beginner: Change the direction an entity is facing.
  textValue3(workValue4, flag2)
  if arg4 then
    textValue3 = SetEntityAlpha
    workValue4 = playerPed
    flag2 = arg4
    workValue7 = false
    textValue3(workValue4, flag2, workValue7)
  end
  textValue3 = SetModelAsNoLongerNeeded
  workValue4 = playerPed2
  textValue3(workValue4)
  textValue3 = table
  textValue3 = textValue3.insert
  workValue4 = workValue
  flag2 = {}
  flag2.entity = playerPed
  flag2.modelHash = playerPed2
  if arg5 then
    workValue7 = NetworkGetNetworkIdFromEntity
    workValue9 = playerPed
    workValue7 = workValue7(workValue9)
    if workValue7 then
      goto flow_label_112
    end
  end
  workValue7 = 0
  ::flow_label_112::
  flag2.entityNetId = workValue7
  textValue3(workValue4, flag2)
  return playerPed
end

-- === HELPER FUNCTION (decompiler name: flag16; parameters: none) ===
function flag16()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3, heading
  arg1 = pairs
  arg2 = textValue10.previewObjects
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    cmgCall3 = DeleteEntity
    heading = arg6
    -- Beginner: Delete a GTA entity.
    cmgCall3(heading)
  end
  arg1 = {}
  textValue10.previewObjects = arg1
end

-- === HELPER FUNCTION (decompiler name: flag18; parameters: none) ===
function flag18()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4
  arg1 = flag16
  arg1()
  arg2 = textValue10.object
  arg1 = textValue2
  arg1 = arg1[arg2]
  arg3 = textValue10.amount
  arg2 = rageUiCall4
  arg2 = arg2[arg3]
  arg3 = 1
  arg4 = arg2
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    cmgCall3 = flag14
    heading = arg1[2]
    coords = arg1[3]
    playerPed2 = arg1[4]
    playerPed = 155
    textValue3 = false
    workValue4 = arg6
    cmgCall3 = cmgCall3(heading, coords, playerPed2, playerPed, textValue3, workValue4)
    heading = table
    heading = heading.insert
    coords = textValue10.previewObjects
    playerPed2 = cmgCall3
    heading(coords, playerPed2)
  end
end

-- === HELPER FUNCTION (decompiler name: flag19; parameters: none) ===
function flag19()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15
  arg1 = pairs
  arg2 = textValue2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    cmgCall3 = arg6[2]
    heading = GetHashKey
    coords = cmgCall3
    -- Beginner: result below is hash.
    heading = heading(coords)
    coords = table
    coords = coords.unpack
    playerPed2 = GetEntityCoords
    playerPed = CMG
    playerPed = playerPed.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    textValue3 = true
    playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15 = playerPed2(playerPed, textValue3)
    coords, playerPed2, playerPed = coords(playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15)
    textValue3 = DoesObjectOfTypeExistAtCoords
    workValue4 = coords
    flag2 = playerPed2
    workValue7 = playerPed
    workValue9 = 0.9
    flag8 = heading
    flag10 = true
    textValue3 = textValue3(workValue4, flag2, workValue7, workValue9, flag8, flag10)
    if textValue3 then
      textValue3 = GetClosestObjectOfType
      workValue4 = coords
      flag2 = playerPed2
      workValue7 = playerPed
      workValue9 = 0.9
      flag8 = heading
      flag10 = false
      flag13 = false
      flag15 = false
      -- Beginner: result below is objectEntity.
      textValue3 = textValue3(workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15)
      workValue4 = NetworkGetEntityIsNetworked
      flag2 = textValue3
      workValue4 = workValue4(flag2)
      if workValue4 then
        workValue4 = NetworkHasControlOfEntity
        flag2 = textValue3
        workValue4 = workValue4(flag2)
        if not workValue4 then
          workValue4 = CMG
          workValue4 = workValue4.getNetId
          flag2 = textValue3
          workValue7 = "deleteObject()"
          workValue4 = workValue4(flag2, workValue7)
          if 0 ~= workValue4 then
            flag2 = TriggerServerEvent
            workValue7 = "26e2cfab1c"
            workValue9 = workValue4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26e2cfab1c".
            flag2(workValue7, workValue9)
          end
      end
      else
        workValue4 = DeleteObject
        flag2 = textValue3
        workValue4(flag2)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: flag21; parameters: none) ===
function flag21()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local iterator, workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue
    iterator = pairs
    workValue11 = workValue
    iterator, workValue11, textValue12, flag27 = iterator(workValue11)
    for textValue17, workValue16 in iterator, workValue11, textValue12, flag27 do
      workValue17 = DoesEntityExist
      modelHash = workValue16.entity
      workValue17 = workValue17(modelHash)
      if not workValue17 then
        workValue17 = workValue16.entityNetId
        if 0 ~= workValue17 then
          workValue17 = NetworkGetEntityFromNetworkId
          modelHash = workValue16.entityNetId
          workValue17 = workValue17(modelHash)
          if 0 ~= workValue17 then
            modelHash = GetEntityModel
            modelValue = workValue17
            -- Beginner: result below is modelHash.
            modelHash = modelHash(modelValue)
            modelValue = workValue16.modelHash
            if modelHash == modelValue then
              workValue16.entity = workValue17
            end
          end
        end
      end
      workValue17 = DoesEntityExist
      modelHash = workValue16.entity
      workValue17 = workValue17(modelHash)
      if workValue17 then
        workValue17 = workValue16.entityNetId
        if 0 ~= workValue17 then
          workValue17 = NetworkGetEntityIsNetworked
          modelHash = workValue16.entity
          workValue17 = workValue17(modelHash)
          if workValue17 then
            workValue17 = TriggerServerEvent
            modelHash = "26e2cfab1c"
            modelValue = workValue16.entityNetId
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26e2cfab1c".
            workValue17(modelHash, modelValue)
        end
        else
          workValue17 = DeleteEntity
          modelHash = workValue16.entity
          -- Beginner: Delete a GTA entity.
          workValue17(modelHash)
        end
      end
    end
    iterator = {}
    workValue = iterator
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: flag22; parameters: arg1) ===
function flag22(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13
  arg2 = {}
  arg2.id = ""
  arg2.name = arg1
  arg3 = vector3
  arg4 = 0.0
  arg5 = 0.0
  arg6 = 0.0
  arg3 = arg3(arg4, arg5, arg6)
  arg2.position = arg3
  arg3 = {}
  arg2.objects = arg3
  arg3 = vector3
  arg4 = 0.0
  arg5 = 0.0
  arg6 = 0.0
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = pairs
  arg5 = workValue
  arg4, arg5, arg6, cmgCall3 = arg4(arg5)
  for heading, coords in arg4, arg5, arg6, cmgCall3 do
    playerPed2 = DoesEntityExist
    playerPed = coords.entity
    playerPed2 = playerPed2(playerPed)
    if playerPed2 then
      playerPed2 = GetEntityModel
      playerPed = coords.entity
      -- Beginner: result below is modelHash.
      playerPed2 = playerPed2(playerPed)
      playerPed = nil
      textValue3 = pairs
      workValue4 = textValue2
      textValue3, workValue4, flag2, workValue7 = textValue3(workValue4)
      for workValue9, flag8 in textValue3, workValue4, flag2, workValue7 do
        flag10 = GetHashKey
        flag13 = flag8[2]
        -- Beginner: result below is hash.
        flag10 = flag10(flag13)
        if flag10 == playerPed2 then
          playerPed = flag8[1]
          break
        end
      end
      if playerPed then
        textValue3 = GetEntityCoords
        workValue4 = coords.entity
        flag2 = true
        -- Beginner: result below is entityCoords.
        textValue3 = textValue3(workValue4, flag2)
        workValue4 = table
        workValue4 = workValue4.insert
        flag2 = arg2.objects
        workValue7 = {}
        workValue7.name = playerPed
        workValue7.position = textValue3
        workValue9 = GetEntityRotation
        flag8 = coords.entity
        flag10 = 2
        workValue9 = workValue9(flag8, flag10)
        workValue7.rotation = workValue9
        workValue4(flag2, workValue7)
        arg3 = arg3 + textValue3
      end
    end
  end
  arg4 = arg2.objects
  arg4 = #arg4
  arg4 = arg3 / arg4
  arg2.position = arg4
  arg4 = TriggerServerEvent
  arg5 = "0beb8c8e6b"
  arg6 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0beb8c8e6b".
  arg4(arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: flag23; parameters: arg1, arg2, arg3, arg4) ===
function flag23(arg1, arg2, arg3, arg4)
  local arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15
  arg5 = CMG
  arg5 = arg5.loadModel
  arg6 = -874338148
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg5(arg6)
  arg5 = CMG
  arg5 = arg5.loadAnimDict
  arg6 = "p_ld_stinger_s"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg5(arg6)
  arg5 = 0
  arg6 = 3
  cmgCall3 = 1
  for heading = arg5, arg6, cmgCall3 do
    coords = heading * 3.5
    coords = arg3 * coords
    coords = arg1 + coords
    playerPed2 = CreateObject
    playerPed = -874338148
    textValue3 = coords.x
    workValue4 = coords.y
    flag2 = coords.z
    workValue7 = false
    workValue9 = false
    flag8 = false
    -- Beginner: result below is objectEntity.
    playerPed2 = playerPed2(playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8)
    playerPed = SetEntityHeading
    textValue3 = playerPed2
    workValue4 = arg2
    -- Beginner: Change the direction an entity is facing.
    playerPed(textValue3, workValue4)
    playerPed = FreezeEntityPosition
    textValue3 = playerPed2
    workValue4 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    playerPed(textValue3, workValue4)
    playerPed = PlaceObjectOnGroundProperly
    textValue3 = playerPed2
    playerPed(textValue3)
    playerPed = SetEntityCollision
    textValue3 = playerPed2
    workValue4 = false
    flag2 = false
    playerPed(textValue3, workValue4, flag2)
    if not arg4 then
      playerPed = SetEntityVisible
      textValue3 = playerPed2
      workValue4 = false
      flag2 = false
      playerPed(textValue3, workValue4, flag2)
      playerPed = PlayEntityAnim
      textValue3 = playerPed2
      workValue4 = "P_Stinger_S_Deploy"
      flag2 = "p_ld_stinger_s"
      workValue7 = 1000.0
      workValue9 = false
      flag8 = true
      flag10 = false
      flag13 = 0.0
      flag15 = 0
      playerPed(textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15)
      playerPed = textValue11
      playerPed[playerPed2] = coords
      playerPed = SetTimeout
      textValue3 = 90000

      -- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
      function workValue4()
        local iterator, workValue11, textValue12, flag27
        workValue11 = playerPed2
        iterator = textValue11
        iterator = iterator[workValue11]
        if iterator then
          workValue11 = playerPed2
          iterator = textValue11
          iterator = iterator[workValue11]
          workValue11 = DeleteEntity
          textValue12 = playerPed2
          -- Beginner: Delete a GTA entity.
          workValue11(textValue12)
          textValue12 = playerPed2
          workValue11 = textValue11
          workValue11[textValue12] = nil
          workValue11 = TriggerServerEvent
          textValue12 = "21ef28a0d0"
          flag27 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21ef28a0d0".
          workValue11(textValue12, flag27)
        end
      end
      playerPed(textValue3, workValue4)
      while true do
        playerPed = IsEntityPlayingAnim
        textValue3 = playerPed2
        workValue4 = "p_ld_stinger_s"
        flag2 = "P_Stinger_S_Deploy"
        workValue7 = 3
        playerPed = playerPed(textValue3, workValue4, flag2, workValue7)
        if playerPed then
          break
        end
        playerPed = Citizen
        playerPed = playerPed.Wait
        textValue3 = 0
        playerPed(textValue3)
      end
      playerPed = SetEntityVisible
      textValue3 = playerPed2
      workValue4 = true
      flag2 = true
      playerPed(textValue3, workValue4, flag2)
      while true do
        playerPed = IsEntityPlayingAnim
        textValue3 = playerPed2
        workValue4 = "p_ld_stinger_s"
        flag2 = "P_Stinger_S_Deploy"
        workValue7 = 3
        playerPed = playerPed(textValue3, workValue4, flag2, workValue7)
        if not playerPed then
          break
        end
        playerPed = GetEntityAnimCurrentTime
        textValue3 = playerPed2
        workValue4 = "p_ld_stinger_s"
        flag2 = "P_Stinger_S_Deploy"
        playerPed = playerPed(textValue3, workValue4, flag2)
        textValue3 = 0.75
        if not (playerPed <= textValue3) then
          break
        end
        playerPed = SetEntityAnimSpeed
        textValue3 = playerPed2
        workValue4 = "p_ld_stinger_s"
        flag2 = "P_Stinger_S_Deploy"
        workValue7 = 3.0
        playerPed(textValue3, workValue4, flag2, workValue7)
        playerPed = Citizen
        playerPed = playerPed.Wait
        textValue3 = 0
        playerPed(textValue3)
      end
      playerPed = PlayEntityAnim
      textValue3 = playerPed2
      workValue4 = "p_stinger_s_idle_deployed"
      flag2 = "p_ld_stinger_s"
      workValue7 = 1000.0
      workValue9 = false
      flag8 = true
      flag10 = false
      flag13 = 0.99
      flag15 = 0
      playerPed(textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15)
    else
      playerPed = SetEntityAlpha
      textValue3 = playerPed2
      workValue4 = 100
      flag2 = false
      playerPed(textValue3, workValue4, flag2)
      playerPed = SetTimeout
      textValue3 = 0

      -- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
      function workValue4()
        local iterator, workValue11
        iterator = DeleteEntity
        workValue11 = playerPed2
        -- Beginner: Delete a GTA entity.
        iterator(workValue11)
      end
      playerPed(textValue3, workValue4)
    end
  end
  arg5 = SetModelAsNoLongerNeeded
  arg6 = -874338148
  arg5(arg6)
  arg5 = RemoveAnimDict
  arg6 = "p_ld_stinger_s"
  arg5(arg6)
end

-- === HELPER FUNCTION (decompiler name: flag24; parameters: none) ===
function flag24()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = flag23
  arg3 = GetOffsetFromEntityInWorldCoords
  arg4 = arg1
  arg5 = -0.2
  arg6 = 2.0
  cmgCall3 = 0.0
  arg3 = arg3(arg4, arg5, arg6, cmgCall3)
  arg4 = GetEntityHeading
  arg5 = arg1
  -- Beginner: result below is heading.
  arg4 = arg4(arg5)
  arg5 = GetEntityForwardVector
  arg6 = arg1
  arg5 = arg5(arg6)
  arg6 = true
  arg2(arg3, arg4, arg5, arg6)
end
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
flag25 = 1.0
flag26 = RMenu
workValue13 = flag26
flag26 = flag26.Get
textValue13 = "cmgscenemenu"
textValue14 = "main"
-- Beginner: result below is menu.
flag26 = flag26(workValue13, textValue13, textValue14)
workValue13 = nil

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: none) ===
function textValue13()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3
  arg1 = CMG
  arg1 = arg1.inOrganHesit
  arg1 = arg1()
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.IsAnyMenuOfTypeVisible
    arg2 = "cmgscenemenu"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = RageUI
      arg1 = arg1.CloseAll
      arg1()
      return
    end
  end
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local iterator, workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Object Menu"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
    end
    workValue16 = RMenu
    workValue17 = workValue16
    workValue16 = workValue16.Get
    modelHash = "cmgscenemenu"
    modelValue = "objects"
    workValue16, workValue17, modelHash, modelValue = workValue16(workValue17, modelHash, modelValue)
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Speed Zone"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
    end
    workValue16 = RMenu
    workValue17 = workValue16
    workValue16 = workValue16.Get
    modelHash = "cmgscenemenu"
    modelValue = "speedZone"
    workValue16, workValue17, modelHash, modelValue = workValue16(workValue17, modelHash, modelValue)
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue)
    iterator = textValue16
    iterator = iterator()
    if iterator then
      iterator = RageUI
      iterator = iterator.Button
      workValue11 = "Spike Strip Menu"
      textValue12 = nil
      flag27 = true

      -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
      function textValue17(arg12, arg22, arg32)
      end
      workValue16 = RMenu
      workValue17 = workValue16
      workValue16 = workValue16.Get
      modelHash = "cmgscenemenu"
      modelValue = "spikes"
      workValue16, workValue17, modelHash, modelValue = workValue16(workValue17, modelHash, modelValue)
      -- Beginner: Draw a selectable RageUI menu button.
      iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue)
    end
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Scene Containment"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
    end
    workValue16 = RMenu
    workValue17 = workValue16
    workValue16 = workValue16.Get
    modelHash = "cmgscenemenu"
    modelValue = "scenecontainment"
    workValue16, workValue17, modelHash, modelValue = workValue16(workValue17, modelHash, modelValue)
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Close Menu"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42, cmgCall, flag28, serverEventCall, textValue18
      if arg32 then
        arg42 = RageUI
        arg42 = arg42.Visible
        cmgCall = RMenu
        flag28 = cmgCall
        cmgCall = cmgCall.Get
        serverEventCall = "cmgscenemenu"
        textValue18 = "main"
        -- Beginner: result below is menu.
        cmgCall = cmgCall(flag28, serverEventCall, textValue18)
        flag28 = false
        arg42(cmgCall, flag28)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17)
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local iterator, workValue11
  end
  arg1(arg2, arg3, arg4, arg5, arg6, cmgCall3)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "objects"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local iterator, workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue, playerPed3, workValue2, flag, workValue5, flag3, flag4, flag6, flag9, flag11
    iterator = RageUI
    iterator = iterator.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
    function workValue11()
      local arg12, arg22
      arg12 = flag16
      arg12()
    end
    iterator(workValue11)
    iterator = RageUI
    iterator = iterator.List
    workValue11 = "Spawn Object"
    textValue12 = textValue6
    flag27 = textValue10.object
    textValue17 = nil
    workValue16 = {}
    workValue17 = true

    -- === HELPER FUNCTION: modelHash(arg12, arg22, arg32, arg42) ===
    function modelHash(arg12, arg22, arg32, arg42)
      local cmgCall, flag28, serverEventCall, textValue18, numberValue2, workValue18, workValue3, textValue4, position, workValue6, workValue8, flag7, workValue10
      if arg32 then
        cmgCall = CMG
        cmgCall = cmgCall.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgCall = cmgCall()
        if 0 == cmgCall then
          cmgCall = flag16
          cmgCall()
          flag28 = textValue10.object
          cmgCall = textValue2
          cmgCall = cmgCall[flag28]
          serverEventCall = textValue10.amount
          flag28 = rageUiCall4
          flag28 = flag28[serverEventCall]
          serverEventCall = 1
          textValue18 = flag28
          numberValue2 = 1
          for workValue18 = serverEventCall, textValue18, numberValue2 do
            workValue3 = flag14
            textValue4 = cmgCall[2]
            position = cmgCall[3]
            workValue6 = cmgCall[4]
            workValue8 = nil
            flag7 = true
            workValue10 = workValue18
            workValue3(textValue4, position, workValue6, workValue8, flag7, workValue10)
          end
          serverEventCall = TriggerServerEvent
          textValue18 = "b5e4673fdb"
          numberValue2 = cmgCall[1]
          workValue18 = flag28
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b5e4673fdb".
          serverEventCall(textValue18, numberValue2, workValue18)
          serverEventCall = flag18
          serverEventCall()
        else
          cmgCall = notify
          flag28 = "~r~You can not use the traffic menu in a vehicle"
          -- Beginner: Show a notification to the player.
          cmgCall(flag28)
        end
      end
      if arg22 then
        cmgCall = textValue10.object
        if cmgCall ~= arg42 then
          textValue10.object = arg42
          cmgCall = flag18
          cmgCall()
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash)
    iterator = RageUI
    iterator = iterator.List
    workValue11 = "Number To Place"
    textValue12 = rageUiCall4
    flag27 = textValue10.amount
    textValue17 = ""
    workValue16 = {}
    workValue17 = true

    -- === HELPER FUNCTION: modelHash(arg12, arg22, arg32, arg42) ===
    function modelHash(arg12, arg22, arg32, arg42)
      local cmgCall
      if arg22 then
        cmgCall = textValue10.amount
        if cmgCall ~= arg42 then
          textValue10.amount = arg42
          cmgCall = flag18
          cmgCall()
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash)
    iterator = RageUI
    iterator = iterator.List
    workValue11 = "Seperation (m)"
    textValue12 = rageUiCall5
    flag27 = textValue10.seperation
    textValue17 = ""
    workValue16 = {}
    workValue17 = true

    -- === HELPER FUNCTION: modelHash(arg12, arg22, arg32, arg42) ===
    function modelHash(arg12, arg22, arg32, arg42)
      local cmgCall
      if arg22 then
        cmgCall = textValue10.seperation
        if cmgCall ~= arg42 then
          textValue10.seperation = arg42
          cmgCall = flag18
          cmgCall()
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash)
    iterator = RageUI
    iterator = iterator.List
    workValue11 = "Rotation (degrees)"
    textValue12 = textValue19
    flag27 = textValue10.degrees
    textValue17 = ""
    workValue16 = {}
    workValue17 = true

    -- === HELPER FUNCTION: modelHash(arg12, arg22, arg32, arg42) ===
    function modelHash(arg12, arg22, arg32, arg42)
      local cmgCall
      if arg22 then
        cmgCall = textValue10.degrees
        if cmgCall ~= arg42 then
          textValue10.degrees = arg42
          cmgCall = flag18
          cmgCall()
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Delete Object"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42
      if arg32 then
        arg42 = flag19
        arg42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Delete All Objects"
    textValue12 = "Deletes all objects you have placed"
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42
      if arg32 then
        arg42 = flag21
        arg42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17)
    workValue11 = textValue10.object
    iterator = textValue2
    iterator = iterator[workValue11]
    workValue11 = pairs
    textValue12 = textValue10.previewObjects
    workValue11, textValue12, flag27, textValue17 = workValue11(textValue12)
    for workValue16, workValue17 in workValue11, textValue12, flag27, textValue17 do
      modelHash = DoesEntityExist
      modelValue = workValue17
      modelHash = modelHash(modelValue)
      if modelHash then
        modelHash = GetEntityCoords
        modelValue = PlayerPedId
        modelValue, playerPed3, workValue2, flag, workValue5, flag3, flag4, flag6, flag9, flag11 = modelValue()
        -- Beginner: result below is entityCoords.
        modelHash = modelHash(modelValue, playerPed3, workValue2, flag, workValue5, flag3, flag4, flag6, flag9, flag11)
        modelValue = GetEntityForwardVector
        playerPed3 = PlayerPedId
        playerPed3, workValue2, flag, workValue5, flag3, flag4, flag6, flag9, flag11 = playerPed3()
        modelValue = modelValue(playerPed3, workValue2, flag, workValue5, flag3, flag4, flag6, flag9, flag11)
        workValue2 = textValue10.seperation
        playerPed3 = rageUiCall5
        playerPed3 = playerPed3[workValue2]
        workValue2 = workValue16 - 1
        playerPed3 = playerPed3 * workValue2
        playerPed3 = 3.0 + playerPed3
        modelValue = modelValue * playerPed3
        modelHash = modelHash + modelValue
        modelValue = iterator[4]
        if modelValue then
          modelValue = iterator[4]
          playerPed3 = SetEntityCoordsNoOffset
          workValue2 = workValue17
          flag = modelHash.x
          workValue5 = modelHash.y
          flag3 = modelHash.z
          flag4 = false
          flag6 = false
          flag9 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          playerPed3(workValue2, flag, workValue5, flag3, flag4, flag6, flag9)
          playerPed3 = PlaceObjectOnGroundProperly
          workValue2 = workValue17
          playerPed3(workValue2)
          playerPed3 = GetEntityCoords
          workValue2 = workValue17
          flag = true
          -- Beginner: result below is entityCoords.
          playerPed3 = playerPed3(workValue2, flag)
          workValue2 = SetEntityCoordsNoOffset
          flag = workValue17
          workValue5 = playerPed3.x
          flag3 = playerPed3.y
          flag4 = playerPed3.z
          flag4 = flag4 + modelValue
          flag6 = false
          flag9 = false
          flag11 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          workValue2(flag, workValue5, flag3, flag4, flag6, flag9, flag11)
        else
          modelValue = SetEntityCoordsNoOffset
          playerPed3 = workValue17
          workValue2 = modelHash.x
          flag = modelHash.y
          workValue5 = modelHash.z
          flag3 = false
          flag4 = false
          flag6 = false
          modelValue(playerPed3, workValue2, flag, workValue5, flag3, flag4, flag6)
          modelValue = PlaceObjectOnGroundProperly
          playerPed3 = workValue17
          modelValue(playerPed3)
        end
        modelValue = SetEntityNoCollisionEntity
        playerPed3 = workValue17
        workValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workValue2 = workValue2()
        flag = true
        modelValue(playerPed3, workValue2, flag)
        modelValue = SetEntityNoCollisionEntity
        playerPed3 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed3 = playerPed3()
        workValue2 = workValue17
        flag = true
        modelValue(playerPed3, workValue2, flag)
        modelValue = SetEntityHeading
        playerPed3 = workValue17
        workValue2 = GetEntityHeading
        flag = PlayerPedId
        flag, workValue5, flag3, flag4, flag6, flag9, flag11 = flag()
        -- Beginner: result below is heading.
        workValue2 = workValue2(flag, workValue5, flag3, flag4, flag6, flag9, flag11)
        workValue5 = textValue10.degrees
        flag = textValue19
        flag = flag[workValue5]
        workValue2 = workValue2 + flag
        -- Beginner: Change the direction an entity is facing.
        modelValue(playerPed3, workValue2)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local iterator, workValue11
  end
  arg1(arg2, arg3, arg4, arg5, arg6, cmgCall3)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "speedZone"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local iterator, workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash
    iterator = RageUI
    iterator = iterator.List
    workValue11 = "Radius"
    textValue12 = cmgCall2
    flag27 = textValue10.speedRad
    textValue17 = nil
    workValue16 = {}
    workValue17 = true

    -- === HELPER FUNCTION: modelHash(arg12, arg22, arg32, arg42) ===
    function modelHash(arg12, arg22, arg32, arg42)
      local cmgCall, flag28
      if arg22 then
        textValue10.speedRad = arg42
        cmgCall = tonumber
        flag28 = cmgCall2
        flag28 = flag28[arg42]
        cmgCall = cmgCall(flag28)
        textValue7 = cmgCall
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash)
    iterator = RageUI
    iterator = iterator.List
    workValue11 = "Speed"
    textValue12 = rageUiCall3
    flag27 = textValue10.speed
    textValue17 = nil
    workValue16 = {}
    workValue17 = true

    -- === HELPER FUNCTION: modelHash(arg12, arg22, arg32, arg42) ===
    function modelHash(arg12, arg22, arg32, arg42)
      local cmgCall, flag28
      if arg22 then
        textValue10.speed = arg42
        cmgCall = tonumber
        flag28 = rageUiCall3
        flag28 = flag28[arg42]
        cmgCall = cmgCall(flag28)
        flag5 = cmgCall
      end
    end
    iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Create Speedzone"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42, cmgCall, flag28, serverEventCall, textValue18
      if arg32 then
        arg42 = textValue7
        if 0 == arg42 then
          arg42 = tCMG
          arg42 = arg42.notify
          cmgCall = "~r~Please set a radius"
          -- Beginner: Show a notification to the player.
          arg42(cmgCall)
        else
          arg42 = flag5
          if 0 == arg42 then
            arg42 = tCMG
            arg42 = arg42.notify
            cmgCall = "~r~Please set a speed"
            arg42(cmgCall)
          else
            arg42 = TriggerServerEvent
            cmgCall = "a472b07a4b"
            flag28 = CMG
            flag28 = flag28.getPlayerCoords
            -- Beginner: result below is playerCoords.
            flag28 = flag28()
            serverEventCall = flag5
            serverEventCall = serverEventCall + 0.0
            textValue18 = textValue7
            textValue18 = textValue18 + 0.0
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a472b07a4b".
            arg42(cmgCall, flag28, serverEventCall, textValue18)
            arg42 = tCMG
            arg42 = arg42.notify
            cmgCall = "~b~Speed zone created"
            -- Beginner: Show a notification to the player.
            arg42(cmgCall)
          end
        end
      end
    end
    workValue16 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Delete Speedzone"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42, cmgCall, flag28, serverEventCall, textValue18, numberValue2, workValue18, workValue3, textValue4, position, workValue6
      if arg32 then
        arg42 = CMG
        arg42 = arg42.getPlayerCoords
        -- Beginner: result below is playerCoords.
        arg42 = arg42()
        cmgCall = nil
        flag28 = 250.0
        serverEventCall = pairs
        textValue18 = textValue
        serverEventCall, textValue18, numberValue2, workValue18 = serverEventCall(textValue18)
        for workValue3, textValue4 in serverEventCall, textValue18, numberValue2, workValue18 do
          position = textValue4.position
          position = arg42 - position
          position = #position
          if flag28 > position then
            workValue6 = textValue4.radius
            if position < workValue6 then
              cmgCall = workValue3
              flag28 = position
            end
          end
        end
        if cmgCall then
          serverEventCall = TriggerServerEvent
          textValue18 = "a1ee24f902"
          numberValue2 = cmgCall
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a1ee24f902".
          serverEventCall(textValue18, numberValue2)
          serverEventCall = tCMG
          serverEventCall = serverEventCall.notify
          textValue18 = "~r~Speed zone removed"
          -- Beginner: Show a notification to the player.
          serverEventCall(textValue18)
        end
      end
    end
    workValue16 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16)
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local iterator, workValue11
  end
  arg1(arg2, arg3, arg4, arg5, arg6, cmgCall3)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "spikes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local iterator, workValue11, textValue12, flag27, textValue17
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Place Spike"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42, cmgCall, flag28, serverEventCall, textValue18, numberValue2, workValue18, workValue3, textValue4
      if arg22 then
        arg42 = flag24
        arg42()
      end
      if arg32 then
        arg42 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg42 = arg42()
        cmgCall = rageUiCall2
        arg42 = arg42 - cmgCall
        cmgCall = 20000
        if not (arg42 > cmgCall) then
          arg42 = CMG
          arg42 = arg42.isDevMode
          arg42 = arg42()
          if not arg42 then
            goto flow_label_44
          end
        end
        arg42 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg42 = arg42()
        cmgCall = GetOffsetFromEntityInWorldCoords
        flag28 = arg42
        serverEventCall = -0.2
        textValue18 = 2.0
        numberValue2 = 0.0
        cmgCall = cmgCall(flag28, serverEventCall, textValue18, numberValue2)
        flag28 = GetEntityHeading
        serverEventCall = arg42
        -- Beginner: result below is heading.
        flag28 = flag28(serverEventCall)
        serverEventCall = GetEntityForwardVector
        textValue18 = arg42
        serverEventCall = serverEventCall(textValue18)
        textValue18 = TriggerServerEvent
        numberValue2 = "280e848c4b"
        workValue18 = cmgCall
        workValue3 = flag28
        textValue4 = serverEventCall
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "280e848c4b".
        textValue18(numberValue2, workValue18, workValue3, textValue4)
        textValue18 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        textValue18 = textValue18()
        rageUiCall2 = textValue18
        goto flow_label_47
        ::flow_label_44::
        arg42 = notify
        cmgCall = "~r~You have created a spike strip recently. Please wait."
        -- Beginner: Show a notification to the player.
        arg42(cmgCall)
      end
      ::flow_label_47::
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Delete Spike"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42, cmgCall, flag28, serverEventCall, textValue18, numberValue2, workValue18, workValue3, textValue4, position
      if arg32 then
        arg42 = CMG
        arg42 = arg42.getPlayerCoords
        -- Beginner: result below is playerCoords.
        arg42 = arg42()
        cmgCall = pairs
        flag28 = textValue11
        cmgCall, flag28, serverEventCall, textValue18 = cmgCall(flag28)
        for numberValue2, workValue18 in cmgCall, flag28, serverEventCall, textValue18 do
          workValue3 = arg42 - workValue18
          workValue3 = #workValue3
          if workValue3 < 5.0 then
            workValue3 = TriggerServerEvent
            textValue4 = "21ef28a0d0"
            position = workValue18
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21ef28a0d0".
            workValue3(textValue4, position)
            break
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17)
  end
  arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "scenecontainment"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local iterator, workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue, playerPed3, workValue2, flag, workValue5, flag3
    iterator = CMG
    iterator = iterator.hasClientPermission
    workValue11 = "scenemenu.prefabs"
    iterator = iterator(workValue11)
    if iterator then
      iterator = RageUI
      iterator = iterator.Button
      workValue11 = "~g~Create New Area"
      textValue12 = "Creates a new area from all your currently placed objects"
      flag27 = workValue
      flag27 = #flag27
      flag27 = flag27 > 0

      -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
      function textValue17(arg12, arg22, arg32)
        local arg42
        if arg32 then
          arg42 = ""
          textValue8 = arg42
        end
      end
      workValue16 = RMenu
      workValue17 = workValue16
      workValue16 = workValue16.Get
      modelHash = "cmgscenemenu"
      modelValue = "newscenecontainement"
      workValue16, workValue17, modelHash, modelValue, playerPed3, workValue2, flag, workValue5, flag3 = workValue16(workValue17, modelHash, modelValue)
      -- Beginner: Draw a selectable RageUI menu button.
      iterator(workValue11, textValue12, flag27, textValue17, workValue16, workValue17, modelHash, modelValue, playerPed3, workValue2, flag, workValue5, flag3)
    end
    iterator = RageUI
    iterator = iterator.Separator
    workValue11 = "Nearby Area Templates"
    iterator(workValue11)
    iterator = textValue9
    workValue11 = CMG
    workValue11 = workValue11.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workValue11 = workValue11()
    textValue12 = pairs
    flag27 = iterator
    textValue12, flag27, textValue17, workValue16 = textValue12(flag27)
    for workValue17, modelHash in textValue12, flag27, textValue17, workValue16 do
      modelValue = modelHash.position
      modelValue = modelValue - workValue11
      modelValue = #modelValue
      modelHash.distance = modelValue
    end
    textValue12 = table
    textValue12 = textValue12.sort
    flag27 = iterator

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22) ===
    function textValue17(arg12, arg22)
      local arg32, arg42
      arg32 = arg12.distance
      arg42 = arg22.distance
      arg32 = arg32 < arg42
      return arg32
    end
    textValue12(flag27, textValue17)
    textValue12 = pairs
    flag27 = iterator
    textValue12, flag27, textValue17, workValue16 = textValue12(flag27)
    for workValue17, modelHash in textValue12, flag27, textValue17, workValue16 do
      modelValue = modelHash.distance
      playerPed3 = 200.0
      if modelValue > playerPed3 then
        break
      end
      modelValue = RageUI
      modelValue = modelValue.Button
      playerPed3 = modelHash.name
      workValue2 = string
      workValue2 = workValue2.format
      flag = [[
Distance: %sm

Pressing this will place down a template for 2 minutes.]]
      workValue5 = math
      workValue5 = workValue5.floor
      flag3 = modelHash.distance
      workValue5, flag3 = workValue5(flag3)
      workValue2 = workValue2(flag, workValue5, flag3)
      flag = true

      -- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg12, arg22, arg32) ===
      function workValue5(arg12, arg22, arg32)
        local arg42, cmgCall, flag28
        if arg32 then
          arg42 = CMG
          arg42 = arg42.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          arg42 = arg42()
          if 0 == arg42 then
            arg42 = TriggerServerEvent
            cmgCall = "6d8667b87e"
            flag28 = modelHash.id
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6d8667b87e".
            arg42(cmgCall, flag28)
          else
            arg42 = notify
            cmgCall = source
            flag28 = "~r~You must be outside of a vehicle to place down a template."
            -- Beginner: Show a notification to the player.
            arg42(cmgCall, flag28)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      modelValue(playerPed3, workValue2, flag, workValue5)
      modelValue = CMG
      modelValue = modelValue.hasClientPermission
      playerPed3 = "scenemenu.prefabs"
      modelValue = modelValue(playerPed3)
      if modelValue then
        modelValue = RageUI
        modelValue = modelValue.Button
        playerPed3 = "~r~Delete: "
        workValue2 = modelHash.name
        playerPed3 = playerPed3 .. workValue2
        workValue2 = "Delete this scene containment template"
        flag = true

        -- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg12, arg22, arg32) ===
        function workValue5(arg12, arg22, arg32)
          local arg42, cmgCall, flag28
          if arg32 then
            arg42 = TriggerServerEvent
            cmgCall = "581770225f"
            flag28 = modelHash.id
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "581770225f".
            arg42(cmgCall, flag28)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        modelValue(playerPed3, workValue2, flag, workValue5)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local iterator, workValue11
  end
  arg1(arg2, arg3, arg4, arg5, arg6, cmgCall3)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "newscenecontainement"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local iterator, workValue11, textValue12, flag27, textValue17, workValue16
    iterator = RageUI
    iterator = iterator.ButtonWithStyle
    workValue11 = "Name"
    textValue12 = "The name you want this scene containment to show as."
    flag27 = {}
    textValue17 = textValue8
    flag27.RightLabel = textValue17
    textValue17 = true

    -- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg12, arg22, arg32) ===
    function workValue16(arg12, arg22, arg32)
      local arg42, cmgCall, flag28, serverEventCall
      if arg32 then
        arg42 = CMG
        arg42 = arg42.clientPrompt
        cmgCall = "Enter Name"
        flag28 = ""

        -- === HELPER FUNCTION: serverEventCall(arg13) ===
        function serverEventCall(arg13)
          local workValue12
          textValue8 = arg13
        end
        arg42(cmgCall, flag28, serverEventCall)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17, workValue16)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "~b~Create New Scene Containment"
    textValue12 = "Creates a new scene containment area"
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42, cmgCall
      if arg32 then
        arg42 = flag22
        cmgCall = textValue8
        arg42(cmgCall)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17)
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local iterator, workValue11
  end
  arg1(arg2, arg3, arg4, arg5, arg6, cmgCall3)
end
rageUiCall(flag25, flag26, workValue13, textValue13)
rageUiCall = RegisterNetEvent
flag25 = "acaf25d389"
-- Beginner: this function handles network event "acaf25d389".

-- === HELPER FUNCTION (decompiler name: flag26; parameters: none) ===
function flag26()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "main"
  arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2 = arg2(arg3, arg4, arg5)
  -- Beginner: result below is menuVisible.
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2)
  arg1 = not arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "cmgscenemenu"
  arg6 = "main"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = arg1
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = CMG
    arg2 = arg2.hasPoliceCallsign
    arg2 = arg2()
    if arg2 then
      arg2 = CMG
      arg2 = arg2.inOrganHesit
      arg2 = arg2()
      if not arg2 then
        arg2 = RMenu
        arg3 = arg2
        arg2 = arg2.Get
        arg4 = "cmgscenemenu"
        arg5 = "main"
        -- Beginner: result below is menu.
        arg2 = arg2(arg3, arg4, arg5)
        arg3 = arg2
        arg2 = arg2.SetSubtitle
        arg4 = "~b~MPD~w~: "
        arg5 = CMG
        arg5 = arg5.getPoliceCallsign
        arg5 = arg5()
        arg6 = " - "
        cmgCall3 = CMG
        cmgCall3 = cmgCall3.getPoliceRank
        cmgCall3 = cmgCall3()
        heading = " - "
        coords = CMG
        coords = coords.getPlayerName
        playerPed2 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        playerPed2 = playerPed2()
        coords = coords(playerPed2)
        arg4 = arg4 .. arg5 .. arg6 .. cmgCall3 .. heading .. coords
        arg2(arg3, arg4)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "acaf25d389".
rageUiCall(flag25, flag26)
rageUiCall = RegisterNetEvent
flag25 = "377fce6749"
-- Beginner: this function handles network event "377fce6749".

-- === HELPER FUNCTION (decompiler name: flag26; parameters: none) ===
function flag26()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "vigilantespikes"
  arg2, arg3, arg4, arg5, arg6 = arg2(arg3, arg4, arg5)
  -- Beginner: result below is menuVisible.
  arg1 = arg1(arg2, arg3, arg4, arg5, arg6)
  arg1 = not arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "cmgscenemenu"
  arg6 = "vigilantespikes"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, arg6)
  arg4 = arg1
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "377fce6749".
rageUiCall(flag25, flag26)
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
flag25 = 1.0
flag26 = RMenu
workValue13 = flag26
flag26 = flag26.Get
textValue13 = "cmgscenemenu"
textValue14 = "vigilantespikes"
-- Beginner: result below is menu.
flag26 = flag26(workValue13, textValue13, textValue14)
workValue13 = nil

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: none) ===
function textValue13()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgscenemenu"
  arg5 = "vigilantespikes"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION: arg6() ===
  function arg6()
    local iterator, workValue11, textValue12, flag27, textValue17
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Place Spike"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42, cmgCall, flag28, serverEventCall, textValue18, numberValue2, workValue18, workValue3, textValue4
      if arg22 then
        arg42 = flag24
        arg42()
      end
      if arg32 then
        arg42 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg42 = arg42()
        cmgCall = rageUiCall2
        arg42 = arg42 - cmgCall
        cmgCall = 20000
        if not (arg42 > cmgCall) then
          arg42 = CMG
          arg42 = arg42.isDevMode
          arg42 = arg42()
          if not arg42 then
            goto flow_label_44
          end
        end
        arg42 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg42 = arg42()
        cmgCall = GetOffsetFromEntityInWorldCoords
        flag28 = arg42
        serverEventCall = -0.2
        textValue18 = 2.0
        numberValue2 = 0.0
        cmgCall = cmgCall(flag28, serverEventCall, textValue18, numberValue2)
        flag28 = GetEntityHeading
        serverEventCall = arg42
        -- Beginner: result below is heading.
        flag28 = flag28(serverEventCall)
        serverEventCall = GetEntityForwardVector
        textValue18 = arg42
        serverEventCall = serverEventCall(textValue18)
        textValue18 = TriggerServerEvent
        numberValue2 = "280e848c4b"
        workValue18 = cmgCall
        workValue3 = flag28
        textValue4 = serverEventCall
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "280e848c4b".
        textValue18(numberValue2, workValue18, workValue3, textValue4)
        textValue18 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        textValue18 = textValue18()
        rageUiCall2 = textValue18
        goto flow_label_47
        ::flow_label_44::
        arg42 = notify
        cmgCall = "~r~You have created a spike strip recently. Please wait."
        -- Beginner: Show a notification to the player.
        arg42(cmgCall)
      end
      ::flow_label_47::
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17)
    iterator = RageUI
    iterator = iterator.Button
    workValue11 = "Delete Spike"
    textValue12 = nil
    flag27 = true

    -- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg12, arg22, arg32) ===
    function textValue17(arg12, arg22, arg32)
      local arg42, cmgCall, flag28, serverEventCall, textValue18, numberValue2, workValue18, workValue3, textValue4, position
      if arg32 then
        arg42 = CMG
        arg42 = arg42.getPlayerCoords
        -- Beginner: result below is playerCoords.
        arg42 = arg42()
        cmgCall = pairs
        flag28 = textValue11
        cmgCall, flag28, serverEventCall, textValue18 = cmgCall(flag28)
        for numberValue2, workValue18 in cmgCall, flag28, serverEventCall, textValue18 do
          workValue3 = arg42 - workValue18
          workValue3 = #workValue3
          if workValue3 < 5.0 then
            workValue3 = TriggerServerEvent
            textValue4 = "21ef28a0d0"
            position = workValue18
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21ef28a0d0".
            workValue3(textValue4, position)
            break
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workValue11, textValue12, flag27, textValue17)
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local iterator, workValue11
  end
  arg1(arg2, arg3, arg4, arg5, arg6, cmgCall3)
end
rageUiCall(flag25, flag26, workValue13, textValue13)
rageUiCall = RegisterNetEvent
flag25 = "b7b8478d92"
-- Beginner: this function handles network event "b7b8478d92".

-- === HELPER FUNCTION (decompiler name: flag26; parameters: arg1, arg2, arg3) ===
function flag26(arg1, arg2, arg3)
  local arg4, arg5, arg6, cmgCall3, heading
  arg4 = flag23
  arg5 = arg1
  arg6 = arg2
  cmgCall3 = arg3
  heading = false
  arg4(arg5, arg6, cmgCall3, heading)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b7b8478d92".
rageUiCall(flag25, flag26)
rageUiCall = RegisterNetEvent
flag25 = "99b0254c0a"
-- Beginner: this function handles network event "99b0254c0a".

-- === HELPER FUNCTION (decompiler name: flag26; parameters: arg1) ===
function flag26(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords
  arg2 = pairs
  arg3 = textValue11
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, cmgCall3 in arg2, arg3, arg4, arg5 do
    heading = arg1 - cmgCall3
    heading = #heading
    if heading < 15.0 then
      heading = DeleteEntity
      coords = arg6
      -- Beginner: Delete a GTA entity.
      heading(coords)
      heading = textValue11
      heading[arg6] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "99b0254c0a".
rageUiCall(flag25, flag26)
rageUiCall = Citizen
rageUiCall = rageUiCall.CreateThread

-- === HELPER FUNCTION (decompiler name: flag25; parameters: none) ===
function flag25()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13, flag15, flag17, indexValue, flag20, numberValue
  while true do
    arg1 = 1000
    arg2 = CMG
    arg2 = arg2.getPlayerVehicle
    arg2, arg3 = arg2()
    if 0 ~= arg2 and arg3 then
      arg4 = CMG
      arg4 = arg4.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg4 = arg4()
      arg5 = pairs
      arg6 = textValue11
      arg5, arg6, cmgCall3, heading = arg5(arg6)
      for coords, playerPed2 in arg5, arg6, cmgCall3, heading do
        playerPed = arg4 - playerPed2
        playerPed = #playerPed
        if playerPed < 20.0 then
          if playerPed < 5.0 then
            textValue3 = pairs
            workValue4 = textValue5
            textValue3, workValue4, flag2, workValue7 = textValue3(workValue4)
            for workValue9, flag8 in textValue3, workValue4, flag2, workValue7 do
              flag10 = GetEntityBoneIndexByName
              flag13 = arg2
              flag15 = flag8.bone
              flag10 = flag10(flag13, flag15)
              if 0 ~= flag10 then
                flag13 = GetWorldPositionOfEntityBone
                flag15 = arg2
                flag17 = flag10
                flag13 = flag13(flag15, flag17)
                flag15 = flag13 - playerPed2
                flag15 = #flag15
                flag17 = 2.5
                if flag15 < flag17 then
                  flag15 = SetVehicleTyreBurst
                  flag17 = arg2
                  indexValue = flag8.index
                  flag20 = false
                  numberValue = 1000.0
                  flag15(flag17, indexValue, flag20, numberValue)
                end
              end
            end
          end
          arg1 = 0
        elseif playerPed < 50.0 then
          arg1 = 100
        end
      end
    end
    arg4 = Citizen
    arg4 = arg4.Wait
    arg5 = arg1
    arg4(arg5)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall(flag25)
rageUiCall = false
flag25 = 1000.0

-- === HELPER FUNCTION (decompiler name: flag26; parameters: none) ===
function flag26()
  local arg1, arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 ~= arg1 and arg2 then
    arg3 = false
    arg4 = 1000.0
    arg5 = CMG
    arg5 = arg5.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg5 = arg5()
    arg6 = CMG
    arg6 = arg6.getPlayerBucket
    arg6 = arg6()
    if 333 ~= arg6 then
      arg6 = CMG
      arg6 = arg6.inEvent
      arg6 = arg6()
      if not arg6 then
        arg6 = pairs
        cmgCall3 = textValue
        arg6, cmgCall3, heading, coords = arg6(cmgCall3)
        for playerPed2, playerPed in arg6, cmgCall3, heading, coords do
          textValue3 = playerPed.position
          textValue3 = textValue3 - arg5
          textValue3 = #textValue3
          workValue4 = playerPed.radius
          if textValue3 < workValue4 then
            arg3 = true
            textValue3 = playerPed.speed
            if arg4 > textValue3 then
              arg4 = playerPed.speed
            end
          end
        end
      end
    end
    if arg3 then
      arg6 = rageUiCall
      if arg6 then
        arg6 = flag25
        if arg6 == arg4 then
          goto flow_label_58
        end
      end
      arg6 = SetVehicleMaxSpeed
      cmgCall3 = arg1
      heading = arg4 / 2.236936
      arg6(cmgCall3, heading)
      arg6 = true
      rageUiCall = arg6
      flag25 = arg4
      ::flow_label_58::
      arg6 = drawNativeNotification
      cmgCall3 = "Hold up! There is a temporary ~b~speed restriction ~w~in this area."
      -- Beginner: Show a GTA-style notification/help prompt.
      arg6(cmgCall3)
    else
      arg6 = rageUiCall
      if arg6 then
        arg6 = SetVehicleMaxSpeed
        cmgCall3 = arg1
        heading = -1.0
        arg6(cmgCall3, heading)
        arg6 = false
        rageUiCall = arg6
        arg6 = 1000.0
        flag25 = arg6
      end
    end
  end
end
workValue13 = CMG
workValue13 = workValue13.createThreadOnTick
textValue13 = flag26
textValue14 = "Speedzone"
-- Beginner: Run a helper every game frame while this script is active.
workValue13(textValue13, textValue14)
workValue13 = RegisterNetEvent
textValue13 = "a472b07a4b"
-- Beginner: this function handles network event "a472b07a4b".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1, arg2, arg3, arg4) ===
function textValue14(arg1, arg2, arg3, arg4)
  local arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3
  arg5 = textValue
  arg5 = arg5[arg1]
  if arg5 then
    return
  end
  arg5 = AddBlipForRadius
  arg6 = arg2.x
  cmgCall3 = arg2.y
  heading = arg2.z
  coords = arg4
  -- Beginner: result below is blipHandle.
  arg5 = arg5(arg6, cmgCall3, heading, coords)
  arg6 = SetBlipColour
  cmgCall3 = arg5
  heading = 26
  arg6(cmgCall3, heading)
  arg6 = SetBlipAlpha
  cmgCall3 = arg5
  heading = 120
  arg6(cmgCall3, heading)
  arg6 = AddRoadNodeSpeedZone
  cmgCall3 = arg2.x
  heading = arg2.y
  coords = arg2.z
  playerPed2 = arg4
  playerPed = arg3
  textValue3 = false
  arg6 = arg6(cmgCall3, heading, coords, playerPed2, playerPed, textValue3)
  cmgCall3 = textValue
  heading = {}
  heading.position = arg2
  heading.speed = arg3
  heading.radius = arg4
  heading.blip = arg5
  heading.zone = arg6
  cmgCall3[arg1] = heading
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a472b07a4b".
workValue13(textValue13, textValue14)
workValue13 = RegisterNetEvent
textValue13 = "a1ee24f902"
-- Beginner: this function handles network event "a1ee24f902".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1) ===
function textValue14(arg1)
  local arg2, arg3, arg4
  arg2 = textValue
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = RemoveBlip
    arg4 = arg2.blip
    arg3(arg4)
    arg3 = RemoveRoadNodeSpeedZone
    arg4 = arg2.zone
    arg3(arg4)
    arg3 = textValue
    arg3[arg1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a1ee24f902".
workValue13(textValue13, textValue14)
workValue13 = RegisterNetEvent
textValue13 = "e9ad367cfd"
-- Beginner: this function handles network event "e9ad367cfd".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1) ===
function textValue14(arg1)
  local arg2, arg3, arg4
  arg2 = table
  arg2 = arg2.insert
  arg3 = textValue9
  arg4 = arg1
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9ad367cfd".
workValue13(textValue13, textValue14)
workValue13 = RegisterNetEvent
textValue13 = "c12e0fd364"
-- Beginner: this function handles network event "c12e0fd364".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1) ===
function textValue14(arg1)
  local arg2
  textValue9 = arg1
end
workValue13(textValue13, textValue14)
-- Beginner: this function handles network event "c12e0fd364".

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1) ===
function workValue13(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "police.onduty.permission"
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "prisonguard.onduty.permission"
    arg2 = arg2(arg3)
    if not arg2 then
      return
    end
  end
  arg2 = pairs
  arg3 = arg1.objects
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, cmgCall3 in arg2, arg3, arg4, arg5 do
    heading = nil
    coords = pairs
    playerPed2 = textValue2
    coords, playerPed2, playerPed, textValue3 = coords(playerPed2)
    for workValue4, flag2 in coords, playerPed2, playerPed, textValue3 do
      workValue7 = flag2[1]
      workValue9 = cmgCall3.name
      if workValue7 == workValue9 then
        heading = flag2
        break
      end
    end
    if heading then
      coords = arg1.placedObjects
      coords = coords[arg6]
      if not coords then
        coords = CMG
        coords = coords.loadModel
        playerPed2 = heading[2]
        coords = coords(playerPed2)
        if coords then
          playerPed2 = CreateObjectNoOffset
          playerPed = coords
          textValue3 = cmgCall3.position
          textValue3 = textValue3.x
          workValue4 = cmgCall3.position
          workValue4 = workValue4.y
          flag2 = cmgCall3.position
          flag2 = flag2.z
          workValue7 = false
          workValue9 = false
          flag8 = false
          -- Beginner: result below is objectEntity.
          playerPed2 = playerPed2(playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8)
          playerPed = FreezeEntityPosition
          textValue3 = playerPed2
          workValue4 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          playerPed(textValue3, workValue4)
          playerPed = SetEntityRotation
          textValue3 = playerPed2
          workValue4 = cmgCall3.rotation
          workValue4 = workValue4.x
          flag2 = cmgCall3.rotation
          flag2 = flag2.y
          workValue7 = cmgCall3.rotation
          workValue7 = workValue7.z
          workValue9 = 2
          flag8 = true
          playerPed(textValue3, workValue4, flag2, workValue7, workValue9, flag8)
          playerPed = SetEntityCollision
          textValue3 = playerPed2
          workValue4 = false
          flag2 = false
          playerPed(textValue3, workValue4, flag2)
          playerPed = SetCanClimbOnEntity
          textValue3 = playerPed2
          workValue4 = false
          playerPed(textValue3, workValue4)
          playerPed = arg1.objectHandles
          playerPed[arg6] = playerPed2
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: textValue13; parameters: arg1) ===
function textValue13(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords
  arg2 = pairs
  arg3 = arg1.objectHandles
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, cmgCall3 in arg2, arg3, arg4, arg5 do
    heading = DeleteEntity
    coords = cmgCall3
    -- Beginner: Delete a GTA entity.
    heading(coords)
  end
  arg2 = table
  arg2 = arg2.clear
  arg3 = arg1.objectHandles
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1) ===
function textValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8
  arg2 = math
  arg2 = arg2.sin
  arg3 = GetNetworkTime
  -- Beginner: result below is networkTime.
  arg3 = arg3()
  arg3 = arg3 / 1000.0
  arg2 = arg2(arg3)
  arg3 = nil
  arg4 = 2.0
  arg5 = CMG
  arg5 = arg5.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg5 = arg5()
  arg6 = math
  arg6 = arg6.floor
  cmgCall3 = math
  cmgCall3 = cmgCall3.abs
  heading = arg2
  cmgCall3 = cmgCall3(heading)
  cmgCall3 = 150.0 * cmgCall3
  cmgCall3 = 50 + cmgCall3
  arg6 = arg6(cmgCall3)
  cmgCall3 = pairs
  heading = arg1.objectHandles
  cmgCall3, heading, coords, playerPed2 = cmgCall3(heading)
  for playerPed, textValue3 in cmgCall3, heading, coords, playerPed2 do
    workValue4 = arg1.objects
    workValue4 = workValue4[playerPed]
    workValue4 = workValue4.position
    workValue4 = arg5 - workValue4
    workValue4 = #workValue4
    if arg4 > workValue4 then
      arg3 = playerPed
      arg4 = workValue4
    end
    flag2 = SetEntityAlpha
    workValue7 = textValue3
    workValue9 = arg6
    flag8 = true
    flag2(workValue7, workValue9, flag8)
  end
  if arg3 then
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    cmgCall3 = cmgCall3()
    if 0 == cmgCall3 then
      goto flow_label_54
    end
  end
  return
  ::flow_label_54::
  cmgCall3 = drawNativeNotification
  heading = [[
Press ~INPUT_CONTEXT~ to place down the object.
Press ~INPUT_FRONTEND_DELETE~ to delete the object.]]
  -- Beginner: Show a GTA-style notification/help prompt.
  cmgCall3(heading)
  cmgCall3 = IsControlJustPressed
  heading = 0
  coords = 51
  cmgCall3 = cmgCall3(heading, coords)
  if cmgCall3 then
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.setIgnoreRadialInputThisFrame
    cmgCall3()
    cmgCall3 = TriggerServerEvent
    heading = "90706e5309"
    coords = arg1.id
    playerPed2 = arg3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90706e5309".
    cmgCall3(heading, coords, playerPed2)
  end
  cmgCall3 = IsControlJustPressed
  heading = 0
  coords = 214
  cmgCall3 = cmgCall3(heading, coords)
  if cmgCall3 then
    cmgCall3 = TriggerServerEvent
    heading = "efbe9eb340"
    coords = arg1.id
    playerPed2 = arg3
    cmgCall3(heading, coords, playerPed2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: arg1) ===
function workValue14(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2
  arg2 = CMG
  arg2 = arg2.createArea
  arg3 = string
  arg3 = arg3.format
  arg4 = "scene_containment_%s"
  arg5 = arg1.id
  arg3 = arg3(arg4, arg5)
  arg4 = arg1.position
  arg5 = 100.0
  arg6 = 100.0
  cmgCall3 = workValue13
  heading = textValue13
  coords = textValue14
  playerPed2 = arg1
  -- Beginner: Create an interaction area around a world position.
  arg2(arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2)
  arg2 = table
  arg2 = arg2.insert
  arg3 = flag12
  arg4 = arg1
  arg2(arg3, arg4)
end
eventRegistration = RegisterNetEvent
textValue15 = "ad3e839b3e"
-- Beginner: this function handles network event "ad3e839b3e".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3
  arg2 = workValue14
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ad3e839b3e".
eventRegistration(textValue15, workValue15)
eventRegistration = RegisterNetEvent
textValue15 = "1836c67900"
-- Beginner: this function handles network event "1836c67900".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, cmgCall3 in arg2, arg3, arg4, arg5 do
    heading = workValue14
    coords = cmgCall3
    heading(coords)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1836c67900".
eventRegistration(textValue15, workValue15)
eventRegistration = RegisterNetEvent
textValue15 = "fe73be5dd6"
-- Beginner: this function handles network event "fe73be5dd6".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2) ===
function workValue15(arg1, arg2)
  local arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed
  arg3 = pairs
  arg4 = flag12
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for cmgCall3, heading in arg3, arg4, arg5, arg6 do
    coords = heading.id
    if coords == arg1 then
      coords = heading.placedObjects
      coords[arg2] = true
      coords = heading.objectHandles
      coords = coords[arg2]
      if coords then
        playerPed2 = DeleteEntity
        playerPed = coords
        -- Beginner: Delete a GTA entity.
        playerPed2(playerPed)
      end
      playerPed2 = heading.objectHandles
      playerPed2[arg2] = nil
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fe73be5dd6".
eventRegistration(textValue15, workValue15)
eventRegistration = RegisterNetEvent
textValue15 = "90706e5309"
-- Beginner: this function handles network event "90706e5309".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2) ===
function workValue15(arg1, arg2)
  local arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2, playerPed, textValue3, workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13
  arg3 = pairs
  arg4 = flag12
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for cmgCall3, heading in arg3, arg4, arg5, arg6 do
    coords = heading.id
    if coords == arg1 then
      coords = heading.objects
      coords = coords[arg2]
      playerPed2 = nil
      playerPed = pairs
      textValue3 = textValue2
      playerPed, textValue3, workValue4, flag2 = playerPed(textValue3)
      for workValue7, workValue9 in playerPed, textValue3, workValue4, flag2 do
        flag8 = workValue9[1]
        flag10 = coords.name
        if flag8 == flag10 then
          playerPed2 = workValue9
          break
        end
      end
      if not playerPed2 then
        return
      end
      playerPed = CMG
      playerPed = playerPed.loadModel
      textValue3 = playerPed2[2]
      playerPed = playerPed(textValue3)
      if not playerPed then
        return
      end
      textValue3 = CMG
      textValue3 = textValue3.requestEntitySpawn
      workValue4 = "scenemenu_object"
      flag2 = playerPed
      workValue7 = coords.position
      textValue3(workValue4, flag2, workValue7)
      textValue3 = CreateObjectNoOffset
      workValue4 = playerPed
      flag2 = coords.position
      flag2 = flag2.x
      workValue7 = coords.position
      workValue7 = workValue7.y
      workValue9 = coords.position
      workValue9 = workValue9.z
      flag8 = true
      flag10 = true
      flag13 = true
      -- Beginner: result below is objectEntity.
      textValue3 = textValue3(workValue4, flag2, workValue7, workValue9, flag8, flag10, flag13)
      workValue4 = FreezeEntityPosition
      flag2 = textValue3
      workValue7 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workValue4(flag2, workValue7)
      workValue4 = SetEntityRotation
      flag2 = textValue3
      workValue7 = coords.rotation
      workValue7 = workValue7.x
      workValue9 = coords.rotation
      workValue9 = workValue9.y
      flag8 = coords.rotation
      flag8 = flag8.z
      flag10 = 2
      flag13 = false
      workValue4(flag2, workValue7, workValue9, flag8, flag10, flag13)
      workValue4 = table
      workValue4 = workValue4.insert
      flag2 = workValue
      workValue7 = {}
      workValue7.entity = textValue3
      workValue7.modelHash = playerPed
      workValue9 = NetworkGetNetworkIdFromEntity
      flag8 = textValue3
      workValue9 = workValue9(flag8)
      workValue7.entityNetId = workValue9
      workValue4(flag2, workValue7)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "90706e5309".
eventRegistration(textValue15, workValue15)
eventRegistration = RegisterNetEvent
textValue15 = "9ecb0e4077"
-- Beginner: this function handles network event "9ecb0e4077".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2
  arg2 = pairs
  arg3 = textValue9
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, cmgCall3 in arg2, arg3, arg4, arg5 do
    heading = cmgCall3.id
    if heading == arg1 then
      heading = table
      heading = heading.remove
      coords = textValue9
      playerPed2 = arg6
      heading(coords, playerPed2)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9ecb0e4077".
eventRegistration(textValue15, workValue15)
eventRegistration = RegisterNetEvent
textValue15 = "c050c5b664"
-- Beginner: this function handles network event "c050c5b664".

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1) ===
function workValue15(arg1)
  local arg2, arg3, arg4, arg5, arg6, cmgCall3, heading, coords, playerPed2
  arg2 = pairs
  arg3 = flag12
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, cmgCall3 in arg2, arg3, arg4, arg5 do
    heading = cmgCall3.id
    if heading == arg1 then
      heading = textValue13
      coords = cmgCall3
      heading(coords)
      heading = table
      heading = heading.remove
      coords = flag12
      playerPed2 = arg6
      heading(coords, playerPed2)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c050c5b664".
eventRegistration(textValue15, workValue15)
