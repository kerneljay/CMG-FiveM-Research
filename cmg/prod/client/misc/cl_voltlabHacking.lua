--[[
    LEVEL 1 BEGINNER GUIDE — Voltlab Hacking
    =============================================

    File: cmg/prod/client/misc/cl_voltlabHacking.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Voltlab Hacking feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 20
      * Background threads: 0
      * Always-running loops: 10
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
local workValue, workValue16, flag, flag2, workValue27, numberValue23, numberValue26, dataTable10, numberValue29, dataTable11, numberValue, dataTable, dataTable2, dataTable3, textValue, workValue7, dataTable4, dataTable5, dataTable6, dataTable7, numberValue9, numberValue10, numberValue11, dataTable9, textValue2, textValue3, textValue4, numberValue12, numberValue13, numberValue14, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, textValue6, workValue23, workValue24, eventHandlerRegistration, textValue7, workValue26
workValue = DrawSprite
workValue16 = DrawRect
flag = false
flag2 = false
workValue27 = nil
numberValue23 = 1
numberValue26 = 0
dataTable10 = {}
numberValue29 = 0
dataTable11 = {}
numberValue = 0
dataTable = {}
dataTable2 = "0"
dataTable3 = "0"
textValue = "0"
dataTable[1] = dataTable2
dataTable[2] = dataTable3
dataTable[3] = textValue
dataTable2 = {}
dataTable3 = {}
textValue = 6
workValue7 = nil
dataTable4 = {}
dataTable5 = {}
dataTable6 = 250
dataTable7 = 172
numberValue9 = 54
dataTable5[1] = dataTable6
dataTable5[2] = dataTable7
dataTable5[3] = numberValue9
dataTable6 = {}
dataTable7 = 247
numberValue9 = 49
numberValue10 = 49
dataTable6[1] = dataTable7
dataTable6[2] = numberValue9
dataTable6[3] = numberValue10
dataTable7 = {}
numberValue9 = 58
numberValue10 = 53
numberValue11 = 212
dataTable7[1] = numberValue9
dataTable7[2] = numberValue10
dataTable7[3] = numberValue11
dataTable4[1] = dataTable5
dataTable4[2] = dataTable6
dataTable4[3] = dataTable7
dataTable5 = {}
dataTable6 = {}
dataTable7 = 191
numberValue9 = 191
numberValue10 = 191
dataTable6[1] = dataTable7
dataTable6[2] = numberValue9
dataTable6[3] = numberValue10
dataTable7 = {}
numberValue9 = 88
numberValue10 = 204
numberValue11 = 102
dataTable7[1] = numberValue9
dataTable7[2] = numberValue10
dataTable7[3] = numberValue11
dataTable5[1] = dataTable6
dataTable5[2] = dataTable7
dataTable6 = 255
dataTable7 = {}
numberValue9 = 255
numberValue10 = 255
numberValue11 = 255
dataTable7[1] = numberValue9
dataTable7[2] = numberValue10
dataTable7[3] = numberValue11
numberValue9 = {}
numberValue10 = "Icons__x1"
numberValue11 = "Icons__x2"
dataTable9 = "Icons__x3"
textValue2 = "Icons__x5"
textValue3 = "Icons__x10"
textValue4 = "Icons__x15"
numberValue9[1] = numberValue10
numberValue9[2] = numberValue11
numberValue9[3] = dataTable9
numberValue9[4] = textValue2
numberValue9[5] = textValue3
numberValue9[6] = textValue4
numberValue10 = {}
numberValue11 = 1
dataTable9 = 10
textValue2 = 50
numberValue10[1] = numberValue11
numberValue10[2] = dataTable9
numberValue10[3] = textValue2
numberValue11 = {}
dataTable9 = {}
textValue2 = 0.383
textValue3 = 0.815
textValue4 = 0.0145
numberValue12 = 0.05
dataTable9[1] = textValue2
dataTable9[2] = textValue3
dataTable9[3] = textValue4
dataTable9[4] = numberValue12
textValue2 = {}
textValue3 = 0.373
textValue4 = 0.815
numberValue12 = 0.0145
numberValue13 = 0.05
textValue2[1] = textValue3
textValue2[2] = textValue4
textValue2[3] = numberValue12
textValue2[4] = numberValue13
textValue3 = {}
textValue4 = 0.363
numberValue12 = 0.815
numberValue13 = 0.0145
numberValue14 = 0.05
textValue3[1] = textValue4
textValue3[2] = numberValue12
textValue3[3] = numberValue13
textValue3[4] = numberValue14
textValue4 = {}
numberValue12 = 0.353
numberValue13 = 0.815
numberValue14 = 0.0145
numberValue16 = 0.05
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
numberValue12 = {}
numberValue13 = 0.343
numberValue14 = 0.815
numberValue16 = 0.0145
numberValue17 = 0.05
numberValue12[1] = numberValue13
numberValue12[2] = numberValue14
numberValue12[3] = numberValue16
numberValue12[4] = numberValue17
numberValue13 = {}
numberValue14 = 0.333
numberValue16 = 0.815
numberValue17 = 0.0145
numberValue18 = 0.05
numberValue13[1] = numberValue14
numberValue13[2] = numberValue16
numberValue13[3] = numberValue17
numberValue13[4] = numberValue18
numberValue11[1] = dataTable9
numberValue11[2] = textValue2
numberValue11[3] = textValue3
numberValue11[4] = textValue4
numberValue11[5] = numberValue12
numberValue11[6] = numberValue13
dataTable9 = {}
textValue2 = {}
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.307
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square1 = textValue4
textValue4 = {}
numberValue12 = 0.658
numberValue13 = 0.307
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square2 = textValue4
textValue4 = {}
numberValue12 = 0.49
numberValue13 = 0.307
numberValue14 = 0.33
numberValue16 = 0.004
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line = textValue4
textValue2["1"] = textValue3
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.307
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square1 = textValue4
textValue4 = {}
numberValue12 = 0.49
numberValue13 = 0.307
numberValue14 = 0.007
numberValue16 = 0.0135
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.sqaure2 = textValue4
textValue4 = {}
numberValue12 = 0.49
numberValue13 = 0.501
numberValue14 = 0.007
numberValue16 = 0.0128
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square3 = textValue4
textValue4 = {}
numberValue12 = 0.657
numberValue13 = 0.501
numberValue14 = 0.007
numberValue16 = 0.0128
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square4 = textValue4
textValue4 = {}
numberValue12 = 0.407
numberValue13 = 0.307
numberValue14 = 0.16
numberValue16 = 0.004
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line1 = textValue4
textValue4 = {}
numberValue12 = 0.4905
numberValue13 = 0.404
numberValue14 = 0.002
numberValue16 = 0.18
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line2 = textValue4
textValue4 = {}
numberValue12 = 0.574
numberValue13 = 0.501
numberValue14 = 0.16
numberValue16 = 0.004
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line3 = textValue4
textValue2["2"] = textValue3
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.307
numberValue14 = 0.007
numberValue16 = 0.0128
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.square1 = textValue4
textValue4 = {}
numberValue12 = 0.397
numberValue13 = 0.307
numberValue14 = 0.007
numberValue16 = 0.0128
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.square2 = textValue4
textValue4 = {}
numberValue12 = 0.397
numberValue13 = 0.502
numberValue14 = 0.007
numberValue16 = 0.0128
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.square3 = textValue4
textValue4 = {}
numberValue12 = 0.49
numberValue13 = 0.502
numberValue14 = 0.007
numberValue16 = 0.0128
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.square4 = textValue4
textValue4 = {}
numberValue12 = 0.49
numberValue13 = 0.694
numberValue14 = 0.007
numberValue16 = 0.0128
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.square5 = textValue4
textValue4 = {}
numberValue12 = 0.657
numberValue13 = 0.694
numberValue14 = 0.007
numberValue16 = 0.0128
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.square6 = textValue4
textValue4 = {}
numberValue12 = 0.36
numberValue13 = 0.307
numberValue14 = 0.07
numberValue16 = 0.004
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.line1 = textValue4
textValue4 = {}
numberValue12 = 0.3965
numberValue13 = 0.404
numberValue14 = 0.002
numberValue16 = 0.182
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.line2 = textValue4
textValue4 = {}
numberValue12 = 0.445
numberValue13 = 0.502
numberValue14 = 0.09
numberValue16 = 0.004
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.line3 = textValue4
textValue4 = {}
numberValue12 = 0.4905
numberValue13 = 0.598
numberValue14 = 0.002
numberValue16 = 0.182
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.line4 = textValue4
textValue4 = {}
numberValue12 = 0.574
numberValue13 = 0.694
numberValue14 = 0.16
numberValue16 = 0.004
numberValue17 = 250
numberValue18 = 172
numberValue19 = 54
numberValue20 = 255
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue4[5] = numberValue17
textValue4[6] = numberValue18
textValue4[7] = numberValue19
textValue4[8] = numberValue20
textValue3.line5 = textValue4
textValue2["3"] = textValue3
dataTable9["1"] = textValue2
textValue2 = {}
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.5
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square1 = textValue4
textValue4 = {}
numberValue12 = 0.46
numberValue13 = 0.5
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square2 = textValue4
textValue4 = {}
numberValue12 = 0.46
numberValue13 = 0.39
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square3 = textValue4
textValue4 = {}
numberValue12 = 0.551
numberValue13 = 0.39
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square4 = textValue4
textValue4 = {}
numberValue12 = 0.551
numberValue13 = 0.307
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square5 = textValue4
textValue4 = {}
numberValue12 = 0.658
numberValue13 = 0.307
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square6 = textValue4
textValue4 = {}
numberValue12 = 0.392
numberValue13 = 0.5
numberValue14 = 0.129
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line1 = textValue4
textValue4 = {}
numberValue12 = 0.46
numberValue13 = 0.444
numberValue14 = 0.003
numberValue16 = 0.1
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line2 = textValue4
textValue4 = {}
numberValue12 = 0.508
numberValue13 = 0.39
numberValue14 = 0.09
numberValue16 = 0.004
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line3 = textValue4
textValue4 = {}
numberValue12 = 0.508
numberValue13 = 0.39
numberValue14 = 0.09
numberValue16 = 0.0025
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line4 = textValue4
textValue4 = {}
numberValue12 = 0.605
numberValue13 = 0.307
numberValue14 = 0.108
numberValue16 = 0.004
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line5 = textValue4
textValue4 = {}
numberValue12 = 0.551
numberValue13 = 0.35
numberValue14 = 0.0025
numberValue16 = 0.08
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line6 = textValue4
textValue2["1"] = textValue3
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.5
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square1 = textValue4
textValue4 = {}
numberValue12 = 0.657
numberValue13 = 0.5
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square2 = textValue4
textValue4 = {}
numberValue12 = 0.49
numberValue13 = 0.5
numberValue14 = 0.33
numberValue16 = 0.004
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line1 = textValue4
textValue2["2"] = textValue3
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.5
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square1 = textValue4
textValue4 = {}
numberValue12 = 0.429
numberValue13 = 0.5
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square2 = textValue4
textValue4 = {}
numberValue12 = 0.429
numberValue13 = 0.694
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square3 = textValue4
textValue4 = {}
numberValue12 = 0.657
numberValue13 = 0.694
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square4 = textValue4
textValue4 = {}
numberValue12 = 0.376
numberValue13 = 0.5
numberValue14 = 0.1
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line1 = textValue4
textValue4 = {}
numberValue12 = 0.429
numberValue13 = 0.6
numberValue14 = 0.003
numberValue16 = 0.2
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line2 = textValue4
textValue4 = {}
numberValue12 = 0.543
numberValue13 = 0.694
numberValue14 = 0.22
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line3 = textValue4
textValue2["3"] = textValue3
dataTable9["2"] = textValue2
textValue2 = {}
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.694
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square1 = textValue4
textValue4 = {}
numberValue12 = 0.521
numberValue13 = 0.694
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square2 = textValue4
textValue4 = {}
numberValue12 = 0.521
numberValue13 = 0.61
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square3 = textValue4
textValue4 = {}
numberValue12 = 0.582
numberValue13 = 0.61
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square4 = textValue4
textValue4 = {}
numberValue12 = 0.582
numberValue13 = 0.3085
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square5 = textValue4
textValue4 = {}
numberValue12 = 0.6565
numberValue13 = 0.307
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square6 = textValue4
textValue4 = {}
numberValue12 = 0.421
numberValue13 = 0.694
numberValue14 = 0.19
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line1 = textValue4
textValue4 = {}
numberValue12 = 0.521
numberValue13 = 0.652
numberValue14 = 0.00222
numberValue16 = 0.074
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line2 = textValue4
textValue4 = {}
numberValue12 = 0.55
numberValue13 = 0.61
numberValue14 = 0.06
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line3 = textValue4
textValue4 = {}
numberValue12 = 0.582
numberValue13 = 0.46
numberValue14 = 0.00222
numberValue16 = 0.29
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line4 = textValue4
textValue4 = {}
numberValue12 = 0.62
numberValue13 = 0.307
numberValue14 = 0.07
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line5 = textValue4
textValue2["1"] = textValue3
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.694
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.sqaure1 = textValue4
textValue4 = {}
numberValue12 = 0.521
numberValue13 = 0.694
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.sqaure2 = textValue4
textValue4 = {}
numberValue12 = 0.521
numberValue13 = 0.61
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.sqaure3 = textValue4
textValue4 = {}
numberValue12 = 0.582
numberValue13 = 0.61
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.sqaure4 = textValue4
textValue4 = {}
numberValue12 = 0.582
numberValue13 = 0.5
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.sqaure5 = textValue4
textValue4 = {}
numberValue12 = 0.6565
numberValue13 = 0.5
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.sqaure6 = textValue4
textValue4 = {}
numberValue12 = 0.421
numberValue13 = 0.694
numberValue14 = 0.19
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line1 = textValue4
textValue4 = {}
numberValue12 = 0.521
numberValue13 = 0.652
numberValue14 = 0.00222
numberValue16 = 0.074
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line2 = textValue4
textValue4 = {}
numberValue12 = 0.55
numberValue13 = 0.61
numberValue14 = 0.06
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line3 = textValue4
textValue4 = {}
numberValue12 = 0.582
numberValue13 = 0.55
numberValue14 = 0.00222
numberValue16 = 0.11
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line4 = textValue4
textValue4 = {}
numberValue12 = 0.62
numberValue13 = 0.5
numberValue14 = 0.07
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line5 = textValue4
textValue2["2"] = textValue3
textValue3 = {}
textValue4 = {}
numberValue12 = 0.324
numberValue13 = 0.694
numberValue14 = 0.006
numberValue16 = 0.01
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square1 = textValue4
textValue4 = {}
numberValue12 = 0.6565
numberValue13 = 0.694
numberValue14 = 0.007
numberValue16 = 0.01281
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.square2 = textValue4
textValue4 = {}
numberValue12 = 0.49
numberValue13 = 0.694
numberValue14 = 0.33
numberValue16 = 0.0035
textValue4[1] = numberValue12
textValue4[2] = numberValue13
textValue4[3] = numberValue14
textValue4[4] = numberValue16
textValue3.line1 = textValue4
textValue2["3"] = textValue3
dataTable9["3"] = textValue2

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg2 = {}
  arg3 = 1
  arg4 = #arg1
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = arg1[arg6]
    arg2[arg6] = arg7
  end
  arg3 = #arg2
  arg4 = 2
  arg5 = -1
  for arg6 = arg3, arg4, arg5 do
    arg7 = math
    arg7 = arg7.random
    arg8 = arg6
    arg7 = arg7(arg8)
    arg8 = arg2[arg7]
    arg9 = arg2[arg6]
    arg2[arg7] = arg9
    arg2[arg6] = arg8
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
  arg2 = 0
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7 in arg3, arg4, arg5, arg6 do
    arg2 = arg2 + 1
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2) ===
function textValue4(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = PlaySoundFrontend
  arg4 = -1
  arg5 = arg1
  arg6 = arg2
  arg7 = true
  arg3(arg4, arg5, arg6, arg7)
end

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: none) ===
function numberValue12()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg1 = 0
  numberValue29 = arg1
  arg1 = 1
  arg2 = 3
  arg3 = 1
  for arg4 = arg1, arg2, arg3 do
    arg5 = dataTable10
    arg6 = math
    arg6 = arg6.random
    arg7 = 1
    arg8 = 8
    arg6 = arg6(arg7, arg8)
    arg5[arg4] = arg6
  end
  arg1 = 1
  arg2 = 3
  arg3 = 1
  for arg4 = arg1, arg2, arg3 do
    arg5 = numberValue29
    arg6 = dataTable10
    arg6 = arg6[arg4]
    arg7 = numberValue10
    arg7 = arg7[arg4]
    arg6 = arg6 * arg7
    arg5 = arg5 + arg6
    numberValue29 = arg5
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue13; parameters: arg1) ===
function numberValue13(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11
  if not arg1 then
    arg1 = numberValue
  end
  arg2 = tostring
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = string
  arg3 = arg3.len
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 < 3 then
    arg3 = 1
    arg4 = string
    arg4 = arg4.len
    arg5 = arg2
    arg4 = arg4(arg5)
    arg5 = 3
    arg4 = arg5 - arg4
    arg5 = 1
    for arg6 = arg3, arg4, arg5 do
      arg7 = "0"
      arg8 = arg2
      arg7 = arg7 .. arg8
      arg2 = arg7
    end
  end
  arg3 = 1
  arg4 = 3
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = dataTable
    arg9 = arg2
    arg8 = arg2.sub
    arg10 = arg6
    arg11 = arg6
    arg8 = arg8(arg9, arg10, arg11)
    arg7[arg6] = arg8
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue14; parameters: none) ===
function numberValue14()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg1 = tostring
  arg2 = numberValue29
  arg1 = arg1(arg2)
  arg2 = string
  arg2 = arg2.len
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 < 3 then
    arg2 = 1
    arg3 = string
    arg3 = arg3.len
    arg4 = arg1
    arg3 = arg3(arg4)
    arg4 = 3
    arg3 = arg4 - arg3
    arg4 = 1
    for arg5 = arg2, arg3, arg4 do
      arg6 = "0"
      arg7 = arg1
      arg6 = arg6 .. arg7
      arg1 = arg6
    end
  end
  arg2 = 1
  arg3 = 3
  arg4 = 1
  for arg5 = arg2, arg3, arg4 do
    arg6 = dataTable11
    arg8 = arg1
    arg7 = arg1.sub
    arg9 = arg5
    arg10 = arg5
    arg7 = arg7(arg8, arg9, arg10)
    arg6[arg5] = arg7
  end
