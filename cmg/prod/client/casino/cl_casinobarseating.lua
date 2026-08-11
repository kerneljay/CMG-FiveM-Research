--[[
    LEVEL 1 BEGINNER GUIDE — Casinobarseating
    ==============================================

    File: cmg/prod/client/casino/cl_casinobarseating.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinobarseating feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 4
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
local textValue, textValue2, numberValue7, numberValue8, dataTable, dataTable2, textValue3, textValue4, dataTable3, vector3Builder2, vector3Builder, numberValue, numberValue2, numberValue4
textValue = "anim@amb@office@seating@male@var_b@base@"
textValue2 = ""
numberValue7 = 1
numberValue8 = 11
dataTable = {}
dataTable2 = {}
textValue3 = "anim@amb@office@seating@male@var_a@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[1] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@office@seating@male@var_b@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[2] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@office@seating@male@var_c@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[3] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@office@seating@male@var_d@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[4] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@office@seating@male@var_e@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[5] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@clubhouse@seating@female@var_a@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[6] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@clubhouse@seating@female@var_b@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[7] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@clubhouse@seating@female@var_c@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[8] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@clubhouse@seating@male@var_a@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[9] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@clubhouse@seating@male@var_b@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[10] = dataTable2
dataTable2 = {}
textValue3 = "anim@amb@clubhouse@seating@male@var_c@base@"
textValue4 = "base"
dataTable2[1] = textValue3
dataTable2[2] = textValue4
dataTable[11] = dataTable2
dataTable2 = false
textValue3 = nil
textValue4 = {}
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1120.862
numberValue = 212.423
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -124.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[0] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1120.2
numberValue = 211.123
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -115.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[1] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1120.862
numberValue = 212.423
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -124.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[2] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1120.2
numberValue = 211.123
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -115.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[3] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1119.816
numberValue = 209.848
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -106.5
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[4] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1119.618
numberValue = 208.511
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -96.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[5] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1119.54
numberValue = 207.185
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -99.5
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[6] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1118.818
numberValue = 204.723
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -117.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[7] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1118.193
numberValue = 203.635
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -127.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[8] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1117.355
numberValue = 202.623
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -137.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[9] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1116.384
numberValue = 201.823
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -147.5
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[10] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1115.254
numberValue = 201.136
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -157.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[11] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1114.046
numberValue = 200.698
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -167.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[12] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1112.791
numberValue = 200.235
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -158.0
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[13] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1111.561
numberValue = 199.51
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -148.0
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[14] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1130.482
numberValue = 239.144
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 152.93
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[15] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1129.412
numberValue = 239.844
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 130.68
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[16] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1128.693
numberValue = 240.931
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 109.18
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[17] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1128.732
numberValue = 243.531
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 66.43
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[18] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1129.494
numberValue = 244.656
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 44.43
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[19] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1130.592
numberValue = 245.344
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 20.43
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[20] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1133.189
numberValue = 245.344
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -25.32
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[21] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1134.295
numberValue = 244.606
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -48.07
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[22] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1135.011
numberValue = 243.469
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -68.32
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[23] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1125.608
numberValue = 252.885
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -27.82
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[24] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1126.656
numberValue = 252.185
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -48.32
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[25] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1127.391
numberValue = 251.06
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -69.57
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[26] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1127.354
numberValue = 248.448
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -116.07
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[27] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1126.609
numberValue = 247.36
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -136.82
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[28] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1125.499
numberValue = 246.623
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -159.32
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[29] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1122.905
numberValue = 246.673
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 153.5
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[30] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1121.809
numberValue = 247.398
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 131.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[31] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1121.087
numberValue = 248.548
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 111.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[32] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1120.862
numberValue = 212.423
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -124.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[33] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1120.2
numberValue = 211.123
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -115.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[34] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1119.816
numberValue = 209.848
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -106.5
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[35] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1119.618
numberValue = 208.511
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -96.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[36] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1119.54
numberValue = 207.185
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -99.5
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[37] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1118.818
numberValue = 204.723
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -117.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[38] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1118.193
numberValue = 203.635
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -127.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[39] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1117.355
numberValue = 202.623
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -137.25
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[40] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1116.384
numberValue = 201.823
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -147.5
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[41] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1115.254
numberValue = 201.136
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -157.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[42] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1114.046
numberValue = 200.698
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -167.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[43] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1112.791
numberValue = 200.235
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -158.0
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[44] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1111.561
numberValue = 199.51
numberValue2 = -50.4401
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -148.0
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[45] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1130.482
numberValue = 239.144
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 152.93
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[46] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1129.412
numberValue = 239.844
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 130.68
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[47] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1128.693
numberValue = 240.931
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 109.18
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[48] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1128.732
numberValue = 243.531
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 66.43
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[49] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1129.494
numberValue = 244.656
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 44.43
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[50] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1130.592
numberValue = 245.344
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 20.43
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[51] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1133.189
numberValue = 245.344
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -25.32
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[52] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1134.295
numberValue = 244.606
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -48.07
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[53] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1135.011
numberValue = 243.469
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -68.32
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[54] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1125.608
numberValue = 252.885
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -27.82
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[55] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1126.656
numberValue = 252.185
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -48.32
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[56] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1127.391
numberValue = 251.06
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -69.57
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[57] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1127.354
numberValue = 248.448
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -116.07
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[58] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1126.609
numberValue = 247.36
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -136.82
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[59] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1125.499
numberValue = 246.623
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = -159.32
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[60] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1122.905
numberValue = 246.673
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 153.5
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[61] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1121.809
numberValue = 247.398
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 131.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[62] = dataTable3
dataTable3 = {}
vector3Builder2 = vector3
vector3Builder = 1121.087
numberValue = 248.548
numberValue2 = -51.0408
vector3Builder2 = vector3Builder2(vector3Builder, numberValue, numberValue2)
vector3Builder = vector3
numberValue = 0.0
numberValue2 = 0.0
numberValue4 = 111.75
vector3Builder = vector3Builder(numberValue, numberValue2, numberValue4)
numberValue = 0
dataTable3[1] = vector3Builder2
dataTable3[2] = vector3Builder
dataTable3[3] = numberValue
textValue4[63] = dataTable3
dataTable3 = Citizen
dataTable3 = dataTable3.CreateThread

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: none) ===
function vector3Builder2()
  local arg1, arg2, workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5
  while true do
    arg1 = dataTable2
    if not arg1 then
      arg1 = GetEntityCoords
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      arg2, workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5 = arg2()
      -- Beginner: result below is entityCoords.
      arg1 = arg1(arg2, workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5)
      arg2 = pairs
      workValue = textValue4
      arg2, workValue, workValue2, cmgCall = arg2(workValue)
      for cmgCall2, workValue3 in arg2, workValue, workValue2, cmgCall do
        workValue4 = workValue3[1]
        workValue4 = arg1 - workValue4
        workValue4 = #workValue4
        workValue5 = textValue4
        workValue5 = workValue5[cmgCall2]
        workValue5[3] = workValue4
      end
    end
    arg1 = textValue3
    if nil ~= arg1 then
      arg1 = GetEntityCoords
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      arg2, workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5 = arg2()
      -- Beginner: result below is entityCoords.
      arg1 = arg1(arg2, workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5)
      workValue = textValue3
      arg2 = textValue4
      arg2 = arg2[workValue]
      workValue = arg2[1]
      workValue = arg1 - workValue
      workValue = #workValue
      if workValue > 2 then
        workValue2 = nil
        textValue3 = workValue2
        workValue2 = ClearHelp
        cmgCall = true
        workValue2(cmgCall)
      end
    end
    arg1 = Wait
    arg2 = 50
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
dataTable3(vector3Builder2)

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1, arg2) ===
function dataTable3(arg1, arg2)
  local workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3, numberValue5, numberValue6
  workValue = NetworkCreateSynchronisedScene
  workValue2 = arg1.x
  cmgCall = arg1.y
  cmgCall2 = arg1.z
  workValue3 = arg2.x
  workValue4 = arg2.y
  workValue5 = arg2.z
  numberValue9 = 2
  flag = true
  flag2 = false
  numberValue3 = 1065353216
  numberValue5 = 0
  numberValue6 = 1.12
  workValue = workValue(workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3, numberValue5, numberValue6)
  workValue2 = NetworkAddPedToSynchronisedScene
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = workValue
  workValue3 = textValue
  workValue4 = textValue2
  workValue5 = 2.0
  numberValue9 = -1000
  flag = 9
  flag2 = 0
  numberValue3 = 1148846080
  numberValue5 = 0
  workValue2(cmgCall, cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3, numberValue5)
  workValue2 = NetworkStartSynchronisedScene
  cmgCall = workValue
  workValue2(cmgCall)
  return workValue
