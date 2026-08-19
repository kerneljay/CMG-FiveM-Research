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
local workingValue, text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15
workingValue = RMenu
workingValue = workingValue.Add
text10 = "cmgscenemenu"
text11 = "main"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text16 = ""
cmgOperation2 = "~b~CMG Traffic Scene Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_jobselectorui"
text19 = "metpd"
rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15 = rageUiOperation2(text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19)
workingValue(text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15)
workingValue = RMenu
workingValue = workingValue.Add
text10 = "cmgscenemenu"
text11 = "objects"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text16 = RMenu
cmgOperation2 = text16
text16 = text16.Get
rageUiOperation3 = "cmgscenemenu"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text16 = text16(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "~b~Spawn Objects"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text19 = "cmg_jobselectorui"
text = "metpd"
rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15 = rageUiOperation2(text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text)
workingValue(text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15)
workingValue = RMenu
workingValue = workingValue.Add
text10 = "cmgscenemenu"
text11 = "speedZone"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text16 = RMenu
cmgOperation2 = text16
text16 = text16.Get
rageUiOperation3 = "cmgscenemenu"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text16 = text16(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "~b~Set a speed zone"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text19 = "cmg_jobselectorui"
text = "metpd"
rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15 = rageUiOperation2(text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text)
workingValue(text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15)
workingValue = RMenu
workingValue = workingValue.Add
text10 = "cmgscenemenu"
text11 = "scenecontainment"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text16 = RMenu
cmgOperation2 = text16
text16 = text16.Get
rageUiOperation3 = "cmgscenemenu"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text16 = text16(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "~b~Scene Containment"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text19 = "cmg_jobselectorui"
text = "metpd"
rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15 = rageUiOperation2(text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text)
workingValue(text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15)
workingValue = RMenu
workingValue = workingValue.Add
text10 = "cmgscenemenu"
text11 = "newscenecontainement"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text16 = RMenu
cmgOperation2 = text16
text16 = text16.Get
rageUiOperation3 = "cmgscenemenu"
rageUiOperation4 = "scenecontainment"
-- Beginner: result below is menu.
text16 = text16(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "~b~New Scene Containment"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text19 = "cmg_jobselectorui"
text = "metpd"
rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15 = rageUiOperation2(text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text)
workingValue(text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15)
workingValue = RMenu
workingValue = workingValue.Add
text10 = "cmgscenemenu"
text11 = "pendingscenecontainments"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text16 = RMenu
cmgOperation2 = text16
text16 = text16.Get
rageUiOperation3 = "cmgscenemenu"
rageUiOperation4 = "scenecontainment"
-- Beginner: result below is menu.
text16 = text16(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "~b~Pending Scene Containment"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text19 = "cmg_jobselectorui"
text = "metpd"
rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15 = rageUiOperation2(text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text)
workingValue(text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15)
workingValue = RMenu
workingValue = workingValue.Add
text10 = "cmgscenemenu"
text11 = "spikes"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text16 = RMenu
cmgOperation2 = text16
text16 = text16.Get
rageUiOperation3 = "cmgscenemenu"
rageUiOperation4 = "main"
-- Beginner: result below is menu.
text16 = text16(cmgOperation2, rageUiOperation3, rageUiOperation4)
cmgOperation2 = ""
rageUiOperation3 = "~b~Set a spike trap"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text19 = "cmg_jobselectorui"
text = "metpd"
rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15 = rageUiOperation2(text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text)
workingValue(text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15)
workingValue = RMenu
workingValue = workingValue.Add
text10 = "cmgscenemenu"
text11 = "vigilantespikes"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text16 = ""
cmgOperation2 = "~b~Spike Strips"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_jobselectorui"
text19 = "jobcentre"
rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15 = rageUiOperation2(text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19)
workingValue(text10, text11, rageUiOperation2, text16, cmgOperation2, rageUiOperation3, rageUiOperation4, rageUiOperation5, text19, text, text2, text5, text6, text7, stateFlag5, text8, text9, stateFlag12, stateFlag14, stateFlag16, stateFlag18, stateFlag19, stateFlag21, stateFlag22, stateFlag23, stateFlag24, rageUiOperation, stateFlag25, stateFlag26, workingValue13, text13, text14, workingValue14, eventHandler, text15, workingValue15)
workingValue = {}
text10 = {}
text10.object = 1
text10.speedRad = 1
text10.speed = 1
text10.amount = 1
text10.seperation = 1
text10.degrees = 1
text11 = {}
text10.previewObjects = text11
text11 = {}
rageUiOperation2 = 0

-- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
function text16()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "borderforce.onduty.permission"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.hasClientGroup
      localValue2 = "Vigilante"
      localValue1 = localValue1(localValue2)
      if localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.hasClientSkill
        localValue2 = "vigilante_spike_strips_1"
        localValue1 = localValue1(localValue2)
      end
    end
  end
  return localValue1
end
cmgOperation2 = TriggerEvent
rageUiOperation3 = "chat:addSuggestion"
rageUiOperation4 = "/trafficmenu"
rageUiOperation5 = "Open the traffic scene menu"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgOperation2(rageUiOperation3, rageUiOperation4, rageUiOperation5)
cmgOperation2 = {}
rageUiOperation3 = "0"
rageUiOperation4 = "25"
rageUiOperation5 = "50"
text19 = "75"
text = "100"
text2 = "125"
text5 = "150"
text6 = "175"
text7 = "200"
cmgOperation2[1] = rageUiOperation3
cmgOperation2[2] = rageUiOperation4
cmgOperation2[3] = rageUiOperation5
cmgOperation2[4] = text19
cmgOperation2[5] = text
cmgOperation2[6] = text2
cmgOperation2[7] = text5
cmgOperation2[8] = text6
cmgOperation2[9] = text7
rageUiOperation3 = {}
rageUiOperation4 = "0"
rageUiOperation5 = "5"
text19 = "10"
text = "15"
text2 = "20"
text5 = "25"
text6 = "30"
text7 = "35"
stateFlag5 = "40"
text8 = "45"
text9 = "50"
rageUiOperation3[1] = rageUiOperation4
rageUiOperation3[2] = rageUiOperation5
rageUiOperation3[3] = text19
rageUiOperation3[4] = text
rageUiOperation3[5] = text2
rageUiOperation3[6] = text5
rageUiOperation3[7] = text6
rageUiOperation3[8] = text7
rageUiOperation3[9] = stateFlag5
rageUiOperation3[10] = text8
rageUiOperation3[11] = text9
rageUiOperation4 = {}
rageUiOperation5 = 1
text19 = 2
text = 3
text2 = 4
text5 = 5
rageUiOperation4[1] = rageUiOperation5
rageUiOperation4[2] = text19
rageUiOperation4[3] = text
rageUiOperation4[4] = text2
rageUiOperation4[5] = text5
rageUiOperation5 = {}
text19 = 3
text = 6
text2 = 9
text5 = 12
text6 = 15
rageUiOperation5[1] = text19
rageUiOperation5[2] = text
rageUiOperation5[3] = text2
rageUiOperation5[4] = text5
rageUiOperation5[5] = text6
text19 = {}
text = 0
text2 = 45
text5 = 90
text6 = 135
text7 = 190
stateFlag5 = 235
text8 = 270
text9 = 315
text19[1] = text
text19[2] = text2
text19[3] = text5
text19[4] = text6
text19[5] = text7
text19[6] = stateFlag5
text19[7] = text8
text19[8] = text9
text = {}
text2 = {}
text5 = {}
text6 = "Police Slow"
text7 = "prop_barrier_slow"
stateFlag5 = true
text8 = 0.05
text5[1] = text6
text5[2] = text7
text5[3] = stateFlag5
text5[4] = text8
text6 = {}
text7 = "Police No Entry"
stateFlag5 = "prop_barrier_noentry"
text8 = true
text9 = 0.05
text6[1] = text7
text6[2] = stateFlag5
text6[3] = text8
text6[4] = text9
text7 = {}
stateFlag5 = "Incident Ahead"
text8 = "prop_barrier_incident"
text9 = true
stateFlag12 = 0.05
text7[1] = stateFlag5
text7[2] = text8
text7[3] = text9
text7[4] = stateFlag12
stateFlag5 = {}
text8 = "Police Checkpoint"
text9 = "prop_barrier_checkpoint"
stateFlag12 = true
stateFlag14 = 0.05
stateFlag5[1] = text8
stateFlag5[2] = text9
stateFlag5[3] = stateFlag12
stateFlag5[4] = stateFlag14
text8 = {}
text9 = "Police Collision"
stateFlag12 = "prop_barrier_collision"
stateFlag14 = true
stateFlag16 = 0.05
text8[1] = text9
text8[2] = stateFlag12
text8[3] = stateFlag14
text8[4] = stateFlag16
text9 = {}
stateFlag12 = "Diagonal Left"
stateFlag14 = "prop_barrier_diagonalleft"
stateFlag16 = true
stateFlag18 = 0.05
text9[1] = stateFlag12
text9[2] = stateFlag14
text9[3] = stateFlag16
text9[4] = stateFlag18
stateFlag12 = {}
stateFlag14 = "Diagonal Right"
stateFlag16 = "prop_barrier_diagonalright"
stateFlag18 = true
stateFlag19 = 0.05
stateFlag12[1] = stateFlag14
stateFlag12[2] = stateFlag16
stateFlag12[3] = stateFlag18
stateFlag12[4] = stateFlag19
stateFlag14 = {}
stateFlag16 = "Big Cone"
stateFlag18 = "prop_roadcone01a"
stateFlag19 = true
stateFlag14[1] = stateFlag16
stateFlag14[2] = stateFlag18
stateFlag14[3] = stateFlag19
stateFlag16 = {}
stateFlag18 = "Gazebo"
stateFlag19 = "prop_gazebo_02"
stateFlag21 = true
stateFlag16[1] = stateFlag18
stateFlag16[2] = stateFlag19
stateFlag16[3] = stateFlag21
stateFlag18 = {}
stateFlag19 = "Worklight"
stateFlag21 = "prop_worklight_03b"
stateFlag22 = true
stateFlag18[1] = stateFlag19
stateFlag18[2] = stateFlag21
stateFlag18[3] = stateFlag22
stateFlag19 = {}
stateFlag21 = "Gate Barrier"
stateFlag22 = "ba_prop_battle_barrier_02a"
stateFlag23 = true
stateFlag19[1] = stateFlag21
stateFlag19[2] = stateFlag22
stateFlag19[3] = stateFlag23
stateFlag21 = {}
stateFlag22 = "Gazebo"
stateFlag23 = "prop_gazebo_02"
stateFlag24 = true
stateFlag21[1] = stateFlag22
stateFlag21[2] = stateFlag23
stateFlag21[3] = stateFlag24
stateFlag22 = {}
stateFlag23 = "Fence Transparent"
stateFlag24 = "prop_fncsec_03b"
rageUiOperation = true
stateFlag25 = -0.45
stateFlag22[1] = stateFlag23
stateFlag22[2] = stateFlag24
stateFlag22[3] = rageUiOperation
stateFlag22[4] = stateFlag25
stateFlag23 = {}
stateFlag24 = "Fence Hidden"
rageUiOperation = "prop_fncsec_03d"
stateFlag25 = true
stateFlag23[1] = stateFlag24
stateFlag23[2] = rageUiOperation
stateFlag23[3] = stateFlag25
stateFlag24 = {}
rageUiOperation = "Plastic Fence"
stateFlag25 = "prop_barrier_work06a"
stateFlag26 = true
stateFlag24[1] = rageUiOperation
stateFlag24[2] = stateFlag25
stateFlag24[3] = stateFlag26
text2[1] = text5
text2[2] = text6
text2[3] = text7
text2[4] = stateFlag5
text2[5] = text8
text2[6] = text9
text2[7] = stateFlag12
text2[8] = stateFlag14
text2[9] = stateFlag16
text2[10] = stateFlag18
text2[11] = stateFlag19
text2[12] = stateFlag21
text2[13] = stateFlag22
text2[14] = stateFlag23
text2[15] = stateFlag24
text5 = {}
text6 = {}
text6.bone = "wheel_lf"
text6.index = 0
text7 = {}
text7.bone = "wheel_rf"
text7.index = 1
stateFlag5 = {}
stateFlag5.bone = "wheel_lm"
stateFlag5.index = 2
text8 = {}
text8.bone = "wheel_rm"
text8.index = 3
text9 = {}
text9.bone = "wheel_lr"
text9.index = 4
stateFlag12 = {}
stateFlag12.bone = "wheel_rr"
stateFlag12.index = 5
text5[1] = text6
text5[2] = text7
text5[3] = stateFlag5
text5[4] = text8
text5[5] = text9
text5[6] = stateFlag12
text6 = {}
text7 = pairs
stateFlag5 = text2
text7, stateFlag5, text8, text9 = text7(stateFlag5)
for stateFlag12, stateFlag14 in text7, stateFlag5, text8, text9 do
  stateFlag16 = stateFlag14[1]
  text6[stateFlag12] = stateFlag16
end
text7 = nil
stateFlag5 = nil
text8 = ""
text9 = {}
stateFlag12 = {}

-- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function stateFlag14(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15, stateFlag17
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation3 = cmgOperation3()
  heading = GetEntityHeading
  coords = cmgOperation3
  -- Beginner: result below is heading.
  heading = heading(coords)
  coords = GetEntityCoords
  playerPed2 = PlayerPedId
  playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15, stateFlag17 = playerPed2()
  -- Beginner: result below is entityCoords.
  coords = coords(playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15, stateFlag17)
  playerPed2 = GetEntityForwardVector
  playerPed = PlayerPedId
  playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15, stateFlag17 = playerPed()
  playerPed2 = playerPed2(playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15, stateFlag17)
  text3 = text10.seperation
  playerPed = rageUiOperation5
  playerPed = playerPed[text3]
  text3 = localValue6 - 1
  playerPed = playerPed * text3
  playerPed = 3.0 + playerPed
  playerPed2 = playerPed2 * playerPed
  coords = coords + playerPed2
  playerPed2 = CMG
  playerPed2 = playerPed2.loadModel
  playerPed = localValue1
  playerPed2 = playerPed2(playerPed)
  if not playerPed2 then
    return
  end
  if localValue5 then
    playerPed = CMG
    playerPed = playerPed.requestEntitySpawn
    text3 = "scenemenu_object"
    workingValue4 = playerPed2
    stateFlag2 = coords
    playerPed(text3, workingValue4, stateFlag2)
  end
  playerPed = CreateObject
  text3 = playerPed2
  workingValue4 = coords.x
  stateFlag2 = coords.y
  workingValue7 = coords.z
  workingValue9 = localValue5
  stateFlag8 = false
  stateFlag10 = false
  -- Beginner: result below is objectEntity.
  playerPed = playerPed(text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10)
  if localValue2 then
    text3 = FreezeEntityPosition
    workingValue4 = playerPed
    stateFlag2 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    text3(workingValue4, stateFlag2)
  end
  text3 = PlaceObjectOnGroundProperly
  workingValue4 = playerPed
  text3(workingValue4)
  if localValue3 then
    text3 = GetEntityCoords
    workingValue4 = playerPed
    stateFlag2 = true
    -- Beginner: result below is entityCoords.
    text3 = text3(workingValue4, stateFlag2)
    workingValue4 = SetEntityCoords
    stateFlag2 = playerPed
    workingValue7 = text3.x
    workingValue9 = text3.y
    stateFlag8 = text3.z
    stateFlag8 = stateFlag8 + localValue3
    stateFlag10 = true
    stateFlag13 = true
    stateFlag15 = true
    stateFlag17 = true
    -- Beginner: Move/teleport an entity to new coordinates.
    workingValue4(stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15, stateFlag17)
  end
  text3 = SetEntityHeading
  workingValue4 = playerPed
  workingValue7 = text10.degrees
  stateFlag2 = text19
  stateFlag2 = stateFlag2[workingValue7]
  stateFlag2 = heading + stateFlag2
  -- Beginner: Change the direction an entity is facing.
  text3(workingValue4, stateFlag2)
  if localValue4 then
    text3 = SetEntityAlpha
    workingValue4 = playerPed
    stateFlag2 = localValue4
    workingValue7 = false
    text3(workingValue4, stateFlag2, workingValue7)
  end
  text3 = SetModelAsNoLongerNeeded
  workingValue4 = playerPed2
  text3(workingValue4)
  text3 = table
  text3 = text3.insert
  workingValue4 = workingValue
  stateFlag2 = {}
  stateFlag2.entity = playerPed
  stateFlag2.modelHash = playerPed2
  if localValue5 then
    workingValue7 = NetworkGetNetworkIdFromEntity
    workingValue9 = playerPed
    workingValue7 = workingValue7(workingValue9)
    if workingValue7 then
      goto continueAtStep112
    end
  end
  workingValue7 = 0
  ::continueAtStep112::
  stateFlag2.entityNetId = workingValue7
  text3(workingValue4, stateFlag2)
  return playerPed
end

-- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
function stateFlag16()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading
  localValue1 = pairs
  localValue2 = text10.previewObjects
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation3 = DeleteEntity
    heading = localValue6
    -- Beginner: Delete a GTA entity.
    cmgOperation3(heading)
  end
  localValue1 = {}
  text10.previewObjects = localValue1
end

-- === HELPER FUNCTION (decompiler name: stateFlag18; parameters: none) ===
function stateFlag18()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4
  localValue1 = stateFlag16
  localValue1()
  localValue2 = text10.object
  localValue1 = text2
  localValue1 = localValue1[localValue2]
  localValue3 = text10.amount
  localValue2 = rageUiOperation4
  localValue2 = localValue2[localValue3]
  localValue3 = 1
  localValue4 = localValue2
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    cmgOperation3 = stateFlag14
    heading = localValue1[2]
    coords = localValue1[3]
    playerPed2 = localValue1[4]
    playerPed = 155
    text3 = false
    workingValue4 = localValue6
    cmgOperation3 = cmgOperation3(heading, coords, playerPed2, playerPed, text3, workingValue4)
    heading = table
    heading = heading.insert
    coords = text10.previewObjects
    playerPed2 = cmgOperation3
    heading(coords, playerPed2)
  end
end

-- === HELPER FUNCTION (decompiler name: stateFlag19; parameters: none) ===
function stateFlag19()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15
  localValue1 = pairs
  localValue2 = text2
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    cmgOperation3 = localValue6[2]
    heading = GetHashKey
    coords = cmgOperation3
    -- Beginner: result below is hash.
    heading = heading(coords)
    coords = table
    coords = coords.unpack
    playerPed2 = GetEntityCoords
    playerPed = CMG
    playerPed = playerPed.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    text3 = true
    playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15 = playerPed2(playerPed, text3)
    coords, playerPed2, playerPed = coords(playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15)
    text3 = DoesObjectOfTypeExistAtCoords
    workingValue4 = coords
    stateFlag2 = playerPed2
    workingValue7 = playerPed
    workingValue9 = 0.9
    stateFlag8 = heading
    stateFlag10 = true
    text3 = text3(workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10)
    if text3 then
      text3 = GetClosestObjectOfType
      workingValue4 = coords
      stateFlag2 = playerPed2
      workingValue7 = playerPed
      workingValue9 = 0.9
      stateFlag8 = heading
      stateFlag10 = false
      stateFlag13 = false
      stateFlag15 = false
      -- Beginner: result below is objectEntity.
      text3 = text3(workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15)
      workingValue4 = NetworkGetEntityIsNetworked
      stateFlag2 = text3
      workingValue4 = workingValue4(stateFlag2)
      if workingValue4 then
        workingValue4 = NetworkHasControlOfEntity
        stateFlag2 = text3
        workingValue4 = workingValue4(stateFlag2)
        if not workingValue4 then
          workingValue4 = CMG
          workingValue4 = workingValue4.getNetId
          stateFlag2 = text3
          workingValue7 = "deleteObject()"
          workingValue4 = workingValue4(stateFlag2, workingValue7)
          if 0 ~= workingValue4 then
            stateFlag2 = TriggerServerEvent
            workingValue7 = "26e2cfab1c"
            workingValue9 = workingValue4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26e2cfab1c".
            stateFlag2(workingValue7, workingValue9)
          end
      end
      else
        workingValue4 = DeleteObject
        stateFlag2 = text3
        workingValue4(stateFlag2)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: stateFlag21; parameters: none) ===
function stateFlag21()
  local localValue1, localValue2
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local iterator, workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue
    iterator = pairs
    workingValue11 = workingValue
    iterator, workingValue11, text12, stateFlag27 = iterator(workingValue11)
    for text17, workingValue16 in iterator, workingValue11, text12, stateFlag27 do
      workingValue17 = DoesEntityExist
      modelHash = workingValue16.entity
      workingValue17 = workingValue17(modelHash)
      if not workingValue17 then
        workingValue17 = workingValue16.entityNetId
        if 0 ~= workingValue17 then
          workingValue17 = NetworkGetEntityFromNetworkId
          modelHash = workingValue16.entityNetId
          workingValue17 = workingValue17(modelHash)
          if 0 ~= workingValue17 then
            modelHash = GetEntityModel
            modelValue = workingValue17
            -- Beginner: result below is modelHash.
            modelHash = modelHash(modelValue)
            modelValue = workingValue16.modelHash
            if modelHash == modelValue then
              workingValue16.entity = workingValue17
            end
          end
        end
      end
      workingValue17 = DoesEntityExist
      modelHash = workingValue16.entity
      workingValue17 = workingValue17(modelHash)
      if workingValue17 then
        workingValue17 = workingValue16.entityNetId
        if 0 ~= workingValue17 then
          workingValue17 = NetworkGetEntityIsNetworked
          modelHash = workingValue16.entity
          workingValue17 = workingValue17(modelHash)
          if workingValue17 then
            workingValue17 = TriggerServerEvent
            modelHash = "26e2cfab1c"
            modelValue = workingValue16.entityNetId
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "26e2cfab1c".
            workingValue17(modelHash, modelValue)
        end
        else
          workingValue17 = DeleteEntity
          modelHash = workingValue16.entity
          -- Beginner: Delete a GTA entity.
          workingValue17(modelHash)
        end
      end
    end
    iterator = {}
    workingValue = iterator
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: stateFlag22; parameters: localValue1) ===
function stateFlag22(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13
  localValue2 = {}
  localValue2.id = ""
  localValue2.name = localValue1
  localValue3 = vector3
  localValue4 = 0.0
  localValue5 = 0.0
  localValue6 = 0.0
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue2.position = localValue3
  localValue3 = {}
  localValue2.objects = localValue3
  localValue3 = vector3
  localValue4 = 0.0
  localValue5 = 0.0
  localValue6 = 0.0
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = pairs
  localValue5 = workingValue
  localValue4, localValue5, localValue6, cmgOperation3 = localValue4(localValue5)
  for heading, coords in localValue4, localValue5, localValue6, cmgOperation3 do
    playerPed2 = DoesEntityExist
    playerPed = coords.entity
    playerPed2 = playerPed2(playerPed)
    if playerPed2 then
      playerPed2 = GetEntityModel
      playerPed = coords.entity
      -- Beginner: result below is modelHash.
      playerPed2 = playerPed2(playerPed)
      playerPed = nil
      text3 = pairs
      workingValue4 = text2
      text3, workingValue4, stateFlag2, workingValue7 = text3(workingValue4)
      for workingValue9, stateFlag8 in text3, workingValue4, stateFlag2, workingValue7 do
        stateFlag10 = GetHashKey
        stateFlag13 = stateFlag8[2]
        -- Beginner: result below is hash.
        stateFlag10 = stateFlag10(stateFlag13)
        if stateFlag10 == playerPed2 then
          playerPed = stateFlag8[1]
          break
        end
      end
      if playerPed then
        text3 = GetEntityCoords
        workingValue4 = coords.entity
        stateFlag2 = true
        -- Beginner: result below is entityCoords.
        text3 = text3(workingValue4, stateFlag2)
        workingValue4 = table
        workingValue4 = workingValue4.insert
        stateFlag2 = localValue2.objects
        workingValue7 = {}
        workingValue7.name = playerPed
        workingValue7.position = text3
        workingValue9 = GetEntityRotation
        stateFlag8 = coords.entity
        stateFlag10 = 2
        workingValue9 = workingValue9(stateFlag8, stateFlag10)
        workingValue7.rotation = workingValue9
        workingValue4(stateFlag2, workingValue7)
        localValue3 = localValue3 + text3
      end
    end
  end
  localValue4 = localValue2.objects
  localValue4 = #localValue4
  localValue4 = localValue3 / localValue4
  localValue2.position = localValue4
  localValue4 = TriggerServerEvent
  localValue5 = "0beb8c8e6b"
  localValue6 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0beb8c8e6b".
  localValue4(localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: stateFlag23; parameters: localValue1, localValue2, localValue3, localValue4) ===
function stateFlag23(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15
  localValue5 = CMG
  localValue5 = localValue5.loadModel
  localValue6 = -874338148
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue5(localValue6)
  localValue5 = CMG
  localValue5 = localValue5.loadAnimDict
  localValue6 = "p_ld_stinger_s"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue5(localValue6)
  localValue5 = 0
  localValue6 = 3
  cmgOperation3 = 1
  for heading = localValue5, localValue6, cmgOperation3 do
    coords = heading * 3.5
    coords = localValue3 * coords
    coords = localValue1 + coords
    playerPed2 = CreateObject
    playerPed = -874338148
    text3 = coords.x
    workingValue4 = coords.y
    stateFlag2 = coords.z
    workingValue7 = false
    workingValue9 = false
    stateFlag8 = false
    -- Beginner: result below is objectEntity.
    playerPed2 = playerPed2(playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8)
    playerPed = SetEntityHeading
    text3 = playerPed2
    workingValue4 = localValue2
    -- Beginner: Change the direction an entity is facing.
    playerPed(text3, workingValue4)
    playerPed = FreezeEntityPosition
    text3 = playerPed2
    workingValue4 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    playerPed(text3, workingValue4)
    playerPed = PlaceObjectOnGroundProperly
    text3 = playerPed2
    playerPed(text3)
    playerPed = SetEntityCollision
    text3 = playerPed2
    workingValue4 = false
    stateFlag2 = false
    playerPed(text3, workingValue4, stateFlag2)
    if not localValue4 then
      playerPed = SetEntityVisible
      text3 = playerPed2
      workingValue4 = false
      stateFlag2 = false
      playerPed(text3, workingValue4, stateFlag2)
      playerPed = PlayEntityAnim
      text3 = playerPed2
      workingValue4 = "P_Stinger_S_Deploy"
      stateFlag2 = "p_ld_stinger_s"
      workingValue7 = 1000.0
      workingValue9 = false
      stateFlag8 = true
      stateFlag10 = false
      stateFlag13 = 0.0
      stateFlag15 = 0
      playerPed(text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15)
      playerPed = text11
      playerPed[playerPed2] = coords
      playerPed = SetTimeout
      text3 = 90000

      -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
      function workingValue4()
        local iterator, workingValue11, text12, stateFlag27
        workingValue11 = playerPed2
        iterator = text11
        iterator = iterator[workingValue11]
        if iterator then
          workingValue11 = playerPed2
          iterator = text11
          iterator = iterator[workingValue11]
          workingValue11 = DeleteEntity
          text12 = playerPed2
          -- Beginner: Delete a GTA entity.
          workingValue11(text12)
          text12 = playerPed2
          workingValue11 = text11
          workingValue11[text12] = nil
          workingValue11 = TriggerServerEvent
          text12 = "21ef28a0d0"
          stateFlag27 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21ef28a0d0".
          workingValue11(text12, stateFlag27)
        end
      end
      playerPed(text3, workingValue4)
      while true do
        playerPed = IsEntityPlayingAnim
        text3 = playerPed2
        workingValue4 = "p_ld_stinger_s"
        stateFlag2 = "P_Stinger_S_Deploy"
        workingValue7 = 3
        playerPed = playerPed(text3, workingValue4, stateFlag2, workingValue7)
        if playerPed then
          break
        end
        playerPed = Citizen
        playerPed = playerPed.Wait
        text3 = 0
        playerPed(text3)
      end
      playerPed = SetEntityVisible
      text3 = playerPed2
      workingValue4 = true
      stateFlag2 = true
      playerPed(text3, workingValue4, stateFlag2)
      while true do
        playerPed = IsEntityPlayingAnim
        text3 = playerPed2
        workingValue4 = "p_ld_stinger_s"
        stateFlag2 = "P_Stinger_S_Deploy"
        workingValue7 = 3
        playerPed = playerPed(text3, workingValue4, stateFlag2, workingValue7)
        if not playerPed then
          break
        end
        playerPed = GetEntityAnimCurrentTime
        text3 = playerPed2
        workingValue4 = "p_ld_stinger_s"
        stateFlag2 = "P_Stinger_S_Deploy"
        playerPed = playerPed(text3, workingValue4, stateFlag2)
        text3 = 0.75
        if not (playerPed <= text3) then
          break
        end
        playerPed = SetEntityAnimSpeed
        text3 = playerPed2
        workingValue4 = "p_ld_stinger_s"
        stateFlag2 = "P_Stinger_S_Deploy"
        workingValue7 = 3.0
        playerPed(text3, workingValue4, stateFlag2, workingValue7)
        playerPed = Citizen
        playerPed = playerPed.Wait
        text3 = 0
        playerPed(text3)
      end
      playerPed = PlayEntityAnim
      text3 = playerPed2
      workingValue4 = "p_stinger_s_idle_deployed"
      stateFlag2 = "p_ld_stinger_s"
      workingValue7 = 1000.0
      workingValue9 = false
      stateFlag8 = true
      stateFlag10 = false
      stateFlag13 = 0.99
      stateFlag15 = 0
      playerPed(text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15)
    else
      playerPed = SetEntityAlpha
      text3 = playerPed2
      workingValue4 = 100
      stateFlag2 = false
      playerPed(text3, workingValue4, stateFlag2)
      playerPed = SetTimeout
      text3 = 0

      -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
      function workingValue4()
        local iterator, workingValue11
        iterator = DeleteEntity
        workingValue11 = playerPed2
        -- Beginner: Delete a GTA entity.
        iterator(workingValue11)
      end
      playerPed(text3, workingValue4)
    end
  end
  localValue5 = SetModelAsNoLongerNeeded
  localValue6 = -874338148
  localValue5(localValue6)
  localValue5 = RemoveAnimDict
  localValue6 = "p_ld_stinger_s"
  localValue5(localValue6)
end

-- === HELPER FUNCTION (decompiler name: stateFlag24; parameters: none) ===
function stateFlag24()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = stateFlag23
  localValue3 = GetOffsetFromEntityInWorldCoords
  localValue4 = localValue1
  localValue5 = -0.2
  localValue6 = 2.0
  cmgOperation3 = 0.0
  localValue3 = localValue3(localValue4, localValue5, localValue6, cmgOperation3)
  localValue4 = GetEntityHeading
  localValue5 = localValue1
  -- Beginner: result below is heading.
  localValue4 = localValue4(localValue5)
  localValue5 = GetEntityForwardVector
  localValue6 = localValue1
  localValue5 = localValue5(localValue6)
  localValue6 = true
  localValue2(localValue3, localValue4, localValue5, localValue6)
end
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
stateFlag25 = 1.0
stateFlag26 = RMenu
workingValue13 = stateFlag26
stateFlag26 = stateFlag26.Get
text13 = "cmgscenemenu"
text14 = "main"
-- Beginner: result below is menu.
stateFlag26 = stateFlag26(workingValue13, text13, text14)
workingValue13 = nil

-- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
function text13()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3
  localValue1 = CMG
  localValue1 = localValue1.inOrganHesit
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.IsAnyMenuOfTypeVisible
    localValue2 = "cmgscenemenu"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = RageUI
      localValue1 = localValue1.CloseAll
      localValue1()
      return
    end
  end
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local iterator, workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Object Menu"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
    end
    workingValue16 = RMenu
    workingValue17 = workingValue16
    workingValue16 = workingValue16.Get
    modelHash = "cmgscenemenu"
    modelValue = "objects"
    workingValue16, workingValue17, modelHash, modelValue = workingValue16(workingValue17, modelHash, modelValue)
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Speed Zone"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
    end
    workingValue16 = RMenu
    workingValue17 = workingValue16
    workingValue16 = workingValue16.Get
    modelHash = "cmgscenemenu"
    modelValue = "speedZone"
    workingValue16, workingValue17, modelHash, modelValue = workingValue16(workingValue17, modelHash, modelValue)
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue)
    iterator = text16
    iterator = iterator()
    if iterator then
      iterator = RageUI
      iterator = iterator.Button
      workingValue11 = "Spike Strip Menu"
      text12 = nil
      stateFlag27 = true

      -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
      function text17(localValue12, localValue22, localValue32)
      end
      workingValue16 = RMenu
      workingValue17 = workingValue16
      workingValue16 = workingValue16.Get
      modelHash = "cmgscenemenu"
      modelValue = "spikes"
      workingValue16, workingValue17, modelHash, modelValue = workingValue16(workingValue17, modelHash, modelValue)
      -- Beginner: Draw a selectable RageUI menu button.
      iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue)
    end
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Scene Containment"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
    end
    workingValue16 = RMenu
    workingValue17 = workingValue16
    workingValue16 = workingValue16.Get
    modelHash = "cmgscenemenu"
    modelValue = "scenecontainment"
    workingValue16, workingValue17, modelHash, modelValue = workingValue16(workingValue17, modelHash, modelValue)
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Close Menu"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation, stateFlag28, serverEventCall, text18
      if localValue32 then
        localValue42 = RageUI
        localValue42 = localValue42.Visible
        cmgOperation = RMenu
        stateFlag28 = cmgOperation
        cmgOperation = cmgOperation.Get
        serverEventCall = "cmgscenemenu"
        text18 = "main"
        -- Beginner: result below is menu.
        cmgOperation = cmgOperation(stateFlag28, serverEventCall, text18)
        stateFlag28 = false
        localValue42(cmgOperation, stateFlag28)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local iterator, workingValue11
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "objects"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local iterator, workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue, playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9, stateFlag11
    iterator = RageUI
    iterator = iterator.BackspaceMenuCallback

    -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
    function workingValue11()
      local localValue12, localValue22
      localValue12 = stateFlag16
      localValue12()
    end
    iterator(workingValue11)
    iterator = RageUI
    iterator = iterator.List
    workingValue11 = "Spawn Object"
    text12 = text6
    stateFlag27 = text10.object
    text17 = nil
    workingValue16 = {}
    workingValue17 = true

    -- === HELPER FUNCTION: modelHash(localValue12, localValue22, localValue32, localValue42) ===
    function modelHash(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation, stateFlag28, serverEventCall, text18, number2, workingValue18, workingValue3, text4, position, workingValue6, workingValue8, stateFlag7, workingValue10
      if localValue32 then
        cmgOperation = CMG
        cmgOperation = cmgOperation.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgOperation = cmgOperation()
        if 0 == cmgOperation then
          cmgOperation = stateFlag16
          cmgOperation()
          stateFlag28 = text10.object
          cmgOperation = text2
          cmgOperation = cmgOperation[stateFlag28]
          serverEventCall = text10.amount
          stateFlag28 = rageUiOperation4
          stateFlag28 = stateFlag28[serverEventCall]
          serverEventCall = 1
          text18 = stateFlag28
          number2 = 1
          for workingValue18 = serverEventCall, text18, number2 do
            workingValue3 = stateFlag14
            text4 = cmgOperation[2]
            position = cmgOperation[3]
            workingValue6 = cmgOperation[4]
            workingValue8 = nil
            stateFlag7 = true
            workingValue10 = workingValue18
            workingValue3(text4, position, workingValue6, workingValue8, stateFlag7, workingValue10)
          end
          serverEventCall = TriggerServerEvent
          text18 = "b5e4673fdb"
          number2 = cmgOperation[1]
          workingValue18 = stateFlag28
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b5e4673fdb".
          serverEventCall(text18, number2, workingValue18)
          serverEventCall = stateFlag18
          serverEventCall()
        else
          cmgOperation = notify
          stateFlag28 = "~r~You can not use the traffic menu in a vehicle"
          -- Beginner: Show a notification to the player.
          cmgOperation(stateFlag28)
        end
      end
      if localValue22 then
        cmgOperation = text10.object
        if cmgOperation ~= localValue42 then
          text10.object = localValue42
          cmgOperation = stateFlag18
          cmgOperation()
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash)
    iterator = RageUI
    iterator = iterator.List
    workingValue11 = "Number To Place"
    text12 = rageUiOperation4
    stateFlag27 = text10.amount
    text17 = ""
    workingValue16 = {}
    workingValue17 = true

    -- === HELPER FUNCTION: modelHash(localValue12, localValue22, localValue32, localValue42) ===
    function modelHash(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation
      if localValue22 then
        cmgOperation = text10.amount
        if cmgOperation ~= localValue42 then
          text10.amount = localValue42
          cmgOperation = stateFlag18
          cmgOperation()
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash)
    iterator = RageUI
    iterator = iterator.List
    workingValue11 = "Seperation (m)"
    text12 = rageUiOperation5
    stateFlag27 = text10.seperation
    text17 = ""
    workingValue16 = {}
    workingValue17 = true

    -- === HELPER FUNCTION: modelHash(localValue12, localValue22, localValue32, localValue42) ===
    function modelHash(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation
      if localValue22 then
        cmgOperation = text10.seperation
        if cmgOperation ~= localValue42 then
          text10.seperation = localValue42
          cmgOperation = stateFlag18
          cmgOperation()
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash)
    iterator = RageUI
    iterator = iterator.List
    workingValue11 = "Rotation (degrees)"
    text12 = text19
    stateFlag27 = text10.degrees
    text17 = ""
    workingValue16 = {}
    workingValue17 = true

    -- === HELPER FUNCTION: modelHash(localValue12, localValue22, localValue32, localValue42) ===
    function modelHash(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation
      if localValue22 then
        cmgOperation = text10.degrees
        if cmgOperation ~= localValue42 then
          text10.degrees = localValue42
          cmgOperation = stateFlag18
          cmgOperation()
        end
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Delete Object"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42
      if localValue32 then
        localValue42 = stateFlag19
        localValue42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Delete All Objects"
    text12 = "Deletes all objects you have placed"
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42
      if localValue32 then
        localValue42 = stateFlag21
        localValue42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17)
    workingValue11 = text10.object
    iterator = text2
    iterator = iterator[workingValue11]
    workingValue11 = pairs
    text12 = text10.previewObjects
    workingValue11, text12, stateFlag27, text17 = workingValue11(text12)
    for workingValue16, workingValue17 in workingValue11, text12, stateFlag27, text17 do
      modelHash = DoesEntityExist
      modelValue = workingValue17
      modelHash = modelHash(modelValue)
      if modelHash then
        modelHash = GetEntityCoords
        modelValue = PlayerPedId
        modelValue, playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9, stateFlag11 = modelValue()
        -- Beginner: result below is entityCoords.
        modelHash = modelHash(modelValue, playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9, stateFlag11)
        modelValue = GetEntityForwardVector
        playerPed3 = PlayerPedId
        playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9, stateFlag11 = playerPed3()
        modelValue = modelValue(playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9, stateFlag11)
        workingValue2 = text10.seperation
        playerPed3 = rageUiOperation5
        playerPed3 = playerPed3[workingValue2]
        workingValue2 = workingValue16 - 1
        playerPed3 = playerPed3 * workingValue2
        playerPed3 = 3.0 + playerPed3
        modelValue = modelValue * playerPed3
        modelHash = modelHash + modelValue
        modelValue = iterator[4]
        if modelValue then
          modelValue = iterator[4]
          playerPed3 = SetEntityCoordsNoOffset
          workingValue2 = workingValue17
          stateFlag = modelHash.x
          workingValue5 = modelHash.y
          stateFlag3 = modelHash.z
          stateFlag4 = false
          stateFlag6 = false
          stateFlag9 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          playerPed3(workingValue2, stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9)
          playerPed3 = PlaceObjectOnGroundProperly
          workingValue2 = workingValue17
          playerPed3(workingValue2)
          playerPed3 = GetEntityCoords
          workingValue2 = workingValue17
          stateFlag = true
          -- Beginner: result below is entityCoords.
          playerPed3 = playerPed3(workingValue2, stateFlag)
          workingValue2 = SetEntityCoordsNoOffset
          stateFlag = workingValue17
          workingValue5 = playerPed3.x
          stateFlag3 = playerPed3.y
          stateFlag4 = playerPed3.z
          stateFlag4 = stateFlag4 + modelValue
          stateFlag6 = false
          stateFlag9 = false
          stateFlag11 = false
          -- Beginner: Move/teleport an entity to new coordinates.
          workingValue2(stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9, stateFlag11)
        else
          modelValue = SetEntityCoordsNoOffset
          playerPed3 = workingValue17
          workingValue2 = modelHash.x
          stateFlag = modelHash.y
          workingValue5 = modelHash.z
          stateFlag3 = false
          stateFlag4 = false
          stateFlag6 = false
          modelValue(playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6)
          modelValue = PlaceObjectOnGroundProperly
          playerPed3 = workingValue17
          modelValue(playerPed3)
        end
        modelValue = SetEntityNoCollisionEntity
        playerPed3 = workingValue17
        workingValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workingValue2 = workingValue2()
        stateFlag = true
        modelValue(playerPed3, workingValue2, stateFlag)
        modelValue = SetEntityNoCollisionEntity
        playerPed3 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed3 = playerPed3()
        workingValue2 = workingValue17
        stateFlag = true
        modelValue(playerPed3, workingValue2, stateFlag)
        modelValue = SetEntityHeading
        playerPed3 = workingValue17
        workingValue2 = GetEntityHeading
        stateFlag = PlayerPedId
        stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9, stateFlag11 = stateFlag()
        -- Beginner: result below is heading.
        workingValue2 = workingValue2(stateFlag, workingValue5, stateFlag3, stateFlag4, stateFlag6, stateFlag9, stateFlag11)
        workingValue5 = text10.degrees
        stateFlag = text19
        stateFlag = stateFlag[workingValue5]
        workingValue2 = workingValue2 + stateFlag
        -- Beginner: Change the direction an entity is facing.
        modelValue(playerPed3, workingValue2)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local iterator, workingValue11
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "speedZone"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local iterator, workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash
    iterator = RageUI
    iterator = iterator.List
    workingValue11 = "Radius"
    text12 = cmgOperation2
    stateFlag27 = text10.speedRad
    text17 = nil
    workingValue16 = {}
    workingValue17 = true

    -- === HELPER FUNCTION: modelHash(localValue12, localValue22, localValue32, localValue42) ===
    function modelHash(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation, stateFlag28
      if localValue22 then
        text10.speedRad = localValue42
        cmgOperation = tonumber
        stateFlag28 = cmgOperation2
        stateFlag28 = stateFlag28[localValue42]
        cmgOperation = cmgOperation(stateFlag28)
        text7 = cmgOperation
      end
    end
    -- Beginner: Draw a RageUI list selector.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash)
    iterator = RageUI
    iterator = iterator.List
    workingValue11 = "Speed"
    text12 = rageUiOperation3
    stateFlag27 = text10.speed
    text17 = nil
    workingValue16 = {}
    workingValue17 = true

    -- === HELPER FUNCTION: modelHash(localValue12, localValue22, localValue32, localValue42) ===
    function modelHash(localValue12, localValue22, localValue32, localValue42)
      local cmgOperation, stateFlag28
      if localValue22 then
        text10.speed = localValue42
        cmgOperation = tonumber
        stateFlag28 = rageUiOperation3
        stateFlag28 = stateFlag28[localValue42]
        cmgOperation = cmgOperation(stateFlag28)
        stateFlag5 = cmgOperation
      end
    end
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Create Speedzone"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation, stateFlag28, serverEventCall, text18
      if localValue32 then
        localValue42 = text7
        if 0 == localValue42 then
          localValue42 = tCMG
          localValue42 = localValue42.notify
          cmgOperation = "~r~Please set a radius"
          -- Beginner: Show a notification to the player.
          localValue42(cmgOperation)
        else
          localValue42 = stateFlag5
          if 0 == localValue42 then
            localValue42 = tCMG
            localValue42 = localValue42.notify
            cmgOperation = "~r~Please set a speed"
            localValue42(cmgOperation)
          else
            localValue42 = TriggerServerEvent
            cmgOperation = "a472b07a4b"
            stateFlag28 = CMG
            stateFlag28 = stateFlag28.getPlayerCoords
            -- Beginner: result below is playerCoords.
            stateFlag28 = stateFlag28()
            serverEventCall = stateFlag5
            serverEventCall = serverEventCall + 0.0
            text18 = text7
            text18 = text18 + 0.0
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a472b07a4b".
            localValue42(cmgOperation, stateFlag28, serverEventCall, text18)
            localValue42 = tCMG
            localValue42 = localValue42.notify
            cmgOperation = "~b~Speed zone created"
            -- Beginner: Show a notification to the player.
            localValue42(cmgOperation)
          end
        end
      end
    end
    workingValue16 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Delete Speedzone"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation, stateFlag28, serverEventCall, text18, number2, workingValue18, workingValue3, text4, position, workingValue6
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.getPlayerCoords
        -- Beginner: result below is playerCoords.
        localValue42 = localValue42()
        cmgOperation = nil
        stateFlag28 = 250.0
        serverEventCall = pairs
        text18 = text
        serverEventCall, text18, number2, workingValue18 = serverEventCall(text18)
        for workingValue3, text4 in serverEventCall, text18, number2, workingValue18 do
          position = text4.position
          position = localValue42 - position
          position = #position
          if stateFlag28 > position then
            workingValue6 = text4.radius
            if position < workingValue6 then
              cmgOperation = workingValue3
              stateFlag28 = position
            end
          end
        end
        if cmgOperation then
          serverEventCall = TriggerServerEvent
          text18 = "a1ee24f902"
          number2 = cmgOperation
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a1ee24f902".
          serverEventCall(text18, number2)
          serverEventCall = tCMG
          serverEventCall = serverEventCall.notify
          text18 = "~r~Speed zone removed"
          -- Beginner: Show a notification to the player.
          serverEventCall(text18)
        end
      end
    end
    workingValue16 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local iterator, workingValue11
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "spikes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local iterator, workingValue11, text12, stateFlag27, text17
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Place Spike"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation, stateFlag28, serverEventCall, text18, number2, workingValue18, workingValue3, text4
      if localValue22 then
        localValue42 = stateFlag24
        localValue42()
      end
      if localValue32 then
        localValue42 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue42 = localValue42()
        cmgOperation = rageUiOperation2
        localValue42 = localValue42 - cmgOperation
        cmgOperation = 20000
        if not (localValue42 > cmgOperation) then
          localValue42 = CMG
          localValue42 = localValue42.isDevMode
          localValue42 = localValue42()
          if not localValue42 then
            goto continueAtStep44
          end
        end
        localValue42 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue42 = localValue42()
        cmgOperation = GetOffsetFromEntityInWorldCoords
        stateFlag28 = localValue42
        serverEventCall = -0.2
        text18 = 2.0
        number2 = 0.0
        cmgOperation = cmgOperation(stateFlag28, serverEventCall, text18, number2)
        stateFlag28 = GetEntityHeading
        serverEventCall = localValue42
        -- Beginner: result below is heading.
        stateFlag28 = stateFlag28(serverEventCall)
        serverEventCall = GetEntityForwardVector
        text18 = localValue42
        serverEventCall = serverEventCall(text18)
        text18 = TriggerServerEvent
        number2 = "280e848c4b"
        workingValue18 = cmgOperation
        workingValue3 = stateFlag28
        text4 = serverEventCall
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "280e848c4b".
        text18(number2, workingValue18, workingValue3, text4)
        text18 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        text18 = text18()
        rageUiOperation2 = text18
        goto continueAtStep47
        ::continueAtStep44::
        localValue42 = notify
        cmgOperation = "~r~You have created a spike strip recently. Please wait."
        -- Beginner: Show a notification to the player.
        localValue42(cmgOperation)
      end
      ::continueAtStep47::
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Delete Spike"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation, stateFlag28, serverEventCall, text18, number2, workingValue18, workingValue3, text4, position
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.getPlayerCoords
        -- Beginner: result below is playerCoords.
        localValue42 = localValue42()
        cmgOperation = pairs
        stateFlag28 = text11
        cmgOperation, stateFlag28, serverEventCall, text18 = cmgOperation(stateFlag28)
        for number2, workingValue18 in cmgOperation, stateFlag28, serverEventCall, text18 do
          workingValue3 = localValue42 - workingValue18
          workingValue3 = #workingValue3
          if workingValue3 < 5.0 then
            workingValue3 = TriggerServerEvent
            text4 = "21ef28a0d0"
            position = workingValue18
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21ef28a0d0".
            workingValue3(text4, position)
            break
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "scenecontainment"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local iterator, workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue, playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3
    iterator = CMG
    iterator = iterator.hasClientPermission
    workingValue11 = "scenemenu.prefabs"
    iterator = iterator(workingValue11)
    if iterator then
      iterator = RageUI
      iterator = iterator.Button
      workingValue11 = "~g~Create New Area"
      text12 = "Creates a new area from all your currently placed objects"
      stateFlag27 = workingValue
      stateFlag27 = #stateFlag27
      stateFlag27 = stateFlag27 > 0

      -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
      function text17(localValue12, localValue22, localValue32)
        local localValue42
        if localValue32 then
          localValue42 = ""
          text8 = localValue42
        end
      end
      workingValue16 = RMenu
      workingValue17 = workingValue16
      workingValue16 = workingValue16.Get
      modelHash = "cmgscenemenu"
      modelValue = "newscenecontainement"
      workingValue16, workingValue17, modelHash, modelValue, playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3 = workingValue16(workingValue17, modelHash, modelValue)
      -- Beginner: Draw a selectable RageUI menu button.
      iterator(workingValue11, text12, stateFlag27, text17, workingValue16, workingValue17, modelHash, modelValue, playerPed3, workingValue2, stateFlag, workingValue5, stateFlag3)
    end
    iterator = RageUI
    iterator = iterator.Separator
    workingValue11 = "Nearby Area Templates"
    iterator(workingValue11)
    iterator = text9
    workingValue11 = CMG
    workingValue11 = workingValue11.getPlayerCoords
    -- Beginner: result below is playerCoords.
    workingValue11 = workingValue11()
    text12 = pairs
    stateFlag27 = iterator
    text12, stateFlag27, text17, workingValue16 = text12(stateFlag27)
    for workingValue17, modelHash in text12, stateFlag27, text17, workingValue16 do
      modelValue = modelHash.position
      modelValue = modelValue - workingValue11
      modelValue = #modelValue
      modelHash.distance = modelValue
    end
    text12 = table
    text12 = text12.sort
    stateFlag27 = iterator

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22) ===
    function text17(localValue12, localValue22)
      local localValue32, localValue42
      localValue32 = localValue12.distance
      localValue42 = localValue22.distance
      localValue32 = localValue32 < localValue42
      return localValue32
    end
    text12(stateFlag27, text17)
    text12 = pairs
    stateFlag27 = iterator
    text12, stateFlag27, text17, workingValue16 = text12(stateFlag27)
    for workingValue17, modelHash in text12, stateFlag27, text17, workingValue16 do
      modelValue = modelHash.distance
      playerPed3 = 200.0
      if modelValue > playerPed3 then
        break
      end
      modelValue = RageUI
      modelValue = modelValue.Button
      playerPed3 = modelHash.name
      workingValue2 = string
      workingValue2 = workingValue2.format
      stateFlag = [[
Distance: %sm

Pressing this will place down a template for 2 minutes.]]
      workingValue5 = math
      workingValue5 = workingValue5.floor
      stateFlag3 = modelHash.distance
      workingValue5, stateFlag3 = workingValue5(stateFlag3)
      workingValue2 = workingValue2(stateFlag, workingValue5, stateFlag3)
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue12, localValue22, localValue32) ===
      function workingValue5(localValue12, localValue22, localValue32)
        local localValue42, cmgOperation, stateFlag28
        if localValue32 then
          localValue42 = CMG
          localValue42 = localValue42.getPlayerVehicle
          -- Beginner: result below is currentVehicle.
          localValue42 = localValue42()
          if 0 == localValue42 then
            localValue42 = TriggerServerEvent
            cmgOperation = "6d8667b87e"
            stateFlag28 = modelHash.id
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6d8667b87e".
            localValue42(cmgOperation, stateFlag28)
          else
            localValue42 = notify
            cmgOperation = source
            stateFlag28 = "~r~You must be outside of a vehicle to place down a template."
            -- Beginner: Show a notification to the player.
            localValue42(cmgOperation, stateFlag28)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      modelValue(playerPed3, workingValue2, stateFlag, workingValue5)
      modelValue = CMG
      modelValue = modelValue.hasClientPermission
      playerPed3 = "scenemenu.prefabs"
      modelValue = modelValue(playerPed3)
      if modelValue then
        modelValue = RageUI
        modelValue = modelValue.Button
        playerPed3 = "~r~Delete: "
        workingValue2 = modelHash.name
        playerPed3 = playerPed3 .. workingValue2
        workingValue2 = "Delete this scene containment template"
        stateFlag = true

        -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue12, localValue22, localValue32) ===
        function workingValue5(localValue12, localValue22, localValue32)
          local localValue42, cmgOperation, stateFlag28
          if localValue32 then
            localValue42 = TriggerServerEvent
            cmgOperation = "581770225f"
            stateFlag28 = modelHash.id
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "581770225f".
            localValue42(cmgOperation, stateFlag28)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        modelValue(playerPed3, workingValue2, stateFlag, workingValue5)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local iterator, workingValue11
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "newscenecontainement"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local iterator, workingValue11, text12, stateFlag27, text17, workingValue16
    iterator = RageUI
    iterator = iterator.ButtonWithStyle
    workingValue11 = "Name"
    text12 = "The name you want this scene containment to show as."
    stateFlag27 = {}
    text17 = text8
    stateFlag27.RightLabel = text17
    text17 = true

    -- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue12, localValue22, localValue32) ===
    function workingValue16(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation, stateFlag28, serverEventCall
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.clientPrompt
        cmgOperation = "Enter Name"
        stateFlag28 = ""

        -- === HELPER FUNCTION: serverEventCall(localValue13) ===
        function serverEventCall(localValue13)
          local workingValue12
          text8 = localValue13
        end
        localValue42(cmgOperation, stateFlag28, serverEventCall)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17, workingValue16)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "~b~Create New Scene Containment"
    text12 = "Creates a new scene containment area"
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation
      if localValue32 then
        localValue42 = stateFlag22
        cmgOperation = text8
        localValue42(cmgOperation)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local iterator, workingValue11
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3)
end
rageUiOperation(stateFlag25, stateFlag26, workingValue13, text13)
rageUiOperation = RegisterNetEvent
stateFlag25 = "acaf25d389"
-- Beginner: this function handles network event "acaf25d389".

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: none) ===
function stateFlag26()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "main"
  localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2 = localValue2(localValue3, localValue4, localValue5)
  -- Beginner: result below is menuVisible.
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2)
  localValue1 = not localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "cmgscenemenu"
  localValue6 = "main"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasPoliceCallsign
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.inOrganHesit
      localValue2 = localValue2()
      if not localValue2 then
        localValue2 = RMenu
        localValue3 = localValue2
        localValue2 = localValue2.Get
        localValue4 = "cmgscenemenu"
        localValue5 = "main"
        -- Beginner: result below is menu.
        localValue2 = localValue2(localValue3, localValue4, localValue5)
        localValue3 = localValue2
        localValue2 = localValue2.SetSubtitle
        localValue4 = "~b~MPD~w~: "
        localValue5 = CMG
        localValue5 = localValue5.getPoliceCallsign
        localValue5 = localValue5()
        localValue6 = " - "
        cmgOperation3 = CMG
        cmgOperation3 = cmgOperation3.getPoliceRank
        cmgOperation3 = cmgOperation3()
        heading = " - "
        coords = CMG
        coords = coords.getPlayerName
        playerPed2 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        playerPed2 = playerPed2()
        coords = coords(playerPed2)
        localValue4 = localValue4 .. localValue5 .. localValue6 .. cmgOperation3 .. heading .. coords
        localValue2(localValue3, localValue4)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "acaf25d389".