end

-- === HELPER FUNCTION (decompiler name: numberValue16; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function numberValue16(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local arg9, arg10, arg11, workValue2, workValue3, workValue5, workValue6, workValue8, workValue9
  arg9 = workValue16
  arg10 = arg1
  arg11 = arg2
  workValue2 = arg3
  workValue3 = arg4
  workValue5 = arg5
  workValue6 = arg6
  workValue8 = arg7
  workValue9 = arg8
  arg9(arg10, arg11, workValue2, workValue3, workValue5, workValue6, workValue8, workValue9)
end

-- === HELPER FUNCTION (decompiler name: numberValue17; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) ===
function numberValue17(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
  local workValue2, workValue3, workValue5, workValue6, workValue8, workValue9, workValue10, workValue12, workValue14, workValue17, workValue19, workValue21
  workValue2 = workValue
  workValue3 = arg1
  workValue5 = arg2
  workValue6 = arg3
  workValue8 = arg4
  workValue9 = arg5
  workValue10 = arg6
  workValue12 = arg7
  workValue14 = arg8
  workValue17 = arg9
  workValue19 = arg10
  workValue21 = arg11
  workValue2(workValue3, workValue5, workValue6, workValue8, workValue9, workValue10, workValue12, workValue14, workValue17, workValue19, workValue21)
end

-- === HELPER FUNCTION (decompiler name: numberValue18; parameters: arg1) ===
function numberValue18(arg1)
  local arg2, arg3
  arg2 = BeginTextCommandScaleformString
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringKeyboardDisplay
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandScaleformString
  arg2()
end
ButtonMessage = numberValue18

-- === HELPER FUNCTION (decompiler name: numberValue18; parameters: arg1) ===
function numberValue18(arg1)
  local arg2, arg3
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamPlayerNameString"
  arg2 = arg2[arg3]
  arg3 = arg1
  arg2(arg3)
end
Button = numberValue18

-- === HELPER FUNCTION (decompiler name: numberValue18; parameters: arg1) ===
function numberValue18(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = RequestScaleformMovie
  arg3 = arg1
  -- Beginner: result below is scaleformHandle.
  arg2 = arg2(arg3)
  while true do
    arg3 = HasScaleformMovieLoaded
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "CLEAR_ALL"
  arg3(arg4, arg5)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_CLEAR_SPACE"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 200
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_DATA_SLOT"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 0
  arg3(arg4)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  arg6 = 194
  arg7 = true
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
  arg3(arg4, arg5, arg6, arg7)
  arg3 = ButtonMessage
  arg4 = "Abort Hack"
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_DATA_SLOT"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 1
  arg3(arg4)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  arg6 = 191
  arg7 = true
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
  arg3(arg4, arg5, arg6, arg7)
  arg3 = ButtonMessage
  arg4 = "Confirm selection (Irrevertible)"
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_DATA_SLOT"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 2
  arg3(arg4)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  arg6 = 307
  arg7 = true
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
  arg3(arg4, arg5, arg6, arg7)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  arg6 = 308
  arg7 = true
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
  arg3(arg4, arg5, arg6, arg7)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  arg6 = 299
  arg7 = true
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
  arg3(arg4, arg5, arg6, arg7)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  arg6 = 300
  arg7 = true
  arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
  arg3(arg4, arg5, arg6, arg7)
  arg3 = ButtonMessage
  arg4 = "Select"
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "DRAW_INSTRUCTIONAL_BUTTONS"
  arg3(arg4, arg5)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_BACKGROUND_COLOUR"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 0
  arg3(arg4)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 0
  arg3(arg4)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 0
  arg3(arg4)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 80
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  return arg2
end
numberValue19 = {}
numberValue20 = "MPIsland_Voltage"
textValue6 = "MPIsland_Voltage_BG"
numberValue19[1] = numberValue20
numberValue19[2] = textValue6
numberValue20 = "DLC_HEI4\\DLC_HEI4_V_MG"
textValue6 = "DLC_HEI4\\DLC_HEI4_FH_MG"

-- === HELPER FUNCTION (decompiler name: workValue23; parameters: none) ===
function workValue23()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = 1
  arg2 = numberValue19
  arg2 = #arg2
  arg3 = 1
  for arg4 = arg1, arg2, arg3 do
    arg5 = RequestStreamedTextureDict
    arg6 = numberValue19
    arg6 = arg6[arg4]
    arg7 = false
    arg5(arg6, arg7)
  end
  arg1 = 1
  arg2 = numberValue19
  arg2 = #arg2
  arg3 = 1
  for arg4 = arg1, arg2, arg3 do
    while true do
      arg5 = HasStreamedTextureDictLoaded
      arg6 = numberValue19
      arg6 = arg6[arg4]
      arg5 = arg5(arg6)
      if arg5 then
        break
      end
      arg5 = Wait
      arg6 = 10
      arg5(arg6)
    end
  end
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  while true do
    arg2 = RequestScriptAudioBank
    arg3 = numberValue20
    arg4 = false
    arg2 = arg2(arg3, arg4)
    if arg2 then
      break
    end
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 - arg1
    arg3 = 1500
    if arg2 > arg3 then
      arg2 = ReleaseNamedScriptAudioBank
      arg3 = numberValue20
      arg2(arg3)
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  while true do
    arg3 = RequestScriptAudioBank
    arg4 = textValue6
    arg5 = false
    arg3 = arg3(arg4, arg5)
    if arg3 then
      break
    end
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg2
    arg4 = 1500
    if arg3 > arg4 then
      arg3 = ReleaseNamedScriptAudioBank
      arg4 = textValue6
      arg3(arg4)
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue24; parameters: none) ===
function workValue24()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = ReleaseNamedScriptAudioBank
  arg2 = textValue6
  arg1(arg2)
  arg1 = ReleaseNamedScriptAudioBank
  arg2 = numberValue20
  arg1(arg2)
  arg1 = 1
  arg2 = numberValue19
  arg2 = #arg2
  arg3 = 1
  for arg4 = arg1, arg2, arg3 do
    arg5 = SetStreamedTextureDictAsNoLongerNeeded
    arg6 = numberValue19
    arg6 = arg6[arg4]
    arg5(arg6)
  end
end
eventHandlerRegistration = AddEventHandler
textValue7 = "ultra-voltlab"
-- Beginner: this function runs when client event "ultra-voltlab" fires.

-- === HELPER FUNCTION (decompiler name: workValue26; parameters: arg1, arg2) ===
function workValue26(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg3 = workValue23
  arg3()
  arg3 = false
  flag2 = arg3
  arg3 = {}
  dataTable2 = arg3
  arg3 = {}
  dataTable3 = arg3
  arg3 = 1
  numberValue23 = arg3
  arg3 = 0
  numberValue26 = arg3
  arg3 = 6
  textValue = arg3

  -- === HELPER FUNCTION: arg3(...) ===
  function arg3(...)
    local waitCall, dataTable8
    waitCall = workValue24
    waitCall()
    waitCall = arg2
    dataTable8 = ...
    waitCall(dataTable8)
  end
  workValue27 = arg3
  arg3 = tonumber
  arg4 = arg1
  arg3 = arg3(arg4)
  arg4 = arg3
  if arg3 < 10 or arg3 > 60 then
    arg5 = workValue27
    arg6 = -1
    arg7 = "Entered time is out of range"
    arg5(arg6, arg7)
    arg5 = true
    flag2 = arg5
    return
  end
  arg5 = numberValue12
  arg5()
  arg5 = numberValue14
  arg5()
  while true do
    arg5 = numberValue29
    arg6 = 999
    if not (arg5 > arg6) then
      arg5 = numberValue29
      if not (arg5 <= 0) then
        break
      end
    end
    arg5 = Wait
    arg6 = 10
    arg5(arg6)
    arg5 = numberValue12
    arg5()
  end
  arg5 = textValue2
  arg6 = dataTable10
  arg5 = arg5(arg6)
  dataTable10 = arg5
  arg5 = textValue2
  arg6 = numberValue10
  arg5 = arg5(arg6)
  numberValue10 = arg5
  arg5 = textValue2
  arg6 = numberValue9
  arg5 = arg5(arg6)
  numberValue9 = arg5
  arg5 = 0
  arg6 = 1
  arg7 = 3
  arg8 = 1
  for arg9 = arg6, arg7, arg8 do
    arg10 = numberValue10
    arg10 = arg10[arg9]
    arg5 = arg5 + arg10
  end
  if arg5 > 111 or arg5 <= 0 then
    arg6 = workValue27
    arg7 = -1
    arg8 = "Icon values are out of range in config"
    arg6(arg7, arg8)
    arg6 = true
    flag2 = arg6
    return
  end
  arg6 = numberValue14
  arg6()
  arg6 = true
  flag = arg6
  arg6 = print
  arg7 = "Creating first Voltlab hacking thread"
  arg6(arg7)
  arg6 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local waitCall, dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4, numberValue4, numberValue5, numberValue6, numberValue7, workValue11, workValue13, workValue15, workValue18, workValue20, workValue22
    waitCall = Wait
    dataTable8 = 100
    waitCall(dataTable8)
    waitCall = SendNUIMessage
    dataTable8 = {}
    dataTable8.type = "intro"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    waitCall(dataTable8)
    waitCall = textValue4
    dataTable8 = "Loading_Bink"
    textValue5 = "DLC_H4_Voltage_Minigame_Sounds"
    waitCall(dataTable8, textValue5)
    while true do
      waitCall = flag
      if not waitCall then
        break
      end
      waitCall = Wait
      dataTable8 = 1
      waitCall(dataTable8)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage_BG"
      textValue5 = "PHONE_BACKGROUND"
      numberValue21 = 0.5
      numberValue22 = 0.5
      numberValue24 = 1.0
      numberValue27 = 1.0
      numberValue28 = 0
      numberValue30 = 255
      numberValue31 = 255
      numberValue2 = 255
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage_BG"
      textValue5 = "target_text"
      numberValue21 = 0.498
      numberValue22 = 0.12
      numberValue24 = 0.04
      numberValue27 = 0.014
      numberValue28 = 0
      numberValue30 = 231
      numberValue31 = 99
      numberValue2 = 99
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage_BG"
      textValue5 = "result_text"
      numberValue21 = 0.498
      numberValue22 = 0.88
      numberValue24 = 0.04
      numberValue27 = 0.014
      numberValue28 = 0
      numberValue30 = 88
      numberValue31 = 204
      numberValue2 = 102
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = "Phone_Icons"
      numberValue21 = 0.95
      numberValue22 = 0.03
      numberValue24 = 0.08
      numberValue27 = 0.04
      numberValue28 = 0
      numberValue30 = 160
      numberValue31 = 160
      numberValue2 = 160
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = "MainInterface_BG"
      numberValue21 = 0.5
      numberValue22 = 0.5
      numberValue24 = 0.5
      numberValue27 = 0.73
      numberValue28 = 0
      numberValue30 = 255
      numberValue31 = 255
      numberValue2 = 255
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = dataTable11
      textValue5 = textValue5[1]
      numberValue21 = 0.457
      numberValue22 = 0.185
      numberValue24 = 0.03
      numberValue27 = 0.09
      numberValue28 = 0
      numberValue30 = 231
      numberValue31 = 99
      numberValue2 = 99
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = dataTable11
      textValue5 = textValue5[2]
      numberValue21 = 0.497
      numberValue22 = 0.185
      numberValue24 = 0.03
      numberValue27 = 0.09
      numberValue28 = 0
      numberValue30 = 231
      numberValue31 = 99
      numberValue2 = 99
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = dataTable11
      textValue5 = textValue5[3]
      numberValue21 = 0.539
      numberValue22 = 0.185
      numberValue24 = 0.03
      numberValue27 = 0.09
      numberValue28 = 0
      numberValue30 = 231
      numberValue31 = 99
      numberValue2 = 99
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = dataTable10
      textValue5 = textValue5[1]
      numberValue21 = 0.29
      numberValue22 = 0.307
      numberValue24 = 0.03
      numberValue27 = 0.09
      numberValue28 = 0
      numberValue30 = 255
      numberValue31 = 255
      numberValue2 = 255
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = dataTable10
      textValue5 = textValue5[2]
      numberValue21 = 0.29
      numberValue22 = 0.5
      numberValue24 = 0.03
      numberValue27 = 0.09
      numberValue28 = 0
      numberValue30 = 255
      numberValue31 = 255
      numberValue2 = 255
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = dataTable10
      textValue5 = textValue5[3]
      numberValue21 = 0.29
      numberValue22 = 0.694
      numberValue24 = 0.03
      numberValue27 = 0.09
      numberValue28 = 0
      numberValue30 = 255
      numberValue31 = 255
      numberValue2 = 255
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = numberValue9
      textValue5 = textValue5[1]
      numberValue21 = 0.699
      numberValue22 = 0.307
      numberValue24 = 0.06
      numberValue27 = 0.08
      numberValue28 = 0
      numberValue30 = 255
      numberValue31 = 255
      numberValue2 = 255
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = numberValue9
      textValue5 = textValue5[2]
      numberValue21 = 0.7
      numberValue22 = 0.503
      numberValue24 = 0.05
      numberValue27 = 0.08
      numberValue28 = 0
      numberValue30 = 255
      numberValue31 = 255
      numberValue2 = 255
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = numberValue17
      dataTable8 = "MPIsland_Voltage"
      textValue5 = numberValue9
      textValue5 = textValue5[3]
      numberValue21 = 0.7
      numberValue22 = 0.698
      numberValue24 = 0.04
      numberValue27 = 0.06
      numberValue28 = 0
      numberValue30 = 255
      numberValue31 = 255
      numberValue2 = 255
      numberValue3 = 255
      waitCall(dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3)
      waitCall = 0
      dataTable8 = numberValue
      textValue5 = numberValue29
      if dataTable8 == textValue5 then
        waitCall = 2
      else
        waitCall = 1
      end
      dataTable8 = numberValue17
      textValue5 = "MPIsland_Voltage"
      numberValue21 = tostring
      numberValue22 = dataTable
      numberValue22 = numberValue22[1]
      numberValue21 = numberValue21(numberValue22)
      numberValue22 = 0.457
      numberValue24 = 0.815
      numberValue27 = 0.03
      numberValue28 = 0.09
      numberValue30 = 0
      numberValue31 = dataTable5
      numberValue31 = numberValue31[waitCall]
      numberValue31 = numberValue31[1]
      numberValue2 = dataTable5
      numberValue2 = numberValue2[waitCall]
      numberValue2 = numberValue2[2]
      numberValue3 = dataTable5
      numberValue3 = numberValue3[waitCall]
      numberValue3 = numberValue3[3]
      workValue4 = dataTable6
      dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
      dataTable8 = numberValue17
      textValue5 = "MPIsland_Voltage"
      numberValue21 = tostring
      numberValue22 = dataTable
      numberValue22 = numberValue22[2]
      numberValue21 = numberValue21(numberValue22)
      numberValue22 = 0.497
      numberValue24 = 0.815
      numberValue27 = 0.03
      numberValue28 = 0.09
      numberValue30 = 0
      numberValue31 = dataTable5
      numberValue31 = numberValue31[waitCall]
      numberValue31 = numberValue31[1]
      numberValue2 = dataTable5
      numberValue2 = numberValue2[waitCall]
      numberValue2 = numberValue2[2]
      numberValue3 = dataTable5
      numberValue3 = numberValue3[waitCall]
      numberValue3 = numberValue3[3]
      workValue4 = dataTable6
      dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
      dataTable8 = numberValue17
      textValue5 = "MPIsland_Voltage"
      numberValue21 = tostring
      numberValue22 = dataTable
      numberValue22 = numberValue22[3]
      numberValue21 = numberValue21(numberValue22)
      numberValue22 = 0.539
      numberValue24 = 0.815
      numberValue27 = 0.03
      numberValue28 = 0.09
      numberValue30 = 0
      numberValue31 = dataTable5
      numberValue31 = numberValue31[waitCall]
      numberValue31 = numberValue31[1]
      numberValue2 = dataTable5
      numberValue2 = numberValue2[waitCall]
      numberValue2 = numberValue2[2]
      numberValue3 = dataTable5
      numberValue3 = numberValue3[waitCall]
      numberValue3 = numberValue3[3]
      workValue4 = dataTable6
      dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
      dataTable8 = 1
      textValue5 = textValue
      numberValue21 = 1
      for numberValue22 = dataTable8, textValue5, numberValue21 do
        numberValue24 = numberValue17
        numberValue27 = "MPIsland_Voltage"
        numberValue28 = "maininterface_progress_highlight"
        numberValue30 = numberValue11
        numberValue30 = numberValue30[numberValue22]
        numberValue30 = numberValue30[1]
        numberValue31 = numberValue11
        numberValue31 = numberValue31[numberValue22]
        numberValue31 = numberValue31[2]
        numberValue2 = numberValue11
        numberValue2 = numberValue2[numberValue22]
        numberValue2 = numberValue2[3]
        numberValue3 = numberValue11
        numberValue3 = numberValue3[numberValue22]
        numberValue3 = numberValue3[4]
        workValue4 = 0
        numberValue4 = 88
        numberValue5 = 204
        numberValue6 = 102
        numberValue7 = 255
        numberValue24(numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4, numberValue4, numberValue5, numberValue6, numberValue7)
      end
      dataTable8 = numberValue23
      if 1 == dataTable8 then
        dataTable8 = numberValue17
        textValue5 = "MPIsland_Voltage"
        numberValue21 = "NUMBER_NODE"
        numberValue22 = 0.298
        numberValue24 = 0.307
        numberValue27 = 0.06
        numberValue28 = 0.098
        numberValue30 = 0
        numberValue31 = 250
        numberValue2 = 172
        numberValue3 = 54
        workValue4 = 255
        dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
      else
        dataTable8 = numberValue23
        if 2 == dataTable8 then
          dataTable8 = numberValue17
          textValue5 = "MPIsland_Voltage"
          numberValue21 = "NUMBER_NODE"
          numberValue22 = 0.298
          numberValue24 = 0.5
          numberValue27 = 0.06
          numberValue28 = 0.098
          numberValue30 = 0
          numberValue31 = 247
          numberValue2 = 49
          numberValue3 = 49
          workValue4 = 255
          dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
        else
          dataTable8 = numberValue23
          if 3 == dataTable8 then
            dataTable8 = numberValue17
            textValue5 = "MPIsland_Voltage"
            numberValue21 = "NUMBER_NODE"
            numberValue22 = 0.298
            numberValue24 = 0.693
            numberValue27 = 0.06
            numberValue28 = 0.098
            numberValue30 = 0
            numberValue31 = 58
            numberValue2 = 53
            numberValue3 = 212
            workValue4 = 255
            dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
          end
        end
      end
      dataTable8 = numberValue26
      if 1 == dataTable8 then
        dataTable8 = numberValue17
        textValue5 = "MPIsland_Voltage"
        numberValue21 = "CIRCLE_NODE"
        numberValue22 = 0.691
        numberValue24 = 0.307
        numberValue27 = 0.078
        numberValue28 = 0.13
        numberValue30 = 0
        numberValue2 = numberValue23
        numberValue31 = dataTable4
        numberValue31 = numberValue31[numberValue2]
        numberValue31 = numberValue31[1]
        numberValue3 = numberValue23
        numberValue2 = dataTable4
        numberValue2 = numberValue2[numberValue3]
        numberValue2 = numberValue2[2]
        workValue4 = numberValue23
        numberValue3 = dataTable4
        numberValue3 = numberValue3[workValue4]
        numberValue3 = numberValue3[3]
        workValue4 = 255
        dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
      else
        dataTable8 = numberValue26
        if 2 == dataTable8 then
          dataTable8 = numberValue17
          textValue5 = "MPIsland_Voltage"
          numberValue21 = "CIRCLE_NODE"
          numberValue22 = 0.691
          numberValue24 = 0.5
          numberValue27 = 0.078
          numberValue28 = 0.125
          numberValue30 = 0
          numberValue2 = numberValue23
          numberValue31 = dataTable4
          numberValue31 = numberValue31[numberValue2]
          numberValue31 = numberValue31[1]
          numberValue3 = numberValue23
          numberValue2 = dataTable4
          numberValue2 = numberValue2[numberValue3]
          numberValue2 = numberValue2[2]
          workValue4 = numberValue23
          numberValue3 = dataTable4
          numberValue3 = numberValue3[workValue4]
          numberValue3 = numberValue3[3]
          workValue4 = 255
          dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
        else
          dataTable8 = numberValue26
          if 3 == dataTable8 then
            dataTable8 = numberValue17
            textValue5 = "MPIsland_Voltage"
            numberValue21 = "CIRCLE_NODE"
            numberValue22 = 0.691
            numberValue24 = 0.694
            numberValue27 = 0.078
            numberValue28 = 0.125
            numberValue30 = 0
            numberValue2 = numberValue23
            numberValue31 = dataTable4
            numberValue31 = numberValue31[numberValue2]
            numberValue31 = numberValue31[1]
            numberValue3 = numberValue23
            numberValue2 = dataTable4
            numberValue2 = numberValue2[numberValue3]
            numberValue2 = numberValue2[2]
            workValue4 = numberValue23
            numberValue3 = dataTable4
            numberValue3 = numberValue3[workValue4]
            numberValue3 = numberValue3[3]
            workValue4 = 255
            dataTable8(textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31, numberValue2, numberValue3, workValue4)
          end
        end
      end
      dataTable8 = numberValue23
      if 0 ~= dataTable8 then
        dataTable8 = numberValue26
        if 0 ~= dataTable8 then
          dataTable8 = pairs
          textValue5 = tostring
          numberValue21 = numberValue23
          textValue5 = textValue5(numberValue21)
          numberValue21 = dataTable9
          textValue5 = numberValue21[textValue5]
          numberValue21 = tostring
          numberValue22 = numberValue26
          numberValue21 = numberValue21(numberValue22)
          textValue5 = textValue5[numberValue21]
          dataTable8, textValue5, numberValue21, numberValue22 = dataTable8(textValue5)
          for numberValue24, numberValue27 in dataTable8, textValue5, numberValue21, numberValue22 do
            numberValue28 = numberValue23
            if numberValue28 then
              numberValue28 = numberValue26
              if numberValue28 then
                numberValue28 = numberValue16
                numberValue30 = numberValue27[1]
                numberValue31 = numberValue27[2]
                numberValue2 = numberValue27[3]
                numberValue3 = numberValue27[4]
                numberValue4 = numberValue23
                workValue4 = dataTable4
                workValue4 = workValue4[numberValue4]
                workValue4 = workValue4[1]
                numberValue5 = numberValue23
                numberValue4 = dataTable4
                numberValue4 = numberValue4[numberValue5]
                numberValue4 = numberValue4[2]
                numberValue6 = numberValue23
                numberValue5 = dataTable4
                numberValue5 = numberValue5[numberValue6]
                numberValue5 = numberValue5[3]
                numberValue7 = numberValue23
                numberValue6 = dataTable7
                numberValue6 = numberValue6[numberValue7]
                numberValue28(numberValue30, numberValue31, numberValue2, numberValue3, workValue4, numberValue4, numberValue5, numberValue6)
              end
            end
          end
        end
      end
      dataTable8 = textValue3
      textValue5 = dataTable3
      dataTable8 = dataTable8(textValue5)
      if 0 ~= dataTable8 then
        dataTable8 = pairs
        textValue5 = dataTable3
        dataTable8, textValue5, numberValue21, numberValue22 = dataTable8(textValue5)
        for numberValue24, numberValue27 in dataTable8, textValue5, numberValue21, numberValue22 do
          numberValue28 = pairs
          numberValue30 = tostring
          numberValue31 = numberValue27[1]
          numberValue30 = numberValue30(numberValue31)
          numberValue31 = dataTable9
          numberValue30 = numberValue31[numberValue30]
          numberValue31 = tostring
          numberValue2 = numberValue27[2]
          numberValue31 = numberValue31(numberValue2)
          numberValue30 = numberValue30[numberValue31]
          numberValue28, numberValue30, numberValue31, numberValue2 = numberValue28(numberValue30)
          for numberValue3, workValue4 in numberValue28, numberValue30, numberValue31, numberValue2 do
            numberValue4 = numberValue27[1]
            if numberValue4 then
              numberValue4 = numberValue27[2]
              if numberValue4 then
                numberValue4 = numberValue16
                numberValue5 = workValue4[1]
                numberValue6 = workValue4[2]
                numberValue7 = workValue4[3]
                workValue11 = workValue4[4]
                workValue15 = numberValue27[1]
                workValue13 = dataTable4
                workValue13 = workValue13[workValue15]
                workValue13 = workValue13[1]
                workValue18 = numberValue27[1]
                workValue15 = dataTable4
                workValue15 = workValue15[workValue18]
                workValue15 = workValue15[2]
                workValue20 = numberValue27[1]
                workValue18 = dataTable4
                workValue18 = workValue18[workValue20]
                workValue18 = workValue18[3]
                workValue22 = numberValue27[1]
                workValue20 = dataTable7
                workValue20 = workValue20[workValue22]
                numberValue4(numberValue5, numberValue6, numberValue7, workValue11, workValue13, workValue15, workValue18, workValue20)
              end
            end
          end
        end
      end
    end
    waitCall = print
    dataTable8 = "Ended first Voltlab hacking thread"
    waitCall(dataTable8)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg6(arg7)
  arg6 = Wait
  arg7 = 100
  arg6(arg7)
  arg6 = print
  arg7 = "Creating second Voltlab hacking thread"
  arg6(arg7)
  arg6 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local waitCall, dataTable8, textValue5, numberValue21, numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31
    waitCall = 0
    dataTable8 = 0
    textValue5 = numberValue18
    numberValue21 = "instructional_buttons"
    textValue5 = textValue5(numberValue21)
    while true do
      numberValue21 = flag
      if not numberValue21 then
        break
      end
      numberValue21 = Wait
      numberValue22 = 5
      numberValue21(numberValue22)
      numberValue21 = DrawScaleformMovieFullscreen
      numberValue22 = textValue5
      numberValue24 = 255
      numberValue27 = 255
      numberValue28 = 255
      numberValue30 = 255
      numberValue31 = 0
      numberValue21(numberValue22, numberValue24, numberValue27, numberValue28, numberValue30, numberValue31)
      numberValue21 = DisableControlAction
      numberValue22 = 0
      numberValue24 = 172
      numberValue27 = true
      numberValue21(numberValue22, numberValue24, numberValue27)
      numberValue21 = DisableControlAction
      numberValue22 = 0
      numberValue24 = 173
      numberValue27 = true
      numberValue21(numberValue22, numberValue24, numberValue27)
      numberValue21 = DisableControlAction
      numberValue22 = 0
      numberValue24 = 174
      numberValue27 = true
      numberValue21(numberValue22, numberValue24, numberValue27)
      numberValue21 = DisableControlAction
      numberValue22 = 0
      numberValue24 = 175
      numberValue27 = true
      numberValue21(numberValue22, numberValue24, numberValue27)
      numberValue21 = DisableControlAction
      numberValue22 = 0
      numberValue24 = 194
      numberValue27 = true
      numberValue21(numberValue22, numberValue24, numberValue27)
      numberValue21 = DisableControlAction
      numberValue22 = 0
      numberValue24 = 191
      numberValue27 = true
      numberValue21(numberValue22, numberValue24, numberValue27)
      numberValue21 = DisableControlAction
      numberValue22 = 0
      numberValue24 = 24
      numberValue27 = true
      numberValue21(numberValue22, numberValue24, numberValue27)
      numberValue21 = DisableControlAction
      numberValue22 = 0
      numberValue24 = 25
      numberValue27 = true
      numberValue21(numberValue22, numberValue24, numberValue27)
      numberValue21 = IsDisabledControlJustPressed
      numberValue22 = 0
      numberValue24 = 172
      numberValue21 = numberValue21(numberValue22, numberValue24)
      if numberValue21 then
        numberValue21 = numberValue23
        if numberValue21 > 1 then
          numberValue21 = numberValue23
          if numberValue21 < 4 then
            numberValue21 = numberValue23
            numberValue21 = numberValue21 - 1
            numberValue23 = numberValue21
            numberValue21 = textValue4
            numberValue22 = "Disconnect_Wire"
            numberValue24 = "DLC_H4_Voltage_Minigame_Sounds"
            numberValue21(numberValue22, numberValue24)
            numberValue21 = numberValue26
            if 0 ~= numberValue21 then
              numberValue22 = numberValue23
              numberValue21 = dataTable10
              numberValue21 = numberValue21[numberValue22]
              numberValue24 = numberValue26
              numberValue22 = numberValue10
              numberValue22 = numberValue22[numberValue24]
              numberValue21 = numberValue21 * numberValue22
              waitCall = dataTable8 + numberValue21
              numberValue21 = numberValue13
              numberValue22 = waitCall
              numberValue21(numberValue22)
            end
          end
        end
      else
        numberValue21 = IsDisabledControlJustPressed
        numberValue22 = 0
        numberValue24 = 173
        numberValue21 = numberValue21(numberValue22, numberValue24)
        if numberValue21 then
          numberValue21 = numberValue23
          if numberValue21 < 3 then
            numberValue21 = numberValue23
            if numberValue21 >= 0 then
              numberValue21 = numberValue23
              numberValue21 = numberValue21 + 1
              numberValue23 = numberValue21
              numberValue21 = textValue4
              numberValue22 = "Disconnect_Wire"
              numberValue24 = "DLC_H4_Voltage_Minigame_Sounds"
              numberValue21(numberValue22, numberValue24)
              numberValue21 = numberValue26
              if 0 ~= numberValue21 then
                numberValue22 = numberValue23
                numberValue21 = dataTable10
                numberValue21 = numberValue21[numberValue22]
                numberValue24 = numberValue26
                numberValue22 = numberValue10
                numberValue22 = numberValue22[numberValue24]
                numberValue21 = numberValue21 * numberValue22
                waitCall = dataTable8 + numberValue21
                numberValue21 = numberValue13
                numberValue22 = waitCall
                numberValue21(numberValue22)
              end
            end
          end
        else
          numberValue21 = IsDisabledControlJustPressed
          numberValue22 = 0
          numberValue24 = 174
          numberValue21 = numberValue21(numberValue22, numberValue24)
          if numberValue21 then
            numberValue21 = numberValue26
            if numberValue21 > 1 then
              numberValue21 = numberValue26
              if numberValue21 < 4 then
                numberValue21 = numberValue26
                numberValue21 = numberValue21 - 1
                numberValue26 = numberValue21
                numberValue21 = textValue4
                numberValue22 = "Disconnect_Wire"
                numberValue24 = "DLC_H4_Voltage_Minigame_Sounds"
                numberValue21(numberValue22, numberValue24)
                numberValue22 = numberValue23
                numberValue21 = dataTable10
                numberValue21 = numberValue21[numberValue22]
                numberValue24 = numberValue26
                numberValue22 = numberValue10
                numberValue22 = numberValue22[numberValue24]
                numberValue21 = numberValue21 * numberValue22
                waitCall = dataTable8 + numberValue21
                numberValue21 = numberValue13
                numberValue22 = waitCall
                numberValue21(numberValue22)
              end
            end
          else
            numberValue21 = IsDisabledControlJustPressed
            numberValue22 = 0
            numberValue24 = 175
            numberValue21 = numberValue21(numberValue22, numberValue24)
            if numberValue21 then
              numberValue21 = numberValue26
              if numberValue21 < 3 then
                numberValue21 = numberValue26
                if numberValue21 >= 0 then
                  numberValue21 = numberValue26
                  numberValue21 = numberValue21 + 1
                  numberValue26 = numberValue21
                  numberValue21 = textValue4
                  numberValue22 = "Disconnect_Wire"
                  numberValue24 = "DLC_H4_Voltage_Minigame_Sounds"
                  numberValue21(numberValue22, numberValue24)
                  numberValue22 = numberValue23
                  numberValue21 = dataTable10
                  numberValue21 = numberValue21[numberValue22]
                  numberValue24 = numberValue26
                  numberValue22 = numberValue10
                  numberValue22 = numberValue22[numberValue24]
                  numberValue21 = numberValue21 * numberValue22
                  waitCall = dataTable8 + numberValue21
                  numberValue21 = numberValue13
                  numberValue22 = waitCall
                  numberValue21(numberValue22)
                end
              end
            else
              numberValue21 = IsDisabledControlJustPressed
              numberValue22 = 0
              numberValue24 = 194
              numberValue21 = numberValue21(numberValue22, numberValue24)
              if numberValue21 then
                numberValue21 = false
                workValue7 = numberValue21
                numberValue21 = false
                flag = numberValue21
                numberValue21 = textValue4
                numberValue22 = "Minigame_Failure"
                numberValue24 = "DLC_H4_Voltage_Minigame_Sounds"
                numberValue21(numberValue22, numberValue24)
                numberValue21 = SendNUIMessage
                numberValue22 = {}
                numberValue22.type = "fail"
                -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                numberValue21(numberValue22)
                numberValue21 = true
                flag2 = numberValue21
                numberValue21 = workValue27
                numberValue22 = 0
                numberValue24 = "Hack cancelled"
                numberValue21(numberValue22, numberValue24)
              else
                numberValue21 = IsDisabledControlJustPressed
                numberValue22 = 0
                numberValue24 = 191
                numberValue21 = numberValue21(numberValue22, numberValue24)
                if numberValue21 then
                  numberValue21 = numberValue26
                  if 0 ~= numberValue21 then
                    numberValue21 = tostring
                    numberValue22 = numberValue26
                    numberValue21 = numberValue21(numberValue22)
                    numberValue22 = dataTable2
                    numberValue21 = numberValue22[numberValue21]
                    if nil ~= numberValue21 then
                      numberValue21 = tostring
                      numberValue22 = numberValue26
                      numberValue21 = numberValue21(numberValue22)
                      numberValue22 = dataTable2
                      numberValue21 = numberValue22[numberValue21]
                      if false ~= numberValue21 then
                        goto flow_label_367
                      end
                    end
                    numberValue21 = tostring
                    numberValue22 = numberValue23
                    numberValue21 = numberValue21(numberValue22)
                    numberValue22 = dataTable3
                    numberValue21 = numberValue22[numberValue21]
                    if nil ~= numberValue21 then
                      numberValue21 = tostring
                      numberValue22 = numberValue23
                      numberValue21 = numberValue21(numberValue22)
                      numberValue22 = dataTable3
                      numberValue21 = numberValue22[numberValue21]
                      if false ~= numberValue21 then
                        goto flow_label_367
                      end
                    end
                    numberValue21 = 1
                    numberValue22 = 255
                    numberValue24 = textValue4
                    numberValue27 = "OS_Draw"
                    numberValue28 = "DLC_H4_Voltage_Minigame_Sounds"
                    numberValue24(numberValue27, numberValue28)
                    numberValue24 = CreateThread
                    -- Beginner: this function is the body of a background FiveM thread.

                    -- === HELPER FUNCTION (decompiler name: numberValue27; parameters: none) ===
                    function numberValue27()
                      local waitCall2, numberValue8, numberValue15, workValue25, workValue28, numberValue25
                      while true do
                        waitCall2 = numberValue21
                        if not (waitCall2 > 0) then
                          break
                        end
                        waitCall2 = 1
                        numberValue8 = dataTable7
                        numberValue8 = #numberValue8
                        numberValue15 = 1
                        for workValue25 = waitCall2, numberValue8, numberValue15 do
                          workValue28 = dataTable7
                          numberValue25 = numberValue22
                          workValue28[workValue25] = numberValue25
                          workValue28 = numberValue22
                          numberValue25 = 255
                          if workValue28 < numberValue25 then
                            workValue28 = numberValue22
                            workValue28 = workValue28 + 85
                            numberValue22 = workValue28
                          else
                            workValue28 = numberValue22
                            workValue28 = workValue28 - 85
                            numberValue22 = workValue28
                          end
                        end
                        waitCall2 = Wait
                        numberValue8 = 100
                        waitCall2(numberValue8)
                      end
                      waitCall2 = 1
                      numberValue8 = dataTable7
                      numberValue8 = #numberValue8
                      numberValue15 = 1
                      for workValue25 = waitCall2, numberValue8, numberValue15 do
                        workValue28 = dataTable7
                        workValue28[workValue25] = 255
                      end
                    end
                    -- Beginner: Start a separate FiveM thread so this code can run independently.
                    numberValue24(numberValue27)
                    numberValue24 = Wait
                    numberValue27 = 1000
                    numberValue24(numberValue27)
                    numberValue21 = 0
                    numberValue27 = numberValue23
                    numberValue24 = dataTable10
                    numberValue24 = numberValue24[numberValue27]
                    numberValue28 = numberValue26
                    numberValue27 = numberValue10
                    numberValue27 = numberValue27[numberValue28]
                    numberValue24 = numberValue24 * numberValue27
                    dataTable8 = dataTable8 + numberValue24
                    numberValue = dataTable8
                    numberValue24 = tostring
                    numberValue27 = numberValue26
                    numberValue24 = numberValue24(numberValue27)
                    numberValue27 = dataTable2
                    numberValue27[numberValue24] = true
                    numberValue24 = tostring
                    numberValue27 = numberValue23
                    numberValue24 = numberValue24(numberValue27)
                    numberValue27 = dataTable3
                    numberValue28 = {}
                    numberValue30 = numberValue23
                    numberValue31 = numberValue26
                    numberValue28[1] = numberValue30
                    numberValue28[2] = numberValue31
                    numberValue27[numberValue24] = numberValue28
                    numberValue24 = textValue3
                    numberValue27 = dataTable3
                    numberValue24 = numberValue24(numberValue27)
                    if numberValue24 >= 3 then
                      numberValue24 = numberValue29
                      if dataTable8 == numberValue24 then
                        numberValue24 = true
                        workValue7 = numberValue24
                        numberValue24 = textValue4
                        numberValue27 = "All_Connected_Correct"
                        numberValue28 = "DLC_H4_Voltage_Minigame_Sounds"
                        numberValue24(numberValue27, numberValue28)
                        numberValue24 = 1
                        numberValue27 = CreateThread
                        -- Beginner: this function is the body of a background FiveM thread.

                        -- === HELPER FUNCTION (decompiler name: numberValue28; parameters: none) ===
                        function numberValue28()
                          local waitCall2, numberValue8
                          while true do
                            waitCall2 = numberValue24
                            if not (waitCall2 > 0) then
                              break
                            end
                            waitCall2 = dataTable6
                            numberValue8 = 255
                            if waitCall2 < numberValue8 then
                              waitCall2 = dataTable6
                              waitCall2 = waitCall2 + 85
                              dataTable6 = waitCall2
                            else
                              waitCall2 = dataTable6
                              waitCall2 = waitCall2 - 85
                              dataTable6 = waitCall2
                            end
                            waitCall2 = Wait
                            numberValue8 = 100
                            waitCall2(numberValue8)
                          end
                          waitCall2 = 255
                          dataTable6 = waitCall2
                        end
                        -- Beginner: Start a separate FiveM thread so this code can run independently.
                        numberValue27(numberValue28)
                        numberValue27 = Wait
                        numberValue28 = 1000
                        numberValue27(numberValue28)
                        numberValue24 = 0
                        numberValue27 = textValue4
                        numberValue28 = "Minigame_Success"
                        numberValue30 = "DLC_H4_Voltage_Minigame_Sounds"
                        numberValue27(numberValue28, numberValue30)
                        numberValue27 = SendNUIMessage
                        numberValue28 = {}
                        numberValue28.type = "success"
                        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                        numberValue27(numberValue28)
                        numberValue27 = false
                        flag = numberValue27
                        numberValue27 = true
                        flag2 = numberValue27
                        numberValue27 = workValue27
                        numberValue28 = 1
                        numberValue27(numberValue28)
                      else
                        numberValue24 = Wait
                        numberValue27 = 1000
                        numberValue24(numberValue27)
                        numberValue24 = false
                        workValue7 = numberValue24
                        numberValue24 = false
                        flag = numberValue24
                        numberValue24 = textValue4
                        numberValue27 = "Minigame_Failure"
                        numberValue28 = "DLC_H4_Voltage_Minigame_Sounds"
                        numberValue24(numberValue27, numberValue28)
                        numberValue24 = SendNUIMessage
                        numberValue27 = {}
                        numberValue27.type = "fail"
                        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                        numberValue24(numberValue27)
                        numberValue24 = true
                        flag2 = numberValue24
                        numberValue24 = workValue27
                        numberValue27 = 0
                        numberValue28 = "Hack failed"
                        numberValue24(numberValue27, numberValue28)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      ::flow_label_367::
    end
    numberValue21 = print
    numberValue22 = "Ended second Voltlab hacking thread"
    numberValue21(numberValue22)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg6(arg7)
  arg6 = print
  arg7 = "Creating third Voltlab hacking thread"
  arg6(arg7)
  arg6 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: arg7() ===
  function arg7()
    local waitCall, dataTable8, textValue5, numberValue21
    waitCall = Wait
    dataTable8 = 5000
    waitCall(dataTable8)
    waitCall = arg4
    waitCall = waitCall / 6
    while true do
      dataTable8 = arg4
      if not (dataTable8 > 0) then
        break
      end
      dataTable8 = Wait
      textValue5 = waitCall * 1000
      dataTable8(textValue5)
      dataTable8 = arg4
      dataTable8 = dataTable8 - waitCall
      arg4 = dataTable8
      dataTable8 = textValue
      dataTable8 = dataTable8 - 1
      textValue = dataTable8
    end
    dataTable8 = Wait
    textValue5 = 2000
    dataTable8(textValue5)
    dataTable8 = workValue7
    if nil == dataTable8 then
      dataTable8 = false
      flag = dataTable8
      dataTable8 = textValue4
      textValue5 = "Minigame_Failure"
      numberValue21 = "DLC_H4_Voltage_Minigame_Sounds"
      dataTable8(textValue5, numberValue21)
      dataTable8 = SendNUIMessage
      textValue5 = {}
      textValue5.type = "fail"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      dataTable8(textValue5)
      dataTable8 = flag2
      if not dataTable8 then
        dataTable8 = workValue27
        textValue5 = 2
        numberValue21 = "Hack timeout out"
        dataTable8(textValue5, numberValue21)
      end
    end
    dataTable8 = print
    textValue5 = "Ended third Voltlab hacking thread"
    dataTable8(textValue5)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg6(arg7)
end
-- Beginner: Register a client-side event handler. Event/command: "ultra-voltlab".
eventHandlerRegistration(textValue7, workValue26)
