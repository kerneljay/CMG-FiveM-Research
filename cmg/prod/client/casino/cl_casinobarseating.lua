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
local text, text2, number7, number8, dataCollection, dataCollection2, text3, text4, dataCollection3, createVector32, createVector3, number, number2, number4
text = "anim@amb@office@seating@male@var_b@base@"
text2 = ""
number7 = 1
number8 = 11
dataCollection = {}
dataCollection2 = {}
text3 = "anim@amb@office@seating@male@var_a@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[1] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@office@seating@male@var_b@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[2] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@office@seating@male@var_c@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[3] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@office@seating@male@var_d@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[4] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@office@seating@male@var_e@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[5] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@clubhouse@seating@female@var_a@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[6] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@clubhouse@seating@female@var_b@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[7] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@clubhouse@seating@female@var_c@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[8] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@clubhouse@seating@male@var_a@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[9] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@clubhouse@seating@male@var_b@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[10] = dataCollection2
dataCollection2 = {}
text3 = "anim@amb@clubhouse@seating@male@var_c@base@"
text4 = "base"
dataCollection2[1] = text3
dataCollection2[2] = text4
dataCollection[11] = dataCollection2
dataCollection2 = false
text3 = nil
text4 = {}
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1120.862
number = 212.423
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -124.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[0] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1120.2
number = 211.123
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -115.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[1] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1120.862
number = 212.423
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -124.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[2] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1120.2
number = 211.123
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -115.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[3] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1119.816
number = 209.848
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -106.5
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[4] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1119.618
number = 208.511
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -96.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[5] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1119.54
number = 207.185
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -99.5
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[6] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1118.818
number = 204.723
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -117.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[7] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1118.193
number = 203.635
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -127.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[8] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1117.355
number = 202.623
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -137.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[9] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1116.384
number = 201.823
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -147.5
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[10] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1115.254
number = 201.136
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -157.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[11] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1114.046
number = 200.698
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -167.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[12] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1112.791
number = 200.235
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -158.0
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[13] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1111.561
number = 199.51
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -148.0
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[14] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1130.482
number = 239.144
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 152.93
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[15] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1129.412
number = 239.844
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 130.68
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[16] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1128.693
number = 240.931
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 109.18
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[17] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1128.732
number = 243.531
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 66.43
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[18] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1129.494
number = 244.656
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 44.43
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[19] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1130.592
number = 245.344
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 20.43
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[20] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1133.189
number = 245.344
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -25.32
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[21] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1134.295
number = 244.606
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -48.07
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[22] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1135.011
number = 243.469
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -68.32
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[23] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1125.608
number = 252.885
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -27.82
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[24] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1126.656
number = 252.185
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -48.32
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[25] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1127.391
number = 251.06
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -69.57
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[26] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1127.354
number = 248.448
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -116.07
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[27] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1126.609
number = 247.36
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -136.82
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[28] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1125.499
number = 246.623
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -159.32
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[29] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1122.905
number = 246.673
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 153.5
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[30] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1121.809
number = 247.398
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 131.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[31] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1121.087
number = 248.548
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 111.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[32] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1120.862
number = 212.423
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -124.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[33] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1120.2
number = 211.123
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -115.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[34] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1119.816
number = 209.848
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -106.5
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[35] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1119.618
number = 208.511
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -96.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[36] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1119.54
number = 207.185
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -99.5
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[37] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1118.818
number = 204.723
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -117.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[38] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1118.193
number = 203.635
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -127.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[39] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1117.355
number = 202.623
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -137.25
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[40] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1116.384
number = 201.823
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -147.5
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[41] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1115.254
number = 201.136
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -157.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[42] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1114.046
number = 200.698
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -167.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[43] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1112.791
number = 200.235
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -158.0
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[44] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1111.561
number = 199.51
number2 = -50.4401
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -148.0
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[45] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1130.482
number = 239.144
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 152.93
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[46] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1129.412
number = 239.844
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 130.68
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[47] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1128.693
number = 240.931
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 109.18
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[48] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1128.732
number = 243.531
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 66.43
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[49] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1129.494
number = 244.656
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 44.43
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[50] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1130.592
number = 245.344
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 20.43
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[51] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1133.189
number = 245.344
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -25.32
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[52] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1134.295
number = 244.606
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -48.07
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[53] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1135.011
number = 243.469
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -68.32
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[54] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1125.608
number = 252.885
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -27.82
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[55] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1126.656
number = 252.185
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -48.32
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[56] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1127.391
number = 251.06
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -69.57
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[57] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1127.354
number = 248.448
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -116.07
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[58] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1126.609
number = 247.36
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -136.82
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[59] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1125.499
number = 246.623
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = -159.32
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[60] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1122.905
number = 246.673
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 153.5
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[61] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1121.809
number = 247.398
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 131.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[62] = dataCollection3
dataCollection3 = {}
createVector32 = vector3
createVector3 = 1121.087
number = 248.548
number2 = -51.0408
createVector32 = createVector32(createVector3, number, number2)
createVector3 = vector3
number = 0.0
number2 = 0.0
number4 = 111.75
createVector3 = createVector3(number, number2, number4)
number = 0
dataCollection3[1] = createVector32
dataCollection3[2] = createVector3
dataCollection3[3] = number
text4[63] = dataCollection3
dataCollection3 = Citizen
dataCollection3 = dataCollection3.CreateThread

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: none) ===
function createVector32()
  local localValue1, localValue2, workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5
  while true do
    localValue1 = dataCollection2
    if not localValue1 then
      localValue1 = GetEntityCoords
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      localValue2, workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5 = localValue2()
      -- Beginner: result below is entityCoords.
      localValue1 = localValue1(localValue2, workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5)
      localValue2 = pairs
      workingValue = text4
      localValue2, workingValue, workingValue2, cmgOperation = localValue2(workingValue)
      for cmgOperation2, workingValue3 in localValue2, workingValue, workingValue2, cmgOperation do
        workingValue4 = workingValue3[1]
        workingValue4 = localValue1 - workingValue4
        workingValue4 = #workingValue4
        workingValue5 = text4
        workingValue5 = workingValue5[cmgOperation2]
        workingValue5[3] = workingValue4
      end
    end
    localValue1 = text3
    if nil ~= localValue1 then
      localValue1 = GetEntityCoords
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      localValue2, workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5 = localValue2()
      -- Beginner: result below is entityCoords.
      localValue1 = localValue1(localValue2, workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5)
      workingValue = text3
      localValue2 = text4
      localValue2 = localValue2[workingValue]
      workingValue = localValue2[1]
      workingValue = localValue1 - workingValue
      workingValue = #workingValue
      if workingValue > 2 then
        workingValue2 = nil
        text3 = workingValue2
        workingValue2 = ClearHelp
        cmgOperation = true
        workingValue2(cmgOperation)
      end
    end
    localValue1 = Wait
    localValue2 = 50
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
dataCollection3(createVector32)