rageUiOperation(stateFlag25, stateFlag26)
rageUiOperation = RegisterNetEvent
stateFlag25 = "377fce6749"
-- Beginner: this function handles network event "377fce6749".

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: none) ===
function stateFlag26()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "vigilantespikes"
  localValue2, localValue3, localValue4, localValue5, localValue6 = localValue2(localValue3, localValue4, localValue5)
  -- Beginner: result below is menuVisible.
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
  localValue1 = not localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "cmgscenemenu"
  localValue6 = "vigilantespikes"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, localValue6)
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "377fce6749".
rageUiOperation(stateFlag25, stateFlag26)
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
stateFlag25 = 1.0
stateFlag26 = RMenu
workingValue13 = stateFlag26
stateFlag26 = stateFlag26.Get
text13 = "cmgscenemenu"
text14 = "vigilantespikes"
-- Beginner: result below is menu.
stateFlag26 = stateFlag26(workingValue13, text13, text14)
workingValue13 = nil

-- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
function text13()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgscenemenu"
  localValue5 = "vigilantespikes"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local iterator, workingValue11, text12, stateFlag27, text17
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Place Spike"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation, stateFlag28, serverEventCall, text18, number2, workingValue18, workingValue3, text4
      if localValue22 then
        localValue42 = stateFlag24
        localValue42()
      end
      if localValue32 then
        localValue42 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue42 = localValue42()
        cmgOperation = rageUiOperation2
        localValue42 = localValue42 - cmgOperation
        cmgOperation = 20000
        if not (localValue42 > cmgOperation) then
          localValue42 = CMG
          localValue42 = localValue42.isDevMode
          localValue42 = localValue42()
          if not localValue42 then
            goto continueAtStep44
          end
        end
        localValue42 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue42 = localValue42()
        cmgOperation = GetOffsetFromEntityInWorldCoords
        stateFlag28 = localValue42
        serverEventCall = -0.2
        text18 = 2.0
        number2 = 0.0
        cmgOperation = cmgOperation(stateFlag28, serverEventCall, text18, number2)
        stateFlag28 = GetEntityHeading
        serverEventCall = localValue42
        -- Beginner: result below is heading.
        stateFlag28 = stateFlag28(serverEventCall)
        serverEventCall = GetEntityForwardVector
        text18 = localValue42
        serverEventCall = serverEventCall(text18)
        text18 = TriggerServerEvent
        number2 = "280e848c4b"
        workingValue18 = cmgOperation
        workingValue3 = stateFlag28
        text4 = serverEventCall
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "280e848c4b".
        text18(number2, workingValue18, workingValue3, text4)
        text18 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        text18 = text18()
        rageUiOperation2 = text18
        goto continueAtStep47
        ::continueAtStep44::
        localValue42 = notify
        cmgOperation = "~r~You have created a spike strip recently. Please wait."
        -- Beginner: Show a notification to the player.
        localValue42(cmgOperation)
      end
      ::continueAtStep47::
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17)
    iterator = RageUI
    iterator = iterator.Button
    workingValue11 = "Delete Spike"
    text12 = nil
    stateFlag27 = true

    -- === HELPER FUNCTION (decompiler name: text17; parameters: localValue12, localValue22, localValue32) ===
    function text17(localValue12, localValue22, localValue32)
      local localValue42, cmgOperation, stateFlag28, serverEventCall, text18, number2, workingValue18, workingValue3, text4, position
      if localValue32 then
        localValue42 = CMG
        localValue42 = localValue42.getPlayerCoords
        -- Beginner: result below is playerCoords.
        localValue42 = localValue42()
        cmgOperation = pairs
        stateFlag28 = text11
        cmgOperation, stateFlag28, serverEventCall, text18 = cmgOperation(stateFlag28)
        for number2, workingValue18 in cmgOperation, stateFlag28, serverEventCall, text18 do
          workingValue3 = localValue42 - workingValue18
          workingValue3 = #workingValue3
          if workingValue3 < 5.0 then
            workingValue3 = TriggerServerEvent
            text4 = "21ef28a0d0"
            position = workingValue18
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "21ef28a0d0".
            workingValue3(text4, position)
            break
          end
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    iterator(workingValue11, text12, stateFlag27, text17)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local iterator, workingValue11
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3)
end
rageUiOperation(stateFlag25, stateFlag26, workingValue13, text13)
rageUiOperation = RegisterNetEvent
stateFlag25 = "b7b8478d92"
-- Beginner: this function handles network event "b7b8478d92".

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue1, localValue2, localValue3) ===
function stateFlag26(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, cmgOperation3, heading
  localValue4 = stateFlag23
  localValue5 = localValue1
  localValue6 = localValue2
  cmgOperation3 = localValue3
  heading = false
  localValue4(localValue5, localValue6, cmgOperation3, heading)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b7b8478d92".
rageUiOperation(stateFlag25, stateFlag26)
rageUiOperation = RegisterNetEvent
stateFlag25 = "99b0254c0a"
-- Beginner: this function handles network event "99b0254c0a".

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: localValue1) ===
function stateFlag26(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords
  localValue2 = pairs
  localValue3 = text11
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, cmgOperation3 in localValue2, localValue3, localValue4, localValue5 do
    heading = localValue1 - cmgOperation3
    heading = #heading
    if heading < 15.0 then
      heading = DeleteEntity
      coords = localValue6
      -- Beginner: Delete a GTA entity.
      heading(coords)
      heading = text11
      heading[localValue6] = nil
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "99b0254c0a".
rageUiOperation(stateFlag25, stateFlag26)
rageUiOperation = Citizen
rageUiOperation = rageUiOperation.CreateThread

-- === HELPER FUNCTION (decompiler name: stateFlag25; parameters: none) ===
function stateFlag25()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13, stateFlag15, stateFlag17, indexValue, stateFlag20, number
  while true do
    localValue1 = 1000
    localValue2 = CMG
    localValue2 = localValue2.getPlayerVehicle
    localValue2, localValue3 = localValue2()
    if 0 ~= localValue2 and localValue3 then
      localValue4 = CMG
      localValue4 = localValue4.getPlayerCoords
      -- Beginner: result below is playerCoords.
      localValue4 = localValue4()
      localValue5 = pairs
      localValue6 = text11
      localValue5, localValue6, cmgOperation3, heading = localValue5(localValue6)
      for coords, playerPed2 in localValue5, localValue6, cmgOperation3, heading do
        playerPed = localValue4 - playerPed2
        playerPed = #playerPed
        if playerPed < 20.0 then
          if playerPed < 5.0 then
            text3 = pairs
            workingValue4 = text5
            text3, workingValue4, stateFlag2, workingValue7 = text3(workingValue4)
            for workingValue9, stateFlag8 in text3, workingValue4, stateFlag2, workingValue7 do
              stateFlag10 = GetEntityBoneIndexByName
              stateFlag13 = localValue2
              stateFlag15 = stateFlag8.bone
              stateFlag10 = stateFlag10(stateFlag13, stateFlag15)
              if 0 ~= stateFlag10 then
                stateFlag13 = GetWorldPositionOfEntityBone
                stateFlag15 = localValue2
                stateFlag17 = stateFlag10
                stateFlag13 = stateFlag13(stateFlag15, stateFlag17)
                stateFlag15 = stateFlag13 - playerPed2
                stateFlag15 = #stateFlag15
                stateFlag17 = 2.5
                if stateFlag15 < stateFlag17 then
                  stateFlag15 = SetVehicleTyreBurst
                  stateFlag17 = localValue2
                  indexValue = stateFlag8.index
                  stateFlag20 = false
                  number = 1000.0
                  stateFlag15(stateFlag17, indexValue, stateFlag20, number)
                end
              end
            end
          end
          localValue1 = 0
        elseif playerPed < 50.0 then
          localValue1 = 100
        end
      end
    end
    localValue4 = Citizen
    localValue4 = localValue4.Wait
    localValue5 = localValue1
    localValue4(localValue5)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation(stateFlag25)
rageUiOperation = false
stateFlag25 = 1000.0

-- === HELPER FUNCTION (decompiler name: stateFlag26; parameters: none) ===
function stateFlag26()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  localValue1, localValue2 = localValue1()
  if 0 ~= localValue1 and localValue2 then
    localValue3 = false
    localValue4 = 1000.0
    localValue5 = CMG
    localValue5 = localValue5.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue5 = localValue5()
    localValue6 = CMG
    localValue6 = localValue6.getPlayerBucket
    localValue6 = localValue6()
    if 333 ~= localValue6 then
      localValue6 = CMG
      localValue6 = localValue6.inEvent
      localValue6 = localValue6()
      if not localValue6 then
        localValue6 = pairs
        cmgOperation3 = text
        localValue6, cmgOperation3, heading, coords = localValue6(cmgOperation3)
        for playerPed2, playerPed in localValue6, cmgOperation3, heading, coords do
          text3 = playerPed.position
          text3 = text3 - localValue5
          text3 = #text3
          workingValue4 = playerPed.radius
          if text3 < workingValue4 then
            localValue3 = true
            text3 = playerPed.speed
            if localValue4 > text3 then
              localValue4 = playerPed.speed
            end
          end
        end
      end
    end
    if localValue3 then
      localValue6 = rageUiOperation
      if localValue6 then
        localValue6 = stateFlag25
        if localValue6 == localValue4 then
          goto continueAtStep58
        end
      end
      localValue6 = SetVehicleMaxSpeed
      cmgOperation3 = localValue1
      heading = localValue4 / 2.236936
      localValue6(cmgOperation3, heading)
      localValue6 = true
      rageUiOperation = localValue6
      stateFlag25 = localValue4
      ::continueAtStep58::
      localValue6 = drawNativeNotification
      cmgOperation3 = "Hold up! There is a temporary ~b~speed restriction ~w~in this area."
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue6(cmgOperation3)
    else
      localValue6 = rageUiOperation
      if localValue6 then
        localValue6 = SetVehicleMaxSpeed
        cmgOperation3 = localValue1
        heading = -1.0
        localValue6(cmgOperation3, heading)
        localValue6 = false
        rageUiOperation = localValue6
        localValue6 = 1000.0
        stateFlag25 = localValue6
      end
    end
  end
end
workingValue13 = CMG
workingValue13 = workingValue13.createThreadOnTick
text13 = stateFlag26
text14 = "Speedzone"
-- Beginner: Run a helper every game frame while this script is active.
workingValue13(text13, text14)
workingValue13 = RegisterNetEvent
text13 = "a472b07a4b"
-- Beginner: this function handles network event "a472b07a4b".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text14(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3
  localValue5 = text
  localValue5 = localValue5[localValue1]
  if localValue5 then
    return
  end
  localValue5 = AddBlipForRadius
  localValue6 = localValue2.x
  cmgOperation3 = localValue2.y
  heading = localValue2.z
  coords = localValue4
  -- Beginner: result below is blipHandle.
  localValue5 = localValue5(localValue6, cmgOperation3, heading, coords)
  localValue6 = SetBlipColour
  cmgOperation3 = localValue5
  heading = 26
  localValue6(cmgOperation3, heading)
  localValue6 = SetBlipAlpha
  cmgOperation3 = localValue5
  heading = 120
  localValue6(cmgOperation3, heading)
  localValue6 = AddRoadNodeSpeedZone
  cmgOperation3 = localValue2.x
  heading = localValue2.y
  coords = localValue2.z
  playerPed2 = localValue4
  playerPed = localValue3
  text3 = false
  localValue6 = localValue6(cmgOperation3, heading, coords, playerPed2, playerPed, text3)
  cmgOperation3 = text
  heading = {}
  heading.position = localValue2
  heading.speed = localValue3
  heading.radius = localValue4
  heading.blip = localValue5
  heading.zone = localValue6
  cmgOperation3[localValue1] = heading
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a472b07a4b".
workingValue13(text13, text14)
workingValue13 = RegisterNetEvent
text13 = "a1ee24f902"
-- Beginner: this function handles network event "a1ee24f902".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = text
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = RemoveBlip
    localValue4 = localValue2.blip
    localValue3(localValue4)
    localValue3 = RemoveRoadNodeSpeedZone
    localValue4 = localValue2.zone
    localValue3(localValue4)
    localValue3 = text
    localValue3[localValue1] = nil
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a1ee24f902".
workingValue13(text13, text14)
workingValue13 = RegisterNetEvent
text13 = "e9ad367cfd"
-- Beginner: this function handles network event "e9ad367cfd".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = text9
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e9ad367cfd".
workingValue13(text13, text14)
workingValue13 = RegisterNetEvent
text13 = "c12e0fd364"
-- Beginner: this function handles network event "c12e0fd364".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2
  text9 = localValue1
end
workingValue13(text13, text14)
-- Beginner: this function handles network event "c12e0fd364".

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "police.onduty.permission"
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.hasClientPermission
    localValue3 = "prisonguard.onduty.permission"
    localValue2 = localValue2(localValue3)
    if not localValue2 then
      return
    end
  end
  localValue2 = pairs
  localValue3 = localValue1.objects
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, cmgOperation3 in localValue2, localValue3, localValue4, localValue5 do
    heading = nil
    coords = pairs
    playerPed2 = text2
    coords, playerPed2, playerPed, text3 = coords(playerPed2)
    for workingValue4, stateFlag2 in coords, playerPed2, playerPed, text3 do
      workingValue7 = stateFlag2[1]
      workingValue9 = cmgOperation3.name
      if workingValue7 == workingValue9 then
        heading = stateFlag2
        break
      end
    end
    if heading then
      coords = localValue1.placedObjects
      coords = coords[localValue6]
      if not coords then
        coords = CMG
        coords = coords.loadModel
        playerPed2 = heading[2]
        coords = coords(playerPed2)
        if coords then
          playerPed2 = CreateObjectNoOffset
          playerPed = coords
          text3 = cmgOperation3.position
          text3 = text3.x
          workingValue4 = cmgOperation3.position
          workingValue4 = workingValue4.y
          stateFlag2 = cmgOperation3.position
          stateFlag2 = stateFlag2.z
          workingValue7 = false
          workingValue9 = false
          stateFlag8 = false
          -- Beginner: result below is objectEntity.
          playerPed2 = playerPed2(playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8)
          playerPed = FreezeEntityPosition
          text3 = playerPed2
          workingValue4 = true
          -- Beginner: Freeze or unfreeze an entity in place.
          playerPed(text3, workingValue4)
          playerPed = SetEntityRotation
          text3 = playerPed2
          workingValue4 = cmgOperation3.rotation
          workingValue4 = workingValue4.x
          stateFlag2 = cmgOperation3.rotation
          stateFlag2 = stateFlag2.y
          workingValue7 = cmgOperation3.rotation
          workingValue7 = workingValue7.z
          workingValue9 = 2
          stateFlag8 = true
          playerPed(text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8)
          playerPed = SetEntityCollision
          text3 = playerPed2
          workingValue4 = false
          stateFlag2 = false
          playerPed(text3, workingValue4, stateFlag2)
          playerPed = SetCanClimbOnEntity
          text3 = playerPed2
          workingValue4 = false
          playerPed(text3, workingValue4)
          playerPed = localValue1.objectHandles
          playerPed[localValue6] = playerPed2
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text13; parameters: localValue1) ===
function text13(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords
  localValue2 = pairs
  localValue3 = localValue1.objectHandles
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, cmgOperation3 in localValue2, localValue3, localValue4, localValue5 do
    heading = DeleteEntity
    coords = cmgOperation3
    -- Beginner: Delete a GTA entity.
    heading(coords)
  end
  localValue2 = table
  localValue2 = localValue2.clear
  localValue3 = localValue1.objectHandles
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8
  localValue2 = math
  localValue2 = localValue2.sin
  localValue3 = GetNetworkTime
  -- Beginner: result below is networkTime.
  localValue3 = localValue3()
  localValue3 = localValue3 / 1000.0
  localValue2 = localValue2(localValue3)
  localValue3 = nil
  localValue4 = 2.0
  localValue5 = CMG
  localValue5 = localValue5.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue5 = localValue5()
  localValue6 = math
  localValue6 = localValue6.floor
  cmgOperation3 = math
  cmgOperation3 = cmgOperation3.abs
  heading = localValue2
  cmgOperation3 = cmgOperation3(heading)
  cmgOperation3 = 150.0 * cmgOperation3
  cmgOperation3 = 50 + cmgOperation3
  localValue6 = localValue6(cmgOperation3)
  cmgOperation3 = pairs
  heading = localValue1.objectHandles
  cmgOperation3, heading, coords, playerPed2 = cmgOperation3(heading)
  for playerPed, text3 in cmgOperation3, heading, coords, playerPed2 do
    workingValue4 = localValue1.objects
    workingValue4 = workingValue4[playerPed]
    workingValue4 = workingValue4.position
    workingValue4 = localValue5 - workingValue4
    workingValue4 = #workingValue4
    if localValue4 > workingValue4 then
      localValue3 = playerPed
      localValue4 = workingValue4
    end
    stateFlag2 = SetEntityAlpha
    workingValue7 = text3
    workingValue9 = localValue6
    stateFlag8 = true
    stateFlag2(workingValue7, workingValue9, stateFlag8)
  end
  if localValue3 then
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    cmgOperation3 = cmgOperation3()
    if 0 == cmgOperation3 then
      goto continueAtStep54
    end
  end
  return
  ::continueAtStep54::
  cmgOperation3 = drawNativeNotification
  heading = [[
Press ~INPUT_CONTEXT~ to place down the object.
Press ~INPUT_FRONTEND_DELETE~ to delete the object.]]
  -- Beginner: Show a GTA-style notification/help prompt.
  cmgOperation3(heading)
  cmgOperation3 = IsControlJustPressed
  heading = 0
  coords = 51
  cmgOperation3 = cmgOperation3(heading, coords)
  if cmgOperation3 then
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.setIgnoreRadialInputThisFrame
    cmgOperation3()
    cmgOperation3 = TriggerServerEvent
    heading = "90706e5309"
    coords = localValue1.id
    playerPed2 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90706e5309".
    cmgOperation3(heading, coords, playerPed2)
  end
  cmgOperation3 = IsControlJustPressed
  heading = 0
  coords = 214
  cmgOperation3 = cmgOperation3(heading, coords)
  if cmgOperation3 then
    cmgOperation3 = TriggerServerEvent
    heading = "efbe9eb340"
    coords = localValue1.id
    playerPed2 = localValue3
    cmgOperation3(heading, coords, playerPed2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2
  localValue2 = CMG
  localValue2 = localValue2.createArea
  localValue3 = string
  localValue3 = localValue3.format
  localValue4 = "scene_containment_%s"
  localValue5 = localValue1.id
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = localValue1.position
  localValue5 = 100.0
  localValue6 = 100.0
  cmgOperation3 = workingValue13
  heading = text13
  coords = text14
  playerPed2 = localValue1
  -- Beginner: Create an interaction area around a world position.
  localValue2(localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2)
  localValue2 = table
  localValue2 = localValue2.insert
  localValue3 = stateFlag12
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
end
eventHandler = RegisterNetEvent
text15 = "ad3e839b3e"
-- Beginner: this function handles network event "ad3e839b3e".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue14
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ad3e839b3e".
eventHandler(text15, workingValue15)
eventHandler = RegisterNetEvent
text15 = "1836c67900"
-- Beginner: this function handles network event "1836c67900".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, cmgOperation3 in localValue2, localValue3, localValue4, localValue5 do
    heading = workingValue14
    coords = cmgOperation3
    heading(coords)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1836c67900".
eventHandler(text15, workingValue15)
eventHandler = RegisterNetEvent
text15 = "fe73be5dd6"
-- Beginner: this function handles network event "fe73be5dd6".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2) ===
function workingValue15(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed
  localValue3 = pairs
  localValue4 = stateFlag12
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for cmgOperation3, heading in localValue3, localValue4, localValue5, localValue6 do
    coords = heading.id
    if coords == localValue1 then
      coords = heading.placedObjects
      coords[localValue2] = true
      coords = heading.objectHandles
      coords = coords[localValue2]
      if coords then
        playerPed2 = DeleteEntity
        playerPed = coords
        -- Beginner: Delete a GTA entity.
        playerPed2(playerPed)
      end
      playerPed2 = heading.objectHandles
      playerPed2[localValue2] = nil
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fe73be5dd6".
eventHandler(text15, workingValue15)
eventHandler = RegisterNetEvent
text15 = "90706e5309"
-- Beginner: this function handles network event "90706e5309".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2) ===
function workingValue15(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2, playerPed, text3, workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13
  localValue3 = pairs
  localValue4 = stateFlag12
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for cmgOperation3, heading in localValue3, localValue4, localValue5, localValue6 do
    coords = heading.id
    if coords == localValue1 then
      coords = heading.objects
      coords = coords[localValue2]
      playerPed2 = nil
      playerPed = pairs
      text3 = text2
      playerPed, text3, workingValue4, stateFlag2 = playerPed(text3)
      for workingValue7, workingValue9 in playerPed, text3, workingValue4, stateFlag2 do
        stateFlag8 = workingValue9[1]
        stateFlag10 = coords.name
        if stateFlag8 == stateFlag10 then
          playerPed2 = workingValue9
          break
        end
      end
      if not playerPed2 then
        return
      end
      playerPed = CMG
      playerPed = playerPed.loadModel
      text3 = playerPed2[2]
      playerPed = playerPed(text3)
      if not playerPed then
        return
      end
      text3 = CMG
      text3 = text3.requestEntitySpawn
      workingValue4 = "scenemenu_object"
      stateFlag2 = playerPed
      workingValue7 = coords.position
      text3(workingValue4, stateFlag2, workingValue7)
      text3 = CreateObjectNoOffset
      workingValue4 = playerPed
      stateFlag2 = coords.position
      stateFlag2 = stateFlag2.x
      workingValue7 = coords.position
      workingValue7 = workingValue7.y
      workingValue9 = coords.position
      workingValue9 = workingValue9.z
      stateFlag8 = true
      stateFlag10 = true
      stateFlag13 = true
      -- Beginner: result below is objectEntity.
      text3 = text3(workingValue4, stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13)
      workingValue4 = FreezeEntityPosition
      stateFlag2 = text3
      workingValue7 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workingValue4(stateFlag2, workingValue7)
      workingValue4 = SetEntityRotation
      stateFlag2 = text3
      workingValue7 = coords.rotation
      workingValue7 = workingValue7.x
      workingValue9 = coords.rotation
      workingValue9 = workingValue9.y
      stateFlag8 = coords.rotation
      stateFlag8 = stateFlag8.z
      stateFlag10 = 2
      stateFlag13 = false
      workingValue4(stateFlag2, workingValue7, workingValue9, stateFlag8, stateFlag10, stateFlag13)
      workingValue4 = table
      workingValue4 = workingValue4.insert
      stateFlag2 = workingValue
      workingValue7 = {}
      workingValue7.entity = text3
      workingValue7.modelHash = playerPed
      workingValue9 = NetworkGetNetworkIdFromEntity
      stateFlag8 = text3
      workingValue9 = workingValue9(stateFlag8)
      workingValue7.entityNetId = workingValue9
      workingValue4(stateFlag2, workingValue7)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "90706e5309".
eventHandler(text15, workingValue15)
eventHandler = RegisterNetEvent
text15 = "9ecb0e4077"
-- Beginner: this function handles network event "9ecb0e4077".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2
  localValue2 = pairs
  localValue3 = text9
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, cmgOperation3 in localValue2, localValue3, localValue4, localValue5 do
    heading = cmgOperation3.id
    if heading == localValue1 then
      heading = table
      heading = heading.remove
      coords = text9
      playerPed2 = localValue6
      heading(coords, playerPed2)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9ecb0e4077".
eventHandler(text15, workingValue15)
eventHandler = RegisterNetEvent
text15 = "c050c5b664"
-- Beginner: this function handles network event "c050c5b664".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, cmgOperation3, heading, coords, playerPed2
  localValue2 = pairs
  localValue3 = stateFlag12
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, cmgOperation3 in localValue2, localValue3, localValue4, localValue5 do
    heading = cmgOperation3.id
    if heading == localValue1 then
      heading = text13
      coords = cmgOperation3
      heading(coords)
      heading = table
      heading = heading.remove
      coords = stateFlag12
      playerPed2 = localValue6
      heading(coords, playerPed2)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c050c5b664".
eventHandler(text15, workingValue15)