end

-- === HELPER FUNCTION (decompiler name: vector3Builder2; parameters: arg1) ===
function vector3Builder2(arg1)
  local arg2, workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3
  arg2 = table
  arg2 = arg2.unpack
  workValue = textValue4
  workValue = workValue[arg1]
  arg2, workValue = arg2(workValue)
  workValue2 = tCMG
  workValue2 = workValue2.setCanAnim
  cmgCall = false
  workValue2(cmgCall)
  workValue2 = true
  dataTable2 = workValue2
  workValue2 = table
  workValue2 = workValue2.unpack
  cmgCall2 = numberValue7
  cmgCall = dataTable
  cmgCall = cmgCall[cmgCall2]
  workValue2, cmgCall = workValue2(cmgCall)
  textValue2 = cmgCall
  textValue = workValue2
  workValue2 = CMG
  workValue2 = workValue2.loadAnimDict
  cmgCall = textValue
  -- Beginner: Load a GTA animation dictionary before using it.
  workValue2(cmgCall)
  workValue2 = arg2
  cmgCall = TaskGoStraightToCoord
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall2 = cmgCall2()
  workValue3 = workValue2.x
  workValue4 = workValue2.y
  workValue5 = workValue2.z
  numberValue9 = 1.0
  flag = 50000
  flag2 = 312.2
  numberValue3 = 10.0
  cmgCall(cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3)
  cmgCall = GetEntityCoords
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.getPlayerPed
  cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3 = cmgCall2()
  -- Beginner: result below is entityCoords.
  cmgCall = cmgCall(cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3)
  while true do
    cmgCall2 = cmgCall - workValue2
    cmgCall2 = #cmgCall2
    workValue3 = 1.25
    if not (cmgCall2 >= workValue3) then
      break
    end
    cmgCall2 = GetEntityCoords
    workValue3 = CMG
    workValue3 = workValue3.getPlayerPed
    workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3 = workValue3()
    -- Beginner: result below is entityCoords.
    cmgCall2 = cmgCall2(workValue3, workValue4, workValue5, numberValue9, flag, flag2, numberValue3)
    cmgCall = cmgCall2
    cmgCall2 = Wait
    workValue3 = 100
    cmgCall2(workValue3)
  end
  cmgCall2 = GetCamViewModeForContext
  workValue3 = 0
  cmgCall2 = cmgCall2(workValue3)
  if 1 ~= cmgCall2 then
    cmgCall2 = GetCamViewModeForContext
    workValue3 = 0
    cmgCall2 = cmgCall2(workValue3)
    if 2 ~= cmgCall2 then
      goto flow_label_72
    end
  end
  cmgCall2 = SetCamViewModeForContext
  workValue3 = 0
  workValue4 = 0
  cmgCall2(workValue3, workValue4)
  ::flow_label_72::
  cmgCall2 = GetCamViewModeForContext
  workValue3 = 0
  cmgCall2 = cmgCall2(workValue3)
  if 4 == cmgCall2 then
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.InvokeNative
    workValue3 = 8773263032172758242
    workValue4 = 518572876
    cmgCall2(workValue3, workValue4)
  end
  cmgCall2 = dataTable3
  workValue3 = arg2
  workValue4 = workValue
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgCall2(workValue3, workValue4)
end
vector3Builder = Citizen
vector3Builder = vector3Builder.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
function numberValue()
  local arg1, arg2, workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2
  while true do
    arg1 = CMG
    arg1 = arg1.isInsideDiamondCasino
    arg1 = arg1()
    if arg1 then
      arg1 = dataTable2
      if arg1 then
        arg1 = SetPedCapsule
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        workValue = 0.13
        arg1(arg2, workValue)
        arg1 = IsControlJustPressed
        arg2 = 0
        workValue = 202
        arg1 = arg1(arg2, workValue)
        if arg1 then
          arg1 = CMG
          arg1 = arg1.loadAnimDict
          arg2 = "anim@amb@office@seating@male@var_a@base@"
          -- Beginner: Load a GTA animation dictionary before using it.
          arg1(arg2)
          arg1 = TaskPlayAnim
          arg2 = CMG
          arg2 = arg2.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          arg2 = arg2()
          workValue = "anim@amb@office@seating@male@var_a@base@"
          workValue2 = "exit"
          cmgCall = 1.0
          cmgCall2 = 1.0
          workValue3 = -1
          workValue4 = 0
          workValue5 = 0.0
          numberValue9 = false
          flag = false
          flag2 = false
          -- Beginner: Play an animation on a ped.
          arg1(arg2, workValue, workValue2, cmgCall, cmgCall2, workValue3, workValue4, workValue5, numberValue9, flag, flag2)
          arg1 = RemoveAnimDict
          arg2 = "anim@amb@office@seating@male@var_a@base@"
          arg1(arg2)
          arg1 = tCMG
          arg1 = arg1.setCanAnim
          arg2 = true
          arg1(arg2)
          arg1 = false
          dataTable2 = arg1
        end
        arg1 = IsControlJustPressed
        arg2 = 0
        workValue = 63
        arg1 = arg1(arg2, workValue)
        if arg1 then
          arg1 = numberValue7
          if 1 == arg1 then
            arg1 = numberValue8
            numberValue7 = arg1
          else
            arg1 = numberValue7
            arg1 = arg1 - 1
            numberValue7 = arg1
          end
          arg1 = table
          arg1 = arg1.unpack
          workValue = textValue3
          arg2 = textValue4
          arg2 = arg2[workValue]
          arg1, arg2 = arg1(arg2)
          workValue = table
          workValue = workValue.unpack
          cmgCall = numberValue7
          workValue2 = dataTable
          workValue2 = workValue2[cmgCall]
          workValue, workValue2 = workValue(workValue2)
          textValue2 = workValue2
          textValue = workValue
          workValue = dataTable3
          workValue2 = arg1
          cmgCall = arg2
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          workValue(workValue2, cmgCall)
        end
        arg1 = IsControlJustPressed
        arg2 = 0
        workValue = 64
        arg1 = arg1(arg2, workValue)
        if arg1 then
          arg1 = numberValue7
          if 11 == arg1 then
            arg1 = 1
            numberValue7 = arg1
          else
            arg1 = numberValue7
            arg1 = arg1 + 1
            numberValue7 = arg1
          end
          arg1 = table
          arg1 = arg1.unpack
          workValue = textValue3
          arg2 = textValue4
          arg2 = arg2[workValue]
          arg1, arg2 = arg1(arg2)
          workValue = table
          workValue = workValue.unpack
          cmgCall = numberValue7
          workValue2 = dataTable
          workValue2 = workValue2[cmgCall]
          workValue, workValue2 = workValue(workValue2)
          textValue2 = workValue2
          textValue = workValue
          workValue = dataTable3
          workValue2 = arg1
          cmgCall = arg2
          workValue(workValue2, cmgCall)
        end
      end
      arg1 = textValue3
      if nil ~= arg1 then
        arg1 = IsControlJustPressed
        arg2 = 0
        workValue = 38
        arg1 = arg1(arg2, workValue)
        if arg1 then
          arg1 = vector3Builder2
          arg2 = textValue3
          arg1(arg2)
          arg1 = drawNativeNotification
          arg2 = "Press ~INPUT_VEH_MOVE_LEFT_ONLY~ or ~INPUT_VEH_MOVE_RIGHT_ONLY~ to switch pose."
          -- Beginner: Show a GTA-style notification/help prompt.
          arg1(arg2)
        end
      end
      arg1 = dataTable2
      if not arg1 then
        arg1 = pairs
        arg2 = textValue4
        arg1, arg2, workValue, workValue2 = arg1(arg2)
        for cmgCall, cmgCall2 in arg1, arg2, workValue, workValue2 do
          workValue3 = cmgCall2[3]
          workValue4 = 1.5
          if workValue3 < workValue4 then
            workValue4 = textValue3
            if nil == workValue4 then
              workValue4 = drawNativeNotification
              workValue5 = "Press ~INPUT_PICKUP~ to take a seat"
              workValue4(workValue5)
            end
            textValue3 = cmgCall
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
vector3Builder(numberValue)
