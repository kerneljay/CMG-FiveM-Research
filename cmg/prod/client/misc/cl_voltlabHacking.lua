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
local workingValue, workingValue16, stateFlag, stateFlag2, workingValue27, number23, number26, dataCollection10, number29, dataCollection11, number, dataCollection, dataCollection2, dataCollection3, text, workingValue7, dataCollection4, dataCollection5, dataCollection6, dataCollection7, number9, number10, number11, dataCollection9, text2, text3, text4, number12, number13, number14, number16, number17, number18, number19, number20, text6, workingValue23, workingValue24, eventHandlerRegistration, text7, workingValue26
workingValue = DrawSprite
workingValue16 = DrawRect
stateFlag = false
stateFlag2 = false
workingValue27 = nil
number23 = 1
number26 = 0
dataCollection10 = {}
number29 = 0
dataCollection11 = {}
number = 0
dataCollection = {}
dataCollection2 = "0"
dataCollection3 = "0"
text = "0"
dataCollection[1] = dataCollection2
dataCollection[2] = dataCollection3
dataCollection[3] = text
dataCollection2 = {}
dataCollection3 = {}
text = 6
workingValue7 = nil
dataCollection4 = {}
dataCollection5 = {}
dataCollection6 = 250
dataCollection7 = 172
number9 = 54
dataCollection5[1] = dataCollection6
dataCollection5[2] = dataCollection7
dataCollection5[3] = number9
dataCollection6 = {}
dataCollection7 = 247
number9 = 49
number10 = 49
dataCollection6[1] = dataCollection7
dataCollection6[2] = number9
dataCollection6[3] = number10
dataCollection7 = {}
number9 = 58
number10 = 53
number11 = 212
dataCollection7[1] = number9
dataCollection7[2] = number10
dataCollection7[3] = number11
dataCollection4[1] = dataCollection5
dataCollection4[2] = dataCollection6
dataCollection4[3] = dataCollection7
dataCollection5 = {}
dataCollection6 = {}
dataCollection7 = 191
number9 = 191
number10 = 191
dataCollection6[1] = dataCollection7
dataCollection6[2] = number9
dataCollection6[3] = number10
dataCollection7 = {}
number9 = 88
number10 = 204
number11 = 102
dataCollection7[1] = number9
dataCollection7[2] = number10
dataCollection7[3] = number11
dataCollection5[1] = dataCollection6
dataCollection5[2] = dataCollection7
dataCollection6 = 255
dataCollection7 = {}
number9 = 255
number10 = 255
number11 = 255
dataCollection7[1] = number9
dataCollection7[2] = number10
dataCollection7[3] = number11
number9 = {}
number10 = "Icons__x1"
number11 = "Icons__x2"
dataCollection9 = "Icons__x3"
text2 = "Icons__x5"
text3 = "Icons__x10"
text4 = "Icons__x15"
number9[1] = number10
number9[2] = number11
number9[3] = dataCollection9
number9[4] = text2
number9[5] = text3
number9[6] = text4
number10 = {}
number11 = 1
dataCollection9 = 10
text2 = 50
number10[1] = number11
number10[2] = dataCollection9
number10[3] = text2
number11 = {}
dataCollection9 = {}
text2 = 0.383
text3 = 0.815
text4 = 0.0145
number12 = 0.05
dataCollection9[1] = text2
dataCollection9[2] = text3
dataCollection9[3] = text4
dataCollection9[4] = number12
text2 = {}
text3 = 0.373
text4 = 0.815
number12 = 0.0145
number13 = 0.05
text2[1] = text3
text2[2] = text4
text2[3] = number12
text2[4] = number13
text3 = {}
text4 = 0.363
number12 = 0.815
number13 = 0.0145
number14 = 0.05
text3[1] = text4
text3[2] = number12
text3[3] = number13
text3[4] = number14
text4 = {}
number12 = 0.353
number13 = 0.815
number14 = 0.0145
number16 = 0.05
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
number12 = {}
number13 = 0.343
number14 = 0.815
number16 = 0.0145
number17 = 0.05
number12[1] = number13
number12[2] = number14
number12[3] = number16
number12[4] = number17
number13 = {}
number14 = 0.333
number16 = 0.815
number17 = 0.0145
number18 = 0.05
number13[1] = number14
number13[2] = number16
number13[3] = number17
number13[4] = number18
number11[1] = dataCollection9
number11[2] = text2
number11[3] = text3
number11[4] = text4
number11[5] = number12
number11[6] = number13
dataCollection9 = {}
text2 = {}
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.307
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square1 = text4
text4 = {}
number12 = 0.658
number13 = 0.307
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square2 = text4
text4 = {}
number12 = 0.49
number13 = 0.307
number14 = 0.33
number16 = 0.004
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line = text4
text2["1"] = text3
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.307
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square1 = text4
text4 = {}
number12 = 0.49
number13 = 0.307
number14 = 0.007
number16 = 0.0135
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.sqaure2 = text4
text4 = {}
number12 = 0.49
number13 = 0.501
number14 = 0.007
number16 = 0.0128
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square3 = text4
text4 = {}
number12 = 0.657
number13 = 0.501
number14 = 0.007
number16 = 0.0128
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square4 = text4
text4 = {}
number12 = 0.407
number13 = 0.307
number14 = 0.16
number16 = 0.004
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line1 = text4
text4 = {}
number12 = 0.4905
number13 = 0.404
number14 = 0.002
number16 = 0.18
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line2 = text4
text4 = {}
number12 = 0.574
number13 = 0.501
number14 = 0.16
number16 = 0.004
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line3 = text4
text2["2"] = text3
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.307
number14 = 0.007
number16 = 0.0128
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.square1 = text4
text4 = {}
number12 = 0.397
number13 = 0.307
number14 = 0.007
number16 = 0.0128
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.square2 = text4
text4 = {}
number12 = 0.397
number13 = 0.502
number14 = 0.007
number16 = 0.0128
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.square3 = text4
text4 = {}
number12 = 0.49
number13 = 0.502
number14 = 0.007
number16 = 0.0128
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.square4 = text4
text4 = {}
number12 = 0.49
number13 = 0.694
number14 = 0.007
number16 = 0.0128
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.square5 = text4
text4 = {}
number12 = 0.657
number13 = 0.694
number14 = 0.007
number16 = 0.0128
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.square6 = text4
text4 = {}
number12 = 0.36
number13 = 0.307
number14 = 0.07
number16 = 0.004
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.line1 = text4
text4 = {}
number12 = 0.3965
number13 = 0.404
number14 = 0.002
number16 = 0.182
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.line2 = text4
text4 = {}
number12 = 0.445
number13 = 0.502
number14 = 0.09
number16 = 0.004
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.line3 = text4
text4 = {}
number12 = 0.4905
number13 = 0.598
number14 = 0.002
number16 = 0.182
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.line4 = text4
text4 = {}
number12 = 0.574
number13 = 0.694
number14 = 0.16
number16 = 0.004
number17 = 250
number18 = 172
number19 = 54
number20 = 255
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text4[5] = number17
text4[6] = number18
text4[7] = number19
text4[8] = number20
text3.line5 = text4
text2["3"] = text3
dataCollection9["1"] = text2
text2 = {}
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.5
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square1 = text4
text4 = {}
number12 = 0.46
number13 = 0.5
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square2 = text4
text4 = {}
number12 = 0.46
number13 = 0.39
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square3 = text4
text4 = {}
number12 = 0.551
number13 = 0.39
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square4 = text4
text4 = {}
number12 = 0.551
number13 = 0.307
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square5 = text4
text4 = {}
number12 = 0.658
number13 = 0.307
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square6 = text4
text4 = {}
number12 = 0.392
number13 = 0.5
number14 = 0.129
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line1 = text4
text4 = {}
number12 = 0.46
number13 = 0.444
number14 = 0.003
number16 = 0.1
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line2 = text4
text4 = {}
number12 = 0.508
number13 = 0.39
number14 = 0.09
number16 = 0.004
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line3 = text4
text4 = {}
number12 = 0.508
number13 = 0.39
number14 = 0.09
number16 = 0.0025
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line4 = text4
text4 = {}
number12 = 0.605
number13 = 0.307
number14 = 0.108
number16 = 0.004
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line5 = text4
text4 = {}
number12 = 0.551
number13 = 0.35
number14 = 0.0025
number16 = 0.08
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line6 = text4
text2["1"] = text3
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.5
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square1 = text4
text4 = {}
number12 = 0.657
number13 = 0.5
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square2 = text4
text4 = {}
number12 = 0.49
number13 = 0.5
number14 = 0.33
number16 = 0.004
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line1 = text4
text2["2"] = text3
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.5
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square1 = text4
text4 = {}
number12 = 0.429
number13 = 0.5
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square2 = text4
text4 = {}
number12 = 0.429
number13 = 0.694
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square3 = text4
text4 = {}
number12 = 0.657
number13 = 0.694
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square4 = text4
text4 = {}
number12 = 0.376
number13 = 0.5
number14 = 0.1
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line1 = text4
text4 = {}
number12 = 0.429
number13 = 0.6
number14 = 0.003
number16 = 0.2
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line2 = text4
text4 = {}
number12 = 0.543
number13 = 0.694
number14 = 0.22
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line3 = text4
text2["3"] = text3
dataCollection9["2"] = text2
text2 = {}
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.694
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square1 = text4
text4 = {}
number12 = 0.521
number13 = 0.694
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square2 = text4
text4 = {}
number12 = 0.521
number13 = 0.61
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square3 = text4
text4 = {}
number12 = 0.582
number13 = 0.61
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square4 = text4
text4 = {}
number12 = 0.582
number13 = 0.3085
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square5 = text4
text4 = {}
number12 = 0.6565
number13 = 0.307
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square6 = text4
text4 = {}
number12 = 0.421
number13 = 0.694
number14 = 0.19
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line1 = text4
text4 = {}
number12 = 0.521
number13 = 0.652
number14 = 0.00222
number16 = 0.074
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line2 = text4
text4 = {}
number12 = 0.55
number13 = 0.61
number14 = 0.06
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line3 = text4
text4 = {}
number12 = 0.582
number13 = 0.46
number14 = 0.00222
number16 = 0.29
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line4 = text4
text4 = {}
number12 = 0.62
number13 = 0.307
number14 = 0.07
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line5 = text4
text2["1"] = text3
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.694
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.sqaure1 = text4
text4 = {}
number12 = 0.521
number13 = 0.694
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.sqaure2 = text4
text4 = {}
number12 = 0.521
number13 = 0.61
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.sqaure3 = text4
text4 = {}
number12 = 0.582
number13 = 0.61
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.sqaure4 = text4
text4 = {}
number12 = 0.582
number13 = 0.5
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.sqaure5 = text4
text4 = {}
number12 = 0.6565
number13 = 0.5
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.sqaure6 = text4
text4 = {}
number12 = 0.421
number13 = 0.694
number14 = 0.19
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line1 = text4
text4 = {}
number12 = 0.521
number13 = 0.652
number14 = 0.00222
number16 = 0.074
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line2 = text4
text4 = {}
number12 = 0.55
number13 = 0.61
number14 = 0.06
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line3 = text4
text4 = {}
number12 = 0.582
number13 = 0.55
number14 = 0.00222
number16 = 0.11
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line4 = text4
text4 = {}
number12 = 0.62
number13 = 0.5
number14 = 0.07
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line5 = text4
text2["2"] = text3
text3 = {}
text4 = {}
number12 = 0.324
number13 = 0.694
number14 = 0.006
number16 = 0.01
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square1 = text4
text4 = {}
number12 = 0.6565
number13 = 0.694
number14 = 0.007
number16 = 0.01281
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.square2 = text4
text4 = {}
number12 = 0.49
number13 = 0.694
number14 = 0.33
number16 = 0.0035
text4[1] = number12
text4[2] = number13
text4[3] = number14
text4[4] = number16
text3.line1 = text4
text2["3"] = text3
dataCollection9["3"] = text2

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue2 = {}
  localValue3 = 1
  localValue4 = #localValue1
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = localValue1[localValue6]
    localValue2[localValue6] = localValue7
  end
  localValue3 = #localValue2
  localValue4 = 2
  localValue5 = -1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = math
    localValue7 = localValue7.random
    localValue8 = localValue6
    localValue7 = localValue7(localValue8)
    localValue8 = localValue2[localValue7]
    localValue9 = localValue2[localValue6]
    localValue2[localValue7] = localValue9
    localValue2[localValue6] = localValue8
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue2 = 0
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7 in localValue3, localValue4, localValue5, localValue6 do
    localValue2 = localValue2 + 1
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2) ===
function text4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = PlaySoundFrontend
  localValue4 = -1
  localValue5 = localValue1
  localValue6 = localValue2
  localValue7 = true
  localValue3(localValue4, localValue5, localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
function number12()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue1 = 0
  number29 = localValue1
  localValue1 = 1
  localValue2 = 3
  localValue3 = 1
  for localValue4 = localValue1, localValue2, localValue3 do
    localValue5 = dataCollection10
    localValue6 = math
    localValue6 = localValue6.random
    localValue7 = 1
    localValue8 = 8
    localValue6 = localValue6(localValue7, localValue8)
    localValue5[localValue4] = localValue6
  end
  localValue1 = 1
  localValue2 = 3
  localValue3 = 1
  for localValue4 = localValue1, localValue2, localValue3 do
    localValue5 = number29
    localValue6 = dataCollection10
    localValue6 = localValue6[localValue4]
    localValue7 = number10
    localValue7 = localValue7[localValue4]
    localValue6 = localValue6 * localValue7
    localValue5 = localValue5 + localValue6
    number29 = localValue5
  end
end

-- === HELPER FUNCTION (decompiler name: number13; parameters: localValue1) ===
function number13(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11
  if not localValue1 then
    localValue1 = number
  end
  localValue2 = tostring
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = string
  localValue3 = localValue3.len
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 < 3 then
    localValue3 = 1
    localValue4 = string
    localValue4 = localValue4.len
    localValue5 = localValue2
    localValue4 = localValue4(localValue5)
    localValue5 = 3
    localValue4 = localValue5 - localValue4
    localValue5 = 1
    for localValue6 = localValue3, localValue4, localValue5 do
      localValue7 = "0"
      localValue8 = localValue2
      localValue7 = localValue7 .. localValue8
      localValue2 = localValue7
    end
  end
  localValue3 = 1
  localValue4 = 3
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = dataCollection
    localValue9 = localValue2
    localValue8 = localValue2.sub
    localValue10 = localValue6
    localValue11 = localValue6
    localValue8 = localValue8(localValue9, localValue10, localValue11)
    localValue7[localValue6] = localValue8
  end
end

-- === HELPER FUNCTION (decompiler name: number14; parameters: none) ===
function number14()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue1 = tostring
  localValue2 = number29
  localValue1 = localValue1(localValue2)
  localValue2 = string
  localValue2 = localValue2.len
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if localValue2 < 3 then
    localValue2 = 1
    localValue3 = string
    localValue3 = localValue3.len
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    localValue4 = 3
    localValue3 = localValue4 - localValue3
    localValue4 = 1
    for localValue5 = localValue2, localValue3, localValue4 do
      localValue6 = "0"
      localValue7 = localValue1
      localValue6 = localValue6 .. localValue7
      localValue1 = localValue6
    end
  end
  localValue2 = 1
  localValue3 = 3
  localValue4 = 1
  for localValue5 = localValue2, localValue3, localValue4 do
    localValue6 = dataCollection11
    localValue8 = localValue1
    localValue7 = localValue1.sub
    localValue9 = localValue5
    localValue10 = localValue5
    localValue7 = localValue7(localValue8, localValue9, localValue10)
    localValue6[localValue5] = localValue7
  end
end

-- === HELPER FUNCTION (decompiler name: number16; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function number16(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local localValue9, localValue10, localValue11, workingValue2, workingValue3, workingValue5, workingValue6, workingValue8, workingValue9
  localValue9 = workingValue16
  localValue10 = localValue1
  localValue11 = localValue2
  workingValue2 = localValue3
  workingValue3 = localValue4
  workingValue5 = localValue5
  workingValue6 = localValue6
  workingValue8 = localValue7
  workingValue9 = localValue8
  localValue9(localValue10, localValue11, workingValue2, workingValue3, workingValue5, workingValue6, workingValue8, workingValue9)
end

-- === HELPER FUNCTION (decompiler name: number17; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11) ===
function number17(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, localValue11)
  local workingValue2, workingValue3, workingValue5, workingValue6, workingValue8, workingValue9, workingValue10, workingValue12, workingValue14, workingValue17, workingValue19, workingValue21
  workingValue2 = workingValue
  workingValue3 = localValue1
  workingValue5 = localValue2
  workingValue6 = localValue3
  workingValue8 = localValue4
  workingValue9 = localValue5
  workingValue10 = localValue6
  workingValue12 = localValue7
  workingValue14 = localValue8
  workingValue17 = localValue9
  workingValue19 = localValue10
  workingValue21 = localValue11
  workingValue2(workingValue3, workingValue5, workingValue6, workingValue8, workingValue9, workingValue10, workingValue12, workingValue14, workingValue17, workingValue19, workingValue21)
end

-- === HELPER FUNCTION (decompiler name: number18; parameters: localValue1) ===
function number18(localValue1)
  local localValue2, localValue3
  localValue2 = BeginTextCommandScaleformString
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringKeyboardDisplay
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandScaleformString
  localValue2()
end
ButtonMessage = number18

-- === HELPER FUNCTION (decompiler name: number18; parameters: localValue1) ===
function number18(localValue1)
  local localValue2, localValue3
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamPlayerNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = localValue1
  localValue2(localValue3)
end
Button = number18

-- === HELPER FUNCTION (decompiler name: number18; parameters: localValue1) ===
function number18(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = RequestScaleformMovie
  localValue3 = localValue1
  -- Beginner: result below is scaleformHandle.
  localValue2 = localValue2(localValue3)
  while true do
    localValue3 = HasScaleformMovieLoaded
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "CLEAR_ALL"
  localValue3(localValue4, localValue5)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_CLEAR_SPACE"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 200
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_DATA_SLOT"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  localValue6 = 194
  localValue7 = true
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = ButtonMessage
  localValue4 = "Abort Hack"
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_DATA_SLOT"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 1
  localValue3(localValue4)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  localValue6 = 191
  localValue7 = true
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = ButtonMessage
  localValue4 = "Confirm selection (Irrevertible)"
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_DATA_SLOT"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 2
  localValue3(localValue4)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  localValue6 = 307
  localValue7 = true
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  localValue6 = 308
  localValue7 = true
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  localValue6 = 299
  localValue7 = true
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = Button
  localValue4 = GetControlInstructionalButton
  localValue5 = 2
  localValue6 = 300
  localValue7 = true
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = ButtonMessage
  localValue4 = "Select"
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "DRAW_INSTRUCTIONAL_BUTTONS"
  localValue3(localValue4, localValue5)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = BeginScaleformMovieMethod
  localValue4 = localValue2
  localValue5 = "SET_BACKGROUND_COLOUR"
  localValue3(localValue4, localValue5)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 0
  localValue3(localValue4)
  localValue3 = ScaleformMovieMethodAddParamInt
  localValue4 = 80
  localValue3(localValue4)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  return localValue2
end
number19 = {}
number20 = "MPIsland_Voltage"
text6 = "MPIsland_Voltage_BG"
number19[1] = number20
number19[2] = text6
number20 = "DLC_HEI4\\DLC_HEI4_V_MG"
text6 = "DLC_HEI4\\DLC_HEI4_FH_MG"

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: none) ===
function workingValue23()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = 1
  localValue2 = number19
  localValue2 = #localValue2
  localValue3 = 1
  for localValue4 = localValue1, localValue2, localValue3 do
    localValue5 = RequestStreamedTextureDict
    localValue6 = number19
    localValue6 = localValue6[localValue4]
    localValue7 = false
    localValue5(localValue6, localValue7)
  end
  localValue1 = 1
  localValue2 = number19
  localValue2 = #localValue2
  localValue3 = 1
  for localValue4 = localValue1, localValue2, localValue3 do
    while true do
      localValue5 = HasStreamedTextureDictLoaded
      localValue6 = number19
      localValue6 = localValue6[localValue4]
      localValue5 = localValue5(localValue6)
      if localValue5 then
        break
      end
      localValue5 = Wait
      localValue6 = 10
      localValue5(localValue6)
    end
  end
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  while true do
    localValue2 = RequestScriptAudioBank
    localValue3 = number20
    localValue4 = false
    localValue2 = localValue2(localValue3, localValue4)
    if localValue2 then
      break
    end
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue2 = localValue2 - localValue1
    localValue3 = 1500
    if localValue2 > localValue3 then
      localValue2 = ReleaseNamedScriptAudioBank
      localValue3 = number20
      localValue2(localValue3)
      break
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  while true do
    localValue3 = RequestScriptAudioBank
    localValue4 = text6
    localValue5 = false
    localValue3 = localValue3(localValue4, localValue5)
    if localValue3 then
      break
    end
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue2
    localValue4 = 1500
    if localValue3 > localValue4 then
      localValue3 = ReleaseNamedScriptAudioBank
      localValue4 = text6
      localValue3(localValue4)
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 0
    localValue3(localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: none) ===
function workingValue24()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = ReleaseNamedScriptAudioBank
  localValue2 = text6
  localValue1(localValue2)
  localValue1 = ReleaseNamedScriptAudioBank
  localValue2 = number20
  localValue1(localValue2)
  localValue1 = 1
  localValue2 = number19
  localValue2 = #localValue2
  localValue3 = 1
  for localValue4 = localValue1, localValue2, localValue3 do
    localValue5 = SetStreamedTextureDictAsNoLongerNeeded
    localValue6 = number19
    localValue6 = localValue6[localValue4]
    localValue5(localValue6)
  end
end
eventHandlerRegistration = AddEventHandler
text7 = "ultra-voltlab"
-- Beginner: this function runs when client event "ultra-voltlab" fires.

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1, localValue2) ===
function workingValue26(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue3 = workingValue23
  localValue3()
  localValue3 = false
  stateFlag2 = localValue3
  localValue3 = {}
  dataCollection2 = localValue3
  localValue3 = {}
  dataCollection3 = localValue3
  localValue3 = 1
  number23 = localValue3
  localValue3 = 0
  number26 = localValue3
  localValue3 = 6
  text = localValue3

  -- === HELPER FUNCTION: localValue3(...) ===
  function localValue3(...)
    local waitCall, dataCollection8
    waitCall = workingValue24
    waitCall()
    waitCall = localValue2
    dataCollection8 = ...
    waitCall(dataCollection8)
  end
  workingValue27 = localValue3
  localValue3 = tonumber
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue4 = localValue3
  if localValue3 < 10 or localValue3 > 60 then
    localValue5 = workingValue27
    localValue6 = -1
    localValue7 = "Entered time is out of range"
    localValue5(localValue6, localValue7)
    localValue5 = true
    stateFlag2 = localValue5
    return
  end
  localValue5 = number12
  localValue5()
  localValue5 = number14
  localValue5()
  while true do
    localValue5 = number29
    localValue6 = 999
    if not (localValue5 > localValue6) then
      localValue5 = number29
      if not (localValue5 <= 0) then
        break
      end
    end
    localValue5 = Wait
    localValue6 = 10
    localValue5(localValue6)
    localValue5 = number12
    localValue5()
  end
  localValue5 = text2
  localValue6 = dataCollection10
  localValue5 = localValue5(localValue6)
  dataCollection10 = localValue5
  localValue5 = text2
  localValue6 = number10
  localValue5 = localValue5(localValue6)
  number10 = localValue5
  localValue5 = text2
  localValue6 = number9
  localValue5 = localValue5(localValue6)
  number9 = localValue5
  localValue5 = 0
  localValue6 = 1
  localValue7 = 3
  localValue8 = 1
  for localValue9 = localValue6, localValue7, localValue8 do
    localValue10 = number10
    localValue10 = localValue10[localValue9]
    localValue5 = localValue5 + localValue10
  end
  if localValue5 > 111 or localValue5 <= 0 then
    localValue6 = workingValue27
    localValue7 = -1
    localValue8 = "Icon values are out of range in config"
    localValue6(localValue7, localValue8)
    localValue6 = true
    stateFlag2 = localValue6
    return
  end
  localValue6 = number14
  localValue6()
  localValue6 = true
  stateFlag = localValue6
  localValue6 = print
  localValue7 = "Creating first Voltlab hacking thread"
  localValue6(localValue7)
  localValue6 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local waitCall, dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4, number4, number5, number6, number7, workingValue11, workingValue13, workingValue15, workingValue18, workingValue20, workingValue22
    waitCall = Wait
    dataCollection8 = 100
    waitCall(dataCollection8)
    waitCall = SendNUIMessage
    dataCollection8 = {}
    dataCollection8.type = "intro"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    waitCall(dataCollection8)
    waitCall = text4
    dataCollection8 = "Loading_Bink"
    text5 = "DLC_H4_Voltage_Minigame_Sounds"
    waitCall(dataCollection8, text5)
    while true do
      waitCall = stateFlag
      if not waitCall then
        break
      end
      waitCall = Wait
      dataCollection8 = 1
      waitCall(dataCollection8)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage_BG"
      text5 = "PHONE_BACKGROUND"
      number21 = 0.5
      number22 = 0.5
      number24 = 1.0
      number27 = 1.0
      number28 = 0
      number30 = 255
      number31 = 255
      number2 = 255
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage_BG"
      text5 = "target_text"
      number21 = 0.498
      number22 = 0.12
      number24 = 0.04
      number27 = 0.014
      number28 = 0
      number30 = 231
      number31 = 99
      number2 = 99
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage_BG"
      text5 = "result_text"
      number21 = 0.498
      number22 = 0.88
      number24 = 0.04
      number27 = 0.014
      number28 = 0
      number30 = 88
      number31 = 204
      number2 = 102
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = "Phone_Icons"
      number21 = 0.95
      number22 = 0.03
      number24 = 0.08
      number27 = 0.04
      number28 = 0
      number30 = 160
      number31 = 160
      number2 = 160
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = "MainInterface_BG"
      number21 = 0.5
      number22 = 0.5
      number24 = 0.5
      number27 = 0.73
      number28 = 0
      number30 = 255
      number31 = 255
      number2 = 255
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = dataCollection11
      text5 = text5[1]
      number21 = 0.457
      number22 = 0.185
      number24 = 0.03
      number27 = 0.09
      number28 = 0
      number30 = 231
      number31 = 99
      number2 = 99
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = dataCollection11
      text5 = text5[2]
      number21 = 0.497
      number22 = 0.185
      number24 = 0.03
      number27 = 0.09
      number28 = 0
      number30 = 231
      number31 = 99
      number2 = 99
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = dataCollection11
      text5 = text5[3]
      number21 = 0.539
      number22 = 0.185
      number24 = 0.03
      number27 = 0.09
      number28 = 0
      number30 = 231
      number31 = 99
      number2 = 99
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = dataCollection10
      text5 = text5[1]
      number21 = 0.29
      number22 = 0.307
      number24 = 0.03
      number27 = 0.09
      number28 = 0
      number30 = 255
      number31 = 255
      number2 = 255
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = dataCollection10
      text5 = text5[2]
      number21 = 0.29
      number22 = 0.5
      number24 = 0.03
      number27 = 0.09
      number28 = 0
      number30 = 255
      number31 = 255
      number2 = 255
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = dataCollection10
      text5 = text5[3]
      number21 = 0.29
      number22 = 0.694
      number24 = 0.03
      number27 = 0.09
      number28 = 0
      number30 = 255
      number31 = 255
      number2 = 255
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = number9
      text5 = text5[1]
      number21 = 0.699
      number22 = 0.307
      number24 = 0.06
      number27 = 0.08
      number28 = 0
      number30 = 255
      number31 = 255
      number2 = 255
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = number9
      text5 = text5[2]
      number21 = 0.7
      number22 = 0.503
      number24 = 0.05
      number27 = 0.08
      number28 = 0
      number30 = 255
      number31 = 255
      number2 = 255
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = number17
      dataCollection8 = "MPIsland_Voltage"
      text5 = number9
      text5 = text5[3]
      number21 = 0.7
      number22 = 0.698
      number24 = 0.04
      number27 = 0.06
      number28 = 0
      number30 = 255
      number31 = 255
      number2 = 255
      number3 = 255
      waitCall(dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31, number2, number3)
      waitCall = 0
      dataCollection8 = number
      text5 = number29
      if dataCollection8 == text5 then
        waitCall = 2
      else
        waitCall = 1
      end
      dataCollection8 = number17
      text5 = "MPIsland_Voltage"
      number21 = tostring
      number22 = dataCollection
      number22 = number22[1]
      number21 = number21(number22)
      number22 = 0.457
      number24 = 0.815
      number27 = 0.03
      number28 = 0.09
      number30 = 0
      number31 = dataCollection5
      number31 = number31[waitCall]
      number31 = number31[1]
      number2 = dataCollection5
      number2 = number2[waitCall]
      number2 = number2[2]
      number3 = dataCollection5
      number3 = number3[waitCall]
      number3 = number3[3]
      workingValue4 = dataCollection6
      dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
      dataCollection8 = number17
      text5 = "MPIsland_Voltage"
      number21 = tostring
      number22 = dataCollection
      number22 = number22[2]
      number21 = number21(number22)
      number22 = 0.497
      number24 = 0.815
      number27 = 0.03
      number28 = 0.09
      number30 = 0
      number31 = dataCollection5
      number31 = number31[waitCall]
      number31 = number31[1]
      number2 = dataCollection5
      number2 = number2[waitCall]
      number2 = number2[2]
      number3 = dataCollection5
      number3 = number3[waitCall]
      number3 = number3[3]
      workingValue4 = dataCollection6
      dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
      dataCollection8 = number17
      text5 = "MPIsland_Voltage"
      number21 = tostring
      number22 = dataCollection
      number22 = number22[3]
      number21 = number21(number22)
      number22 = 0.539
      number24 = 0.815
      number27 = 0.03
      number28 = 0.09
      number30 = 0
      number31 = dataCollection5
      number31 = number31[waitCall]
      number31 = number31[1]
      number2 = dataCollection5
      number2 = number2[waitCall]
      number2 = number2[2]
      number3 = dataCollection5
      number3 = number3[waitCall]
      number3 = number3[3]
      workingValue4 = dataCollection6
      dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
      dataCollection8 = 1
      text5 = text
      number21 = 1
      for number22 = dataCollection8, text5, number21 do
        number24 = number17
        number27 = "MPIsland_Voltage"
        number28 = "maininterface_progress_highlight"
        number30 = number11
        number30 = number30[number22]
        number30 = number30[1]
        number31 = number11
        number31 = number31[number22]
        number31 = number31[2]
        number2 = number11
        number2 = number2[number22]
        number2 = number2[3]
        number3 = number11
        number3 = number3[number22]
        number3 = number3[4]
        workingValue4 = 0
        number4 = 88
        number5 = 204
        number6 = 102
        number7 = 255
        number24(number27, number28, number30, number31, number2, number3, workingValue4, number4, number5, number6, number7)
      end
      dataCollection8 = number23
      if 1 == dataCollection8 then
        dataCollection8 = number17
        text5 = "MPIsland_Voltage"
        number21 = "NUMBER_NODE"
        number22 = 0.298
        number24 = 0.307
        number27 = 0.06
        number28 = 0.098
        number30 = 0
        number31 = 250
        number2 = 172
        number3 = 54
        workingValue4 = 255
        dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
      else
        dataCollection8 = number23
        if 2 == dataCollection8 then
          dataCollection8 = number17
          text5 = "MPIsland_Voltage"
          number21 = "NUMBER_NODE"
          number22 = 0.298
          number24 = 0.5
          number27 = 0.06
          number28 = 0.098
          number30 = 0
          number31 = 247
          number2 = 49
          number3 = 49
          workingValue4 = 255
          dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
        else
          dataCollection8 = number23
          if 3 == dataCollection8 then
            dataCollection8 = number17
            text5 = "MPIsland_Voltage"
            number21 = "NUMBER_NODE"
            number22 = 0.298
            number24 = 0.693
            number27 = 0.06
            number28 = 0.098
            number30 = 0
            number31 = 58
            number2 = 53
            number3 = 212
            workingValue4 = 255
            dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
          end
        end
      end
      dataCollection8 = number26
      if 1 == dataCollection8 then
        dataCollection8 = number17
        text5 = "MPIsland_Voltage"
        number21 = "CIRCLE_NODE"
        number22 = 0.691
        number24 = 0.307
        number27 = 0.078
        number28 = 0.13
        number30 = 0
        number2 = number23
        number31 = dataCollection4
        number31 = number31[number2]
        number31 = number31[1]
        number3 = number23
        number2 = dataCollection4
        number2 = number2[number3]
        number2 = number2[2]
        workingValue4 = number23
        number3 = dataCollection4
        number3 = number3[workingValue4]
        number3 = number3[3]
        workingValue4 = 255
        dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
      else
        dataCollection8 = number26
        if 2 == dataCollection8 then
          dataCollection8 = number17
          text5 = "MPIsland_Voltage"
          number21 = "CIRCLE_NODE"
          number22 = 0.691
          number24 = 0.5
          number27 = 0.078
          number28 = 0.125
          number30 = 0
          number2 = number23
          number31 = dataCollection4
          number31 = number31[number2]
          number31 = number31[1]
          number3 = number23
          number2 = dataCollection4
          number2 = number2[number3]
          number2 = number2[2]
          workingValue4 = number23
          number3 = dataCollection4
          number3 = number3[workingValue4]
          number3 = number3[3]
          workingValue4 = 255
          dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
        else
          dataCollection8 = number26
          if 3 == dataCollection8 then
            dataCollection8 = number17
            text5 = "MPIsland_Voltage"
            number21 = "CIRCLE_NODE"
            number22 = 0.691
            number24 = 0.694
            number27 = 0.078
            number28 = 0.125
            number30 = 0
            number2 = number23
            number31 = dataCollection4
            number31 = number31[number2]
            number31 = number31[1]
            number3 = number23
            number2 = dataCollection4
            number2 = number2[number3]
            number2 = number2[2]
            workingValue4 = number23
            number3 = dataCollection4
            number3 = number3[workingValue4]
            number3 = number3[3]
            workingValue4 = 255
            dataCollection8(text5, number21, number22, number24, number27, number28, number30, number31, number2, number3, workingValue4)
          end
        end
      end
      dataCollection8 = number23
      if 0 ~= dataCollection8 then
        dataCollection8 = number26
        if 0 ~= dataCollection8 then
          dataCollection8 = pairs
          text5 = tostring
          number21 = number23
          text5 = text5(number21)
          number21 = dataCollection9
          text5 = number21[text5]
          number21 = tostring
          number22 = number26
          number21 = number21(number22)
          text5 = text5[number21]
          dataCollection8, text5, number21, number22 = dataCollection8(text5)
          for number24, number27 in dataCollection8, text5, number21, number22 do
            number28 = number23
            if number28 then
              number28 = number26
              if number28 then
                number28 = number16
                number30 = number27[1]
                number31 = number27[2]
                number2 = number27[3]
                number3 = number27[4]
                number4 = number23
                workingValue4 = dataCollection4
                workingValue4 = workingValue4[number4]
                workingValue4 = workingValue4[1]
                number5 = number23
                number4 = dataCollection4
                number4 = number4[number5]
                number4 = number4[2]
                number6 = number23
                number5 = dataCollection4
                number5 = number5[number6]
                number5 = number5[3]
                number7 = number23
                number6 = dataCollection7
                number6 = number6[number7]
                number28(number30, number31, number2, number3, workingValue4, number4, number5, number6)
              end
            end
          end
        end
      end
      dataCollection8 = text3
      text5 = dataCollection3
      dataCollection8 = dataCollection8(text5)
      if 0 ~= dataCollection8 then
        dataCollection8 = pairs
        text5 = dataCollection3
        dataCollection8, text5, number21, number22 = dataCollection8(text5)
        for number24, number27 in dataCollection8, text5, number21, number22 do
          number28 = pairs
          number30 = tostring
          number31 = number27[1]
          number30 = number30(number31)
          number31 = dataCollection9
          number30 = number31[number30]
          number31 = tostring
          number2 = number27[2]
          number31 = number31(number2)
          number30 = number30[number31]
          number28, number30, number31, number2 = number28(number30)
          for number3, workingValue4 in number28, number30, number31, number2 do
            number4 = number27[1]
            if number4 then
              number4 = number27[2]
              if number4 then
                number4 = number16
                number5 = workingValue4[1]
                number6 = workingValue4[2]
                number7 = workingValue4[3]
                workingValue11 = workingValue4[4]
                workingValue15 = number27[1]
                workingValue13 = dataCollection4
                workingValue13 = workingValue13[workingValue15]
                workingValue13 = workingValue13[1]
                workingValue18 = number27[1]
                workingValue15 = dataCollection4
                workingValue15 = workingValue15[workingValue18]
                workingValue15 = workingValue15[2]
                workingValue20 = number27[1]
                workingValue18 = dataCollection4
                workingValue18 = workingValue18[workingValue20]
                workingValue18 = workingValue18[3]
                workingValue22 = number27[1]
                workingValue20 = dataCollection7
                workingValue20 = workingValue20[workingValue22]
                number4(number5, number6, number7, workingValue11, workingValue13, workingValue15, workingValue18, workingValue20)
              end
            end
          end
        end
      end
    end
    waitCall = print
    dataCollection8 = "Ended first Voltlab hacking thread"
    waitCall(dataCollection8)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue6(localValue7)
  localValue6 = Wait
  localValue7 = 100
  localValue6(localValue7)
  localValue6 = print
  localValue7 = "Creating second Voltlab hacking thread"
  localValue6(localValue7)
  localValue6 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local waitCall, dataCollection8, text5, number21, number22, number24, number27, number28, number30, number31
    waitCall = 0
    dataCollection8 = 0
    text5 = number18
    number21 = "instructional_buttons"
    text5 = text5(number21)
    while true do
      number21 = stateFlag
      if not number21 then
        break
      end
      number21 = Wait
      number22 = 5
      number21(number22)
      number21 = DrawScaleformMovieFullscreen
      number22 = text5
      number24 = 255
      number27 = 255
      number28 = 255
      number30 = 255
      number31 = 0
      number21(number22, number24, number27, number28, number30, number31)
      number21 = DisableControlAction
      number22 = 0
      number24 = 172
      number27 = true
      number21(number22, number24, number27)
      number21 = DisableControlAction
      number22 = 0
      number24 = 173
      number27 = true
      number21(number22, number24, number27)
      number21 = DisableControlAction
      number22 = 0
      number24 = 174
      number27 = true
      number21(number22, number24, number27)
      number21 = DisableControlAction
      number22 = 0
      number24 = 175
      number27 = true
      number21(number22, number24, number27)
      number21 = DisableControlAction
      number22 = 0
      number24 = 194
      number27 = true
      number21(number22, number24, number27)
      number21 = DisableControlAction
      number22 = 0
      number24 = 191
      number27 = true
      number21(number22, number24, number27)
      number21 = DisableControlAction
      number22 = 0
      number24 = 24
      number27 = true
      number21(number22, number24, number27)
      number21 = DisableControlAction
      number22 = 0
      number24 = 25
      number27 = true
      number21(number22, number24, number27)
      number21 = IsDisabledControlJustPressed
      number22 = 0
      number24 = 172
      number21 = number21(number22, number24)
      if number21 then
        number21 = number23
        if number21 > 1 then
          number21 = number23
          if number21 < 4 then
            number21 = number23
            number21 = number21 - 1
            number23 = number21
            number21 = text4
            number22 = "Disconnect_Wire"
            number24 = "DLC_H4_Voltage_Minigame_Sounds"
            number21(number22, number24)
            number21 = number26
            if 0 ~= number21 then
              number22 = number23
              number21 = dataCollection10
              number21 = number21[number22]
              number24 = number26
              number22 = number10
              number22 = number22[number24]
              number21 = number21 * number22
              waitCall = dataCollection8 + number21
              number21 = number13
              number22 = waitCall
              number21(number22)
            end
          end
        end
      else
        number21 = IsDisabledControlJustPressed
        number22 = 0
        number24 = 173
        number21 = number21(number22, number24)
        if number21 then
          number21 = number23
          if number21 < 3 then
            number21 = number23
            if number21 >= 0 then
              number21 = number23
              number21 = number21 + 1
              number23 = number21
              number21 = text4
              number22 = "Disconnect_Wire"
              number24 = "DLC_H4_Voltage_Minigame_Sounds"
              number21(number22, number24)
              number21 = number26
              if 0 ~= number21 then
                number22 = number23
                number21 = dataCollection10
                number21 = number21[number22]
                number24 = number26
                number22 = number10
                number22 = number22[number24]
                number21 = number21 * number22
                waitCall = dataCollection8 + number21
                number21 = number13
                number22 = waitCall
                number21(number22)
              end
            end
          end
        else
          number21 = IsDisabledControlJustPressed
          number22 = 0
          number24 = 174
          number21 = number21(number22, number24)
          if number21 then
            number21 = number26
            if number21 > 1 then
              number21 = number26
              if number21 < 4 then
                number21 = number26
                number21 = number21 - 1
                number26 = number21
                number21 = text4
                number22 = "Disconnect_Wire"
                number24 = "DLC_H4_Voltage_Minigame_Sounds"
                number21(number22, number24)
                number22 = number23
                number21 = dataCollection10
                number21 = number21[number22]
                number24 = number26
                number22 = number10
                number22 = number22[number24]
                number21 = number21 * number22
                waitCall = dataCollection8 + number21
                number21 = number13
                number22 = waitCall
                number21(number22)
              end
            end
          else
            number21 = IsDisabledControlJustPressed
            number22 = 0
            number24 = 175
            number21 = number21(number22, number24)
            if number21 then
              number21 = number26
              if number21 < 3 then
                number21 = number26
                if number21 >= 0 then
                  number21 = number26
                  number21 = number21 + 1
                  number26 = number21
                  number21 = text4
                  number22 = "Disconnect_Wire"
                  number24 = "DLC_H4_Voltage_Minigame_Sounds"
                  number21(number22, number24)
                  number22 = number23
                  number21 = dataCollection10
                  number21 = number21[number22]
                  number24 = number26
                  number22 = number10
                  number22 = number22[number24]
                  number21 = number21 * number22
                  waitCall = dataCollection8 + number21
                  number21 = number13
                  number22 = waitCall
                  number21(number22)
                end
              end
            else
              number21 = IsDisabledControlJustPressed
              number22 = 0
              number24 = 194
              number21 = number21(number22, number24)
              if number21 then
                number21 = false
                workingValue7 = number21
                number21 = false
                stateFlag = number21
                number21 = text4
                number22 = "Minigame_Failure"
                number24 = "DLC_H4_Voltage_Minigame_Sounds"
                number21(number22, number24)
                number21 = SendNUIMessage
                number22 = {}
                number22.type = "fail"
                -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                number21(number22)
                number21 = true
                stateFlag2 = number21
                number21 = workingValue27
                number22 = 0
                number24 = "Hack cancelled"
                number21(number22, number24)
              else
                number21 = IsDisabledControlJustPressed
                number22 = 0
                number24 = 191
                number21 = number21(number22, number24)
                if number21 then
                  number21 = number26
                  if 0 ~= number21 then
                    number21 = tostring
                    number22 = number26
                    number21 = number21(number22)
                    number22 = dataCollection2
                    number21 = number22[number21]
                    if nil ~= number21 then
                      number21 = tostring
                      number22 = number26
                      number21 = number21(number22)
                      number22 = dataCollection2
                      number21 = number22[number21]
                      if false ~= number21 then
                        goto continueAtStep367
                      end
                    end
                    number21 = tostring
                    number22 = number23
                    number21 = number21(number22)
                    number22 = dataCollection3
                    number21 = number22[number21]
                    if nil ~= number21 then
                      number21 = tostring
                      number22 = number23
                      number21 = number21(number22)
                      number22 = dataCollection3
                      number21 = number22[number21]
                      if false ~= number21 then
                        goto continueAtStep367
                      end
                    end
                    number21 = 1
                    number22 = 255
                    number24 = text4
                    number27 = "OS_Draw"
                    number28 = "DLC_H4_Voltage_Minigame_Sounds"
                    number24(number27, number28)
                    number24 = CreateThread
                    -- Beginner: this function is the body of a background FiveM thread.

                    -- === HELPER FUNCTION (decompiler name: number27; parameters: none) ===
                    function number27()
                      local waitCall2, number8, number15, workingValue25, workingValue28, number25
                      while true do
                        waitCall2 = number21
                        if not (waitCall2 > 0) then
                          break
                        end
                        waitCall2 = 1
                        number8 = dataCollection7
                        number8 = #number8
                        number15 = 1
                        for workingValue25 = waitCall2, number8, number15 do
                          workingValue28 = dataCollection7
                          number25 = number22
                          workingValue28[workingValue25] = number25
                          workingValue28 = number22
                          number25 = 255
                          if workingValue28 < number25 then
                            workingValue28 = number22
                            workingValue28 = workingValue28 + 85
                            number22 = workingValue28
                          else
                            workingValue28 = number22
                            workingValue28 = workingValue28 - 85
                            number22 = workingValue28
                          end
                        end
                        waitCall2 = Wait
                        number8 = 100
                        waitCall2(number8)
                      end
                      waitCall2 = 1
                      number8 = dataCollection7
                      number8 = #number8
                      number15 = 1
                      for workingValue25 = waitCall2, number8, number15 do
                        workingValue28 = dataCollection7
                        workingValue28[workingValue25] = 255
                      end
                    end
                    -- Beginner: Start a separate FiveM thread so this code can run independently.
                    number24(number27)
                    number24 = Wait
                    number27 = 1000
                    number24(number27)
                    number21 = 0
                    number27 = number23
                    number24 = dataCollection10
                    number24 = number24[number27]
                    number28 = number26
                    number27 = number10
                    number27 = number27[number28]
                    number24 = number24 * number27
                    dataCollection8 = dataCollection8 + number24
                    number = dataCollection8
                    number24 = tostring
                    number27 = number26
                    number24 = number24(number27)
                    number27 = dataCollection2
                    number27[number24] = true
                    number24 = tostring
                    number27 = number23
                    number24 = number24(number27)
                    number27 = dataCollection3
                    number28 = {}
                    number30 = number23
                    number31 = number26
                    number28[1] = number30
                    number28[2] = number31
                    number27[number24] = number28
                    number24 = text3
                    number27 = dataCollection3
                    number24 = number24(number27)
                    if number24 >= 3 then
                      number24 = number29
                      if dataCollection8 == number24 then
                        number24 = true
                        workingValue7 = number24
                        number24 = text4
                        number27 = "All_Connected_Correct"
                        number28 = "DLC_H4_Voltage_Minigame_Sounds"
                        number24(number27, number28)
                        number24 = 1
                        number27 = CreateThread
                        -- Beginner: this function is the body of a background FiveM thread.

                        -- === HELPER FUNCTION (decompiler name: number28; parameters: none) ===
                        function number28()
                          local waitCall2, number8
                          while true do
                            waitCall2 = number24
                            if not (waitCall2 > 0) then
                              break
                            end
                            waitCall2 = dataCollection6
                            number8 = 255
                            if waitCall2 < number8 then
                              waitCall2 = dataCollection6
                              waitCall2 = waitCall2 + 85
                              dataCollection6 = waitCall2
                            else
                              waitCall2 = dataCollection6
                              waitCall2 = waitCall2 - 85
                              dataCollection6 = waitCall2
                            end
                            waitCall2 = Wait
                            number8 = 100
                            waitCall2(number8)
                          end
                          waitCall2 = 255
                          dataCollection6 = waitCall2
                        end
                        -- Beginner: Start a separate FiveM thread so this code can run independently.
                        number27(number28)
                        number27 = Wait
                        number28 = 1000
                        number27(number28)
                        number24 = 0
                        number27 = text4
                        number28 = "Minigame_Success"
                        number30 = "DLC_H4_Voltage_Minigame_Sounds"
                        number27(number28, number30)
                        number27 = SendNUIMessage
                        number28 = {}
                        number28.type = "success"
                        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                        number27(number28)
                        number27 = false
                        stateFlag = number27
                        number27 = true
                        stateFlag2 = number27
                        number27 = workingValue27
                        number28 = 1
                        number27(number28)
                      else
                        number24 = Wait
                        number27 = 1000
                        number24(number27)
                        number24 = false
                        workingValue7 = number24
                        number24 = false
                        stateFlag = number24
                        number24 = text4
                        number27 = "Minigame_Failure"
                        number28 = "DLC_H4_Voltage_Minigame_Sounds"
                        number24(number27, number28)
                        number24 = SendNUIMessage
                        number27 = {}
                        number27.type = "fail"
                        -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                        number24(number27)
                        number24 = true
                        stateFlag2 = number24
                        number24 = workingValue27
                        number27 = 0
                        number28 = "Hack failed"
                        number24(number27, number28)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      ::continueAtStep367::
    end
    number21 = print
    number22 = "Ended second Voltlab hacking thread"
    number21(number22)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue6(localValue7)
  localValue6 = print
  localValue7 = "Creating third Voltlab hacking thread"
  localValue6(localValue7)
  localValue6 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local waitCall, dataCollection8, text5, number21
    waitCall = Wait
    dataCollection8 = 5000
    waitCall(dataCollection8)
    waitCall = localValue4
    waitCall = waitCall / 6
    while true do
      dataCollection8 = localValue4
      if not (dataCollection8 > 0) then
        break
      end
      dataCollection8 = Wait
      text5 = waitCall * 1000
      dataCollection8(text5)
      dataCollection8 = localValue4
      dataCollection8 = dataCollection8 - waitCall
      localValue4 = dataCollection8
      dataCollection8 = text
      dataCollection8 = dataCollection8 - 1
      text = dataCollection8
    end
    dataCollection8 = Wait
    text5 = 2000
    dataCollection8(text5)
    dataCollection8 = workingValue7
    if nil == dataCollection8 then
      dataCollection8 = false
      stateFlag = dataCollection8
      dataCollection8 = text4
      text5 = "Minigame_Failure"
      number21 = "DLC_H4_Voltage_Minigame_Sounds"
      dataCollection8(text5, number21)
      dataCollection8 = SendNUIMessage
      text5 = {}
      text5.type = "fail"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      dataCollection8(text5)
      dataCollection8 = stateFlag2
      if not dataCollection8 then
        dataCollection8 = workingValue27
        text5 = 2
        number21 = "Hack timeout out"
        dataCollection8(text5, number21)
      end
    end
    dataCollection8 = print
    text5 = "Ended third Voltlab hacking thread"
    dataCollection8(text5)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue6(localValue7)
end
-- Beginner: Register a client-side event handler. Event/command: "ultra-voltlab".
eventHandlerRegistration(text7, workingValue26)