-- === HELPER FUNCTION (decompiler name: dataCollection3; parameters: localValue1, localValue2) ===
function dataCollection3(localValue1, localValue2)
  local workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3, number5, number6
  workingValue = NetworkCreateSynchronisedScene
  workingValue2 = localValue1.x
  cmgOperation = localValue1.y
  cmgOperation2 = localValue1.z
  workingValue3 = localValue2.x
  workingValue4 = localValue2.y
  workingValue5 = localValue2.z
  number9 = 2
  stateFlag = true
  stateFlag2 = false
  number3 = 1065353216
  number5 = 0
  number6 = 1.12
  workingValue = workingValue(workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3, number5, number6)
  workingValue2 = NetworkAddPedToSynchronisedScene
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = workingValue
  workingValue3 = text
  workingValue4 = text2
  workingValue5 = 2.0
  number9 = -1000
  stateFlag = 9
  stateFlag2 = 0
  number3 = 1148846080
  number5 = 0
  workingValue2(cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3, number5)
  workingValue2 = NetworkStartSynchronisedScene
  cmgOperation = workingValue
  workingValue2(cmgOperation)
  return workingValue
end

-- === HELPER FUNCTION (decompiler name: createVector32; parameters: localValue1) ===
function createVector32(localValue1)
  local localValue2, workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3
  localValue2 = table
  localValue2 = localValue2.unpack
  workingValue = text4
  workingValue = workingValue[localValue1]
  localValue2, workingValue = localValue2(workingValue)
  workingValue2 = tCMG
  workingValue2 = workingValue2.setCanAnim
  cmgOperation = false
  workingValue2(cmgOperation)
  workingValue2 = true
  dataCollection2 = workingValue2
  workingValue2 = table
  workingValue2 = workingValue2.unpack
  cmgOperation2 = number7
  cmgOperation = dataCollection
  cmgOperation = cmgOperation[cmgOperation2]
  workingValue2, cmgOperation = workingValue2(cmgOperation)
  text2 = cmgOperation
  text = workingValue2
  workingValue2 = CMG
  workingValue2 = workingValue2.loadAnimDict
  cmgOperation = text
  -- Beginner: Load a GTA animation dictionary before using it.
  workingValue2(cmgOperation)
  workingValue2 = localValue2
  cmgOperation = TaskGoStraightToCoord
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation2 = cmgOperation2()
  workingValue3 = workingValue2.x
  workingValue4 = workingValue2.y
  workingValue5 = workingValue2.z
  number9 = 1.0
  stateFlag = 50000
  stateFlag2 = 312.2
  number3 = 10.0
  cmgOperation(cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3)
  cmgOperation = GetEntityCoords
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.getPlayerPed
  cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3 = cmgOperation2()
  -- Beginner: result below is entityCoords.
  cmgOperation = cmgOperation(cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3)
  while true do
    cmgOperation2 = cmgOperation - workingValue2
    cmgOperation2 = #cmgOperation2
    workingValue3 = 1.25
    if not (cmgOperation2 >= workingValue3) then
      break
    end
    cmgOperation2 = GetEntityCoords
    workingValue3 = CMG
    workingValue3 = workingValue3.getPlayerPed
    workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3 = workingValue3()
    -- Beginner: result below is entityCoords.
    cmgOperation2 = cmgOperation2(workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2, number3)
    cmgOperation = cmgOperation2
    cmgOperation2 = Wait
    workingValue3 = 100
    cmgOperation2(workingValue3)
  end
  cmgOperation2 = GetCamViewModeForContext
  workingValue3 = 0
  cmgOperation2 = cmgOperation2(workingValue3)
  if 1 ~= cmgOperation2 then
    cmgOperation2 = GetCamViewModeForContext
    workingValue3 = 0
    cmgOperation2 = cmgOperation2(workingValue3)
    if 2 ~= cmgOperation2 then
      goto continueAtStep72
    end
  end
  cmgOperation2 = SetCamViewModeForContext
  workingValue3 = 0
  workingValue4 = 0
  cmgOperation2(workingValue3, workingValue4)
  ::continueAtStep72::
  cmgOperation2 = GetCamViewModeForContext
  workingValue3 = 0
  cmgOperation2 = cmgOperation2(workingValue3)
  if 4 == cmgOperation2 then
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.InvokeNative
    workingValue3 = 8773263032172758242
    workingValue4 = 518572876
    cmgOperation2(workingValue3, workingValue4)
  end
  cmgOperation2 = dataCollection3
  workingValue3 = localValue2
  workingValue4 = workingValue
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgOperation2(workingValue3, workingValue4)
end
createVector3 = Citizen
createVector3 = createVector3.CreateThread

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, localValue2, workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isInsideDiamondCasino
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = dataCollection2
      if localValue1 then
        localValue1 = SetPedCapsule
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        workingValue = 0.13
        localValue1(localValue2, workingValue)
        localValue1 = IsControlJustPressed
        localValue2 = 0
        workingValue = 202
        localValue1 = localValue1(localValue2, workingValue)
        if localValue1 then
          localValue1 = CMG
          localValue1 = localValue1.loadAnimDict
          localValue2 = "anim@amb@office@seating@male@var_a@base@"
          -- Beginner: Load a GTA animation dictionary before using it.
          localValue1(localValue2)
          localValue1 = TaskPlayAnim
          localValue2 = CMG
          localValue2 = localValue2.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          localValue2 = localValue2()
          workingValue = "anim@amb@office@seating@male@var_a@base@"
          workingValue2 = "exit"
          cmgOperation = 1.0
          cmgOperation2 = 1.0
          workingValue3 = -1
          workingValue4 = 0
          workingValue5 = 0.0
          number9 = false
          stateFlag = false
          stateFlag2 = false
          -- Beginner: Play an animation on a ped.
          localValue1(localValue2, workingValue, workingValue2, cmgOperation, cmgOperation2, workingValue3, workingValue4, workingValue5, number9, stateFlag, stateFlag2)
          localValue1 = RemoveAnimDict
          localValue2 = "anim@amb@office@seating@male@var_a@base@"
          localValue1(localValue2)
          localValue1 = tCMG
          localValue1 = localValue1.setCanAnim
          localValue2 = true
          localValue1(localValue2)
          localValue1 = false
          dataCollection2 = localValue1
        end
        localValue1 = IsControlJustPressed
        localValue2 = 0
        workingValue = 63
        localValue1 = localValue1(localValue2, workingValue)
        if localValue1 then
          localValue1 = number7
          if 1 == localValue1 then
            localValue1 = number8
            number7 = localValue1
          else
            localValue1 = number7
            localValue1 = localValue1 - 1
            number7 = localValue1
          end
          localValue1 = table
          localValue1 = localValue1.unpack
          workingValue = text3
          localValue2 = text4
          localValue2 = localValue2[workingValue]
          localValue1, localValue2 = localValue1(localValue2)
          workingValue = table
          workingValue = workingValue.unpack
          cmgOperation = number7
          workingValue2 = dataCollection
          workingValue2 = workingValue2[cmgOperation]
          workingValue, workingValue2 = workingValue(workingValue2)
          text2 = workingValue2
          text = workingValue
          workingValue = dataCollection3
          workingValue2 = localValue1
          cmgOperation = localValue2
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          workingValue(workingValue2, cmgOperation)
        end
        localValue1 = IsControlJustPressed
        localValue2 = 0
        workingValue = 64
        localValue1 = localValue1(localValue2, workingValue)
        if localValue1 then
          localValue1 = number7
          if 11 == localValue1 then
            localValue1 = 1
            number7 = localValue1
          else
            localValue1 = number7
            localValue1 = localValue1 + 1
            number7 = localValue1
          end
          localValue1 = table
          localValue1 = localValue1.unpack
          workingValue = text3
          localValue2 = text4
          localValue2 = localValue2[workingValue]
          localValue1, localValue2 = localValue1(localValue2)
          workingValue = table
          workingValue = workingValue.unpack
          cmgOperation = number7
          workingValue2 = dataCollection
          workingValue2 = workingValue2[cmgOperation]
          workingValue, workingValue2 = workingValue(workingValue2)
          text2 = workingValue2
          text = workingValue
          workingValue = dataCollection3
          workingValue2 = localValue1
          cmgOperation = localValue2
          workingValue(workingValue2, cmgOperation)
        end
      end
      localValue1 = text3
      if nil ~= localValue1 then
        localValue1 = IsControlJustPressed
        localValue2 = 0
        workingValue = 38
        localValue1 = localValue1(localValue2, workingValue)
        if localValue1 then
          localValue1 = createVector32
          localValue2 = text3
          localValue1(localValue2)
          localValue1 = drawNativeNotification
          localValue2 = "Press ~INPUT_VEH_MOVE_LEFT_ONLY~ or ~INPUT_VEH_MOVE_RIGHT_ONLY~ to switch pose."
          -- Beginner: Show a GTA-style notification/help prompt.
          localValue1(localValue2)
        end
      end
      localValue1 = dataCollection2
      if not localValue1 then
        localValue1 = pairs
        localValue2 = text4
        localValue1, localValue2, workingValue, workingValue2 = localValue1(localValue2)
        for cmgOperation, cmgOperation2 in localValue1, localValue2, workingValue, workingValue2 do
          workingValue3 = cmgOperation2[3]
          workingValue4 = 1.5
          if workingValue3 < workingValue4 then
            workingValue4 = text3
            if nil == workingValue4 then
              workingValue4 = drawNativeNotification
              workingValue5 = "Press ~INPUT_PICKUP~ to take a seat"
              workingValue4(workingValue5)
            end
            text3 = cmgOperation
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
createVector3(number)
